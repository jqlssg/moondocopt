# 实现结构

编译链：`Document` 提取一个 Usage 与 Options → lexer 记录 UTF-16 offset → 递归下降 `Pattern` → option alias/arity 绑定与 `[options]` 展开 → cardinality 计算分支最大重复次数 → typed defaults。`Parser` 保有自有编译结果，不持有调用者可变容器。

解析链：argv 边界检查 → 长选项 exact-first/唯一前缀及短 cluster 归一化 → persistent match state → Required 顺序匹配、Optional 逐子项可选、Either 选择最少剩余项（平局首分支）、Repeat 贪心并检查无进展 → 剩余参数拒绝 → 补默认值 → `Values`。每次请求有独立工作预算，不污染下一次解析。

- `document/option/lexer/syntax/compiler/cardinality.mbt`：语法及编译。
- `argv/match/limits.mbt`：运行时归一化、匹配及预算。
- `value/conversion/outcome/metadata.mbt`：拥有所有权的结果、转换、控制流与描述。
- `adapter/shellwords/quote.mbt`：严格 JSON 和文本宿主边界，均无外部进程副作用。
- `examples/reduce`：Int32→Int64 求和/均值→JSON。
- `examples/buildplan`：文档接口→独立编译 argv 计划，不执行编译器。
- `examples/console`：命令文本→宿主记录过滤/排序/限量，保持宿主数据不变。

Cardinality 不枚举所有分支组合：沿必选/可选求和，Either 取最大值，Repeat 将出现次数饱和至 2（区分单值/重复即可）。这避免使用分支笛卡尔积来计算默认类型。匹配器保留 docopt 的贪心选择，而非提供任意 CFG 全局回溯解析器。

接口文件由 `moon info` 生成。开发顺序为修改行为与回归测试 → 严格 check/test → `moon info && moon fmt` → 核对 mbti → 四后端和业务工作流。Python reference 在测试目录，只参与生成测试答案，不进入生产依赖。
