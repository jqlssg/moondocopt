# 来源与许可

MoonDocopt 是 docopt 0.6.2 命令行语言及匹配行为的 MoonBit 移植/重写。
上游：https://github.com/docopt/docopt ，MIT，Copyright (c) 2012 Vladimir Keleshev。
借鉴范围：Usage/Options 语法、参数归一化、贪心分支匹配、重复项类型和上游兼容用例。
使用 MoonBit 的不可变编译结果、显式错误及预算替代 Python 可变模式对象和进程退出。
根 LICENSE 保留上游许可及署名；兼容夹具保留来源。邻近 MoonBit 解析器只用于查重，未复制其代码。
命令文本分词/安全引号为独立 POSIX 风格辅助功能，不执行 shell，不属于 docopt 语言。
