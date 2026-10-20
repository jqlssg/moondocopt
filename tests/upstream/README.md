# 固定参考实现

来自 https://github.com/docopt/docopt 的 Python docopt 0.6.2（`docopt.py` 中的 `__version__` 为 0.6.2）、`testcases.docopt` 与 `LICENSE-MIT`。保留上游署名和 MIT 许可。本目录不作为生产依赖，不计入生产 MoonBit 行数。

`scripts/generate_oracles.py` 用 Python 标准库装载此副本，生成175条上游夹具与1648条确定性差分；额外256条引号语料来自 Python shlex。生成后运行 `moon fmt` 应与跟踪版本一致。
