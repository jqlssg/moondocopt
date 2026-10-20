# 选题与语义查重记录

日期：2026-10-20（Asia/Shanghai）。这是有范围的工程查重记录，不是主办方不重复证明。

## 执行依据与需求门禁

执行了本地 osc2026-guide 的 Project Research Guide：读取比赛检索指导，扩展中英文关键词，MoonCakes 检索详情/源码，GitHub repo+code 反向检索，官方 awesome-moonbit 清单，以及本地跨会话项目注册表。所有候选都比较用户任务、输入输出和核心行为，不以名称是否相同决定。MoonDocopt 在实现前原子预留独立指纹；旧化学项目保留。

成熟依据：[docopt/docopt](https://github.com/docopt/docopt) 0.6.2，MIT。其核心任务是从用户可读的 Usage/Options 文本构造解析行为，区别于代码注册参数树。需求是由成熟跨生态工具模式支持的工程推断，不是已完成用户访谈。

## 三个不同领域候选

分数1–5，高为优。重合项为“低重合风险”，不能以总分抵消硬淘汰。

|候选|广度|用户多样性|复用|低重合风险|深度|验证|工期|维护|合计|硬门禁|
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---|
|帮助文档驱动 CLI / docopt|5|4|5|4|4|5|5|4|36|通过记录范围内需求/查重门禁|
|GNU gettext PO/MO 与复数目录|5|5|5|1|4|5|4|4|33|直接重合，淘汰|
|AMQP 0-9-1 消息协议|5|4|5|1|5|4|2|3|29|直接重合，淘汰|

这些是选题判断，不是用户量/性能测量。初筛同时检索 JMESPath、模板、依赖解析、HOCON、Jsonnet、Snappy/LZ4/Brotli、HTTP cache/signatures、IMAP 等，发现已有直接功能后没有为凑候选继续实现。

### 被淘汰项目的源码证据

- [YanFangNie/moongettext](https://github.com/YanFangNie/moongettext)，MoonCakes 0.1.1：读过 README、catalog、PO/MO reader/writer、plural lexer/parser/rule 与测试。输入 PO/MO→目录/复数规则→翻译查询，正是候选核心任务，不能另起名重复做。
- [DDD12345-D/moon-amqp](https://github.com/DDD12345-D/moon-amqp)，MoonCakes 0.1.0：读过 codec/frame、channel、connection handshake/content/methods 与测试。frame/channel 协议链与候选高度直接重合，淘汰；没有因页面访问问题将它当空白。

## MoonDocopt 语义指纹

- 用户：CLI 作者、既有 docopt 脚本迁移者、宿主控制台开发者。
- 输入：帮助文档 + argv / 命令文本 / 有界 JSON 请求。
- 行为：Usage 词法与递归下降→option 绑定/shortcut→branch-sensitive cardinality→归一化→docopt 贪心匹配→typed owned values。
- 输出：业务代码可直接消费的值、结构化错误、帮助/版本 Outcome、参数元数据。
- 集成：MoonBit 库导入，无 shell/进程退出副作用。
- 客观验收：上游175例，独立Python1648差分，256 shlex对照，边界与实际业务测试，四后端 CI。
- 不做：code-first parser builder、通用 shell、执行器、配置框架、终端 UI、上下文补全。

## 检索范围与结果

MoonCakes `moon search <keyword> --limit 100` 覆盖 docopt/docopt.mbt/docopt-go、argparse/argument parser/getopt/clap/command line、Usage/Options/help-first、命令行/参数解析/帮助文档/用法驱动等同义词，以及上述淘汰方向。广义 usage 查询返回100项有截断风险，未以该查询穷尽；逐个审查聚焦相关候选、源码和接口。完整命令响应本地留档，公开文档只记录去秘密结论与可回查来源。

GitHub 检索包括 `docopt language:MoonBit`、`"docopt" extension:mbt`、`"formal_usage" extension:mbt`、`"OptionsShortcut" extension:mbt`，实现前均零，发布前重查 docopt 仓库和 OptionsShortcut 仍零，响应 incomplete_results=false。读取 [官方清单](https://github.com/moonbitlang/awesome-moonbit) 和相关组织项目。代码搜索本身有索引覆盖限制，零结果不证明唯一。

`"usage-driven" extension:mbt` 的3处结果来自 [colmugx/posoco-extension](https://github.com/colmugx/posoco-extension) 的 `posoco-ext-lazytools/src/{manifest,recent_tools,lazytools}.mbt`，已读取完整源文件：它们记录工具使用和历史 hint 迁移，usage 指工具使用而非 CLI Usage 语法；无 docopt 编译/argv 匹配任务。对应文件SHA为 84d379af5474584bd9d8f6a5d00885205403c275、41be968da1f14493b699c3cbf7a9becd450340ef、0483ffea9585c4bb661cceb0fd7571dade16efa2。

注册表检查了 reserved/completed/rejected/external-checked 的完整相关指纹，不只同账号。已存在代码优先视为现实能力，而不是只依名称/简介判断；相邻 CLI 项和其它候选已登记 external-checked。

## 相邻项目矩阵（均阅读实现/接口/测试）

|项目/版本/来源|用户与输入|行为接口/模型|输出/成熟证据|分类与决策|
|---|---|---|---|---|
|[Milky2018/options 0.1.3](https://github.com/Milky2018/options)|CLI 作者；代码注册 leaf/father|cmd.mbt typed 命令树；cmd_test.mbt|解析值/命令回调；Apache-2.0|高度相邻；核心输入与构建模型不同|
|[moonbit-community/ArgParser 0.2.1](https://github.com/moonbit-community/ArgParser)（旧Yoorkin地址）|CLI 作者；spec/callbacks|arg.mbt、arg_test.mbt、mbti|参数与回调；许可 metadata null，不推断授权|高度相邻；没有 help→grammar→docopt 匹配，不复制其代码|
|[TheWaWaR/clap 0.2.6](https://github.com/TheWaWaR/clap.mbt)|CLI 作者；Arg/Parser builders|src/arg/parser/subcmd/value 与测试|code-first parser、help生成；MIT|高度相邻；文档是输出而非可编译输入|
|[cauchyQ/moonbit-argkit 0.1.0](https://github.com/cauchyQ/moonbit-argkit)|CLI作者；schema、config/env组合|schema/parse/relations/typed/completion|schema驱动解析及辅助功能；MIT|高度相邻；无需重造其配置/补全功能，保留 docopt 独立兼容任务|
|docopt Python 0.6.2|同类任务；Usage/Options|成熟 docopt grammar + reference|原实现与175夹具，MIT|直接同类但非 MoonBit；明确作为移植上游，不声称原创语言|
|posoco lazytools|工具宿主；调用历史|使用记录/hint与持久化迁移|工具提示而非 argv|仅字面关键词相似，无核心重合|

维护状态仅是2026-10-20可访问的版本/源码/测试快照；没有把 stars、下载数或“仍维护”未经证明地写作质量结论。独立建设的理由：移植兼容行为需要文档编译和 matcher；扩展 code-first builder 将引入另一套核心输入模型，非补一个 helper 即可。并未否认相邻库对新 CLI 的合理性。

## 实际效用与完成标准

1. CLI 用户输入 `mean 3 5 --scale=2` → docopt 解析+Int32校验→业务平均值/缩放→JSON result=8。
2. 脚本迁移者保留 `plan (debug|release)...` 帮助接口，输入定义和源文件→别名/重复/默认值→每个源文件独立编译 argv 计划，不执行编译器。
3. 宿主将命令文本及自有 records交给console→引号分词+语法+typed范围→AND tag过滤/排序/限量→返回实际记录，不改变宿主数据。

完成标准是这些链路、参考实现一致性、有界错误与对外模块安装可实测，不是仅代码量或打印参数 map。

## 覆盖限制与结论

部分 MoonCakes HTML 页面超时，使用官方搜索元数据与关联公开源码补足，没有把打不开解释为不存在。广义查询可能截断、索引未收录/私有仓库/发布后的新版本不在本记录覆盖内。未证明所有在赛项目或所有外语命名都被找到。

**在上述已记录检索范围内未发现成熟的 MoonBit 帮助文档驱动 docopt 直接替代。** 这是有界结论；最终赛事认定由主办方完成。本项目没有复用相邻实现；上游移植许可与差异见 NOTICE 和 compatibility。
