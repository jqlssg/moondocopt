# 变更记录

## 0.1.0 — 2026-10-20

- MoonBit 实现 docopt Usage/Options 编译、argv 归一化、贪心匹配、类型与默认值。
- 增加有界编译/匹配、typed accessors、Outcome、严格 JSON、参数元数据与词法建议。
- 增加 POSIX 风格 command tokenizer 和 quoting；无命令执行。
- 提供数据 reduction、编译任务计划、宿主记录控制台三个业务接入。
- 固定 docopt 0.6.2 上游175例、1648条差分和256条 shlex oracle，合计2103项测试。
- 兼容、资源与平台边界见 docs；不声称支持未测上游/所有 shell。
