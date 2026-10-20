# 可复现验证

工具链与平台边界见根 README。默认测试集2103项；其中175上游、1648独立docopt差分、256 shlex，其他为边界与业务测试。没有用生成测试行数补生产行数，也没有声称形式化证明或性能优势。

本地 Windows 已通过 wasm-gc/wasm/js 的严格check/build/test与真实CLI，native仅check；机器缺MSVC/SDK。四目标完整构建/测试/业务流程应以[实际GitHub Actions](https://github.com/jqlssg/moondocopt/actions)对应提交的绿色结果为准，不拿本地check代替native运行。

运行 `python scripts/audit.py` 可得逐文件生产物理行数、SHA256、测试声明数和有效工程步骤。固定工程步骤列表为 `docs/competition/engineering-steps.json`，仅纳入已真实发生的23个实质实现/测试提交；排除短cluster分组fixup及后续文档/CI提交。每步本地经过fmt/info/strictcheck/test，完整命令时间与输出在仓库外私有工程日志留存。该列表只证明可审计的改动目的，不把所有小改动都算独立工程成果。

CI 五个job：四后端严格检查+构建+测试+六次真实工作流；独立job重新生成三组oracle并验证无diff。CI安装官方稳定工具链并输出版本，未来稳定版变更可能需维护，本项目不承诺所有未来版本自动兼容。

安装消费者应在空Moon Home/缓存、无token环境用 `moon add jqlssg/moondocopt@0.1.0`，导入根包，运行README快速开始，再检查发布源码/中文README与公开commit一致。上传返回成功本身不是安装证明。

这些是工程自检；不替代赛事主办方验收，不表示已经报名。
