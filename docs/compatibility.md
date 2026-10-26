# 兼容范围（0.1.1）

基线是 docopt Python **0.6.2**，不是 docopt-ng、clap 或所有 getopt 方言。上游 MIT 源码、175 条 fixtures 和出处固定在 `tests/upstream`。`scripts/generate_oracles.py` 另生成 seed=20261020 的 1648 条差分：12 个语法、有效向量和随机非法 argv、options_first 的两种取值。测试断言的是结构化结果或 arguments 错误，不比较 Python 的退出文本。

已覆盖：Usage/Options、分组、分支、可选、重复、命令词、位置项、别名与默认值、短 cluster、attached value、长前缀、options shortcut、`--`、help/version 与 options_first。参数顺序、可选多子项、重复默认类型等遵循 docopt，不能套用其它 CLI 库直觉。

明确差异：

1. 不抛 Python SystemExit/打印 stdout；`run` 返回 Outcome，由宿主决定展示和退出。
2. 文档/argv/深度/编译树/匹配预算明确封顶，过大输入被拒绝，即使 Python 没有相同上限。
3. `Usage: p -ab...` 在 Python 上游会触发内部 AssertionError；MoonDocopt 将该 cluster 当组重复。此输入只做本地扩展回归，未作为“上游一致”的差分样本。
4. JSON、typed conversions、参数元数据、词法建议与 shell 文本功能为新增宿主 API，不是 docopt 官方接口。
5. shellwords 是有界 POSIX 风格 tokenizer，不是 shell：不做命令替换/变量展开/glob/管道/重定向。Python shlex 的对照限于 256 组 quote→split 可比语料，未声称所有 shell 输入与 shlex 一致。

不做：code-first command builder、环境变量/配置文件合并、grammar-aware completion、manpage 生成、终端交互框架、HTTP 服务、命令执行、性能领先承诺。未做用户访谈或生产部署，三类需求是由成熟 docopt 使用模式和可运行接入支持的工程判断。

测试样本全过不是形式化证明。若迁移已有脚本，建议把该脚本的 argv 回归集合与原 Python docopt 共同运行，再上线。
