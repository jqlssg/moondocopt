# 输入与执行边界

此库只解析，不执行命令、不启动服务器、不自动访问文件或网络。它不是 sandbox。调用者仍需对路径、权限、可执行程序特定选项和业务值做校验；POSIX 引号正确不等于命令业务安全。

`Limits::default()`：document_units=65536、usage_tokens=8192、options=2048、argv_count=4096、argv_units=1048576、match_steps=1000000。字符串计数采用 MoonBit UTF-16 单元。所有配置必须正数，硬上限分别为 1048576、32768、8192、32768、16777216、100000000。语法嵌套上限 128。选项数量受 options 限制（含 Usage 中未在 Options 声明的隐式选项），超限时编译返回 Limit。编译树节点/shortcut 展开也受 usage_tokens 约束，在分配展开树之前估算预算。独立入口 Document::new 也有文档硬上限。

预算是操作计数，不是可抢占超时。以内存隔离或严格 SLA 为目标时还需要外部任务/进程策略。不要把配置提高到硬上限当作默认部署策略。

JSON 字符串入口先限制输入长度，然后标准库 JSON parser 拒绝 duplicate keys、深度大于16；只接受 argv/help/version/options_first，错误返回 category/message。对象入口 request(Json) 面向已经构造的值，不负责撤销宿主之前的 JSON 分配。

`split_command` 拒绝 NUL、未闭合引号和悬空 escape；`join_command`/`quote_argument` 拒绝 NUL，保留每个 argv 的边界。不使用 eval、不执行 `$()` 或反引号，不展开变量或 glob。引号文本只适用于 POSIX 风格 shell，不适用于 PowerShell/cmd；推荐直接传 argv API 而非拼命令文本。

内存所有权：Values 构造/访问重复列表时复制；Parser 的公开数组接口返回副本；一次请求的 matcher 状态不复用到下次请求。测试覆盖调用者修改返回值后不改变 parser/defaults 的不变量。

请通过 GitHub Issue 报告不含真实凭据的最小复现。不要在公共报告中附 token、个人资料或生产输入。
