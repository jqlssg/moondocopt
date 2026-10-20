# MoonDocopt

**从帮助文档得到命令行解析器，不再维护第二份参数 schema。**

MoonDocopt 是 [Python docopt 0.6.2](https://github.com/docopt/docopt) 的 MoonBit 移植/重写，模块为 `jqlssg/moondocopt@0.1.0`，MIT 许可。它编译 `Usage:` / `Options:`，然后把 `argv` 转成带类型的结果；不会打印帮助、退出进程或执行 shell。

## 解决什么问题

- **CLI 作者**：先写用户能阅读的 Usage，再用同一文档约束选项、子命令、互斥和重复参数；解析后直接做业务计算。
- **脚本迁移者**：把已有 docopt 风格接口迁移到 MoonBit，不必改写为 code-first 参数注册树。
- **嵌入式控制台/宿主程序作者**：复用已编译解析器，用字符串或 JSON 请求获得结构化结果、错误、帮助和版本，宿主自行管理 I/O 与生命周期。

与已有 code-first CLI 库不是替代所有功能的关系：本项目的核心差异是 **docopt 文档语法与匹配语义**，不是再包装一个参数字典。没有做交互式终端 UI、业务命令执行或完整 shell。

## 已实现

- 必选组 `(...)`、可选组 `[...]`、分支 `|`、一个或多个 `...`、多行 Usage 与 `[options]`。
- 长短别名、短选项组合、附着值、长选项唯一前缀、重复计数/列表、默认值、`--`、`options_first`。
- 编译一次多次解析；对外结果、数组和默认值做防御性复制。
- `Flag` / `Text` / `Missing` / `Count` / `Texts`，严格 Int32、范围和 choice 转换。
- 显式 `Parsed` / `Help` / `Version`，错误分为 language / arguments / limit / conversion。
- 文档、语法深度、展开大小、argv 和匹配工作预算；严格 JSON 请求接口。
- 参数元数据与**词法前缀建议**；POSIX 风格分词和安全引号往返。

## 安装与环境

验证工具链：`moon 0.1.20261016 (1af328f)`、`moonc/core v0.10.16+b1a0e846e`。使用该版或兼容的稳定版；不保证开发预览版或旧版语法。只依赖 MoonBit 标准库，不需要 Python 运行库。

在自己的 MoonBit 模块中：

```sh
moon add jqlssg/moondocopt@0.1.0
```

在使用它的包目录创建 `moon.pkg`：

```moonbit
import {
  "jqlssg/moondocopt" @docopt,
}
pkgtype(kind: "executable")
```

创建 `main.mbt`：

```moonbit
///|
fn main {
  try {
    let parser = @docopt.Parser::new(
      "Usage: greet <name> [--times=N]\nOptions:\n  --times=N  Repeat count [default: 1]",
    )
    let values = parser.parse(["MoonBit", "--times=2"])
    let name = values.require_text("<name>")
    let times = values.integer("--times", minimum=1, maximum=10)
    for _ in 0..<times {
      println("你好，" + name)
    }
  } catch {
    e => println("error: " + e.message())
  }
}
```

```sh
moon run . --target wasm-gc
```

输出两行 `你好，MoonBit`。`Parser::parse` 接收**不含程序名**的 argv。`["a b"]` 是一个参数，不会再次按空格拆分；需要解释命令文本时显式调用 `parse_line`。

支持目标为 `wasm-gc`、`wasm`、`js`、`native`。JS 运行需要 Node.js；native 构建需要平台 C 工具链。当前 Windows 本机没有 MSVC/SDK，本地仅通过 native check，native 构建/测试/工作流由 Linux GitHub Actions 验证。CI 真实结果见 [Actions](https://github.com/jqlssg/moondocopt/actions)。

## 三个可以实际运行的工作流

克隆本仓库后执行，`--target` 可换四个目标：

```sh
# 1. 数据处理工具：类型校验后求平均值并缩放，不只是显示解析字典
moon run examples/reduce --target wasm-gc -- mean 3 5 --scale=2
# {"operation":"mean","count":2,"result":8}

# 2. 迁移构建入口：把帮助文档定义的输入变成每个源文件的编译任务 argv
moon run examples/buildplan --target wasm-gc -- debug --define=LOG=1 src/a.c
# 一个任务：cc -c src/a.c -o build/object-0.o -g -DLOG=1

# 3. 应用内控制台：过滤宿主记录、排序、限量，再返回业务数据
moon run examples/console --target wasm-gc -- select --tag=core --limit=1
# {"matched":2,"rows":[{"id":"parser","score":90}]}
```

第二个示例只生成 JSON 计划，**不执行 cc**；`display_posix` 仅是可读的 POSIX 转义表示，不适合直接交给 PowerShell/cmd，也不验证某个可执行程序的参数安全性。第三个示例数据来自宿主样本，但过滤/排序逻辑接受宿主自己的记录，且不会修改它们。三个示例均有业务断言测试，CI 额外检验真实 CLI 参数和输出。

## API 与语义

```moonbit
let p = @docopt.Parser::new(
  "Usage: tool [-v]... [--path=P]... <file>\nOptions:\n  -v  Verbose\n  --path=P  Search paths",
)
let v = p.parse(["-vv", "--path=a", "--path=b", "input.txt"])
assert_eq(v.count("-v"), 2)
assert_eq(v.texts("--path"), ["a", "b"])
assert_eq(v.require_text("<file>"), "input.txt")
```

- 规范键：有长别名时使用长选项名，例如 `-o --output=FILE` 的键是 `--output`。
- 未提供的单值参数为 `Missing`，布尔项为 `Flag(false)`，重复布尔为 `Count(0)`，重复值为 `Texts([])`；文档默认值会覆盖相应缺省。
- `parse` 只做语法匹配；`run(argv, help=true, version=Some("0.1.0"))` 额外识别帮助/版本，返回 `Outcome`，不直接输出或退出。帮助/版本选项应在文档里声明；非法选项语法仍优先报错。
- `parse(argv, options_first=true)` 在第一个位置参数后停止解释选项。`--` 按 docopt 的规则保留为位置项，是否接收由 Usage 决定，不能假设它始终被丢弃。
- 类型访问器不做隐式强转：例如 `integer` 只接收十进制文本并检查 Int32 溢出；类型不符抛 `Conversion`。
- `parameters()` / `describe()` 返回参数说明；`suggest(prefix)` 只按已知命令/别名的词法前缀建议，**不是有上下文的 shell completion**。
- 公共接口完整清单见 [`pkg.generated.mbti`](pkg.generated.mbti)。

### JSON 宿主接入

```moonbit
let p = @docopt.Parser::new("Usage: greet <name>")
let response = p.request_json("{\"argv\":[\"MoonBit\"],\"help\":false}")
assert_eq(response, ({"status":"parsed","values":{"<name>":"MoonBit"}} : Json))
```

仅接收 `argv`（必需字符串数组）、`help`、`version`（字符串或 null）、`options_first`；未知字段、重复 JSON 键、过深 JSON 和类型错误均返回明确错误 envelope。此接口不启动服务器、不鉴权，也不执行请求中的程序。

## 资源限制与信任边界

`Parser::new(doc, limits=...)` 可接收 `Limits`。默认：文档 65,536 UTF-16 单元、8,192 Usage token（也约束编译树展开）、2,048 选项、4,096 argv 项、总 argv 1,048,576 UTF-16 单元、1,000,000 匹配步骤。语法嵌套硬限制为 128。详见 [安全边界](docs/security.md)。

这些是操作计数/输入上限，不是墙钟超时或所有内存分配的精确上限；需要强隔离的宿主仍应使用进程/任务级资源策略。`split_command` 不展开 `$VAR`、反引号或 glob；`quote_argument`/`join_command` 拒绝 NUL，仅适用 POSIX 风格文本。

## 兼容、测试与开发

```sh
moon info
moon fmt
moon check --deny-warn
moon build --deny-warn --target wasm-gc
moon test --deny-warn --target wasm-gc
python scripts/check_workflows.py --target wasm-gc
python scripts/audit.py

# 重新生成独立上游/差分答案，无需联网或 pip
python scripts/generate_oracles.py
moon fmt
# 在 clean checkout 应无差异
 git diff --exit-code
```

初始交付测试集：**2,103** 项，包括 docopt 上游 **175** 项、Python docopt 确定性差分 **1,648** 项、Python shlex quote/join 对照 **256** 项，其余为核心边界、所有权和下游业务测试。所有是可复现样本，不是对所有输入完全兼容的证明。Python >=3.8 只用于开发/生成 oracle，不参与 MoonBit 运行。

差分发现的多重单引号转义缺陷已修复并保留回归测试。`Usage: p -ab...` 是上游 Python 会触发 AssertionError 的输入；这里按短选项组重复处理，是**显式扩展**，没有冒充上游一致样本。其余差异和非目标见 [兼容说明](docs/compatibility.md)。

生产代码审计仅统计根包的手写非测试 `.mbt`，排除测试、生成文件、examples、vendor；`scripts/audit.py` 输出逐文件物理行数与保守提交清单。[实现结构](docs/architecture.md) / [选题与查重证据](docs/competition/duplicate-check.md)。这里的检查是工程自检，不代表赛事官方验收结论。

## 许可与 AI 使用

MIT；上游 docopt 版权及许可见 [LICENSE](LICENSE)、[NOTICE.md](NOTICE.md) 和 [`tests/upstream/LICENSE-MIT`](tests/upstream/LICENSE-MIT)。移植的是 Usage/Options 语言和匹配模型，MoonBit 数据结构、错误、资源预算、JSON 接口和三个业务接入是本次实现；相邻 MoonBit CLI 库仅查重，没有复制代码或假定其许可。

本项目在参赛者授权下使用 AI 编码助手完成调研、移植、测试、文档和发布操作；依赖真实工具输出与外部参考实现验证，不将 AI 自述当作验收依据。详见 [AI 使用记录](docs/ai-use.md)。
