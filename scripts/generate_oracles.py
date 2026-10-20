"""Deterministic independent docopt 0.6.2 and Python shlex test oracles.
Run with Python >=3.8, then moon fmt; no network or third-party packages.
Upstream source is MIT, pinned under tests/upstream/; tests are not production LOC.
"""
import importlib.util
import json
import pathlib
import random
import shlex
import re

ROOT = pathlib.Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location("reference_docopt", ROOT / "tests/upstream/docopt.py")
reference = importlib.util.module_from_spec(spec)
spec.loader.exec_module(reference)
def lit(value):
    return json.dumps(value, ensure_ascii=False)
def write(name, lines):
    (ROOT / name).write_text("\n".join(lines) + "\n", encoding="utf-8")
def assertion(doc, argv, expected, options_first=False):
    call = "Parser::new(" + lit(doc) + ").parse(" + lit(argv) + ", options_first=" + str(options_first).lower() + ")"
    if expected == "user-error":
        return "assert_true((try Ok(" + call + ") catch { e => Err(e) }) is Err(Arguments(_)))"
    return "assert_eq(" + call + ".to_json(), (" + lit(expected) + ":Json))"

source = (ROOT / "tests/upstream/testcases.docopt").read_text(encoding="utf-8")
lines = ["// Generated from docopt 0.6.2 MIT fixtures by scripts/generate_oracles.py."]
n = 0
for block in source.split('r"""')[1:]:
    doc, tail = block.split('"""', 1)
    for match in re.finditer(r"^\$ ([^\n]+)\n", tail, re.M):
        argv = shlex.split(match.group(1))[1:]
        expected = json.JSONDecoder().raw_decode(tail[match.end():].lstrip())[0]
        n += 1
        lines += ["///|", 'test "upstream %d" {' % n, assertion(doc, argv, expected), "}"]
write("reference_wbtest.mbt", lines)

cases = [
    ("Usage: p [-v] <x>", [["a"], ["-v", "a"]]),
    ("Usage: p [-v]... [<x>...]", [[], ["-vvv"], ["a", "b"]]),
    ("Usage: p (add <x> | add <x> <y>)", [["add", "a"], ["add", "a", "b"]]),
    ("Usage: p (-a -b)...", [["-ab"], ["-abab"]]),
    ("Usage: p [a b]", [[], ["b"], ["a", "b"]]),
    ("Usage: p [--] <x>...", [["--", "-v"], ["a"]]),
    ("Usage: p [options] <x>\nOptions:\n  -o --output=FILE  Output [default: out]\n  -q --quiet  Quiet", [["a"], ["--out=b", "a"], ["-qofoo", "a"]]),
    ("Usage: p [--path=P]...\nOptions:\n  --path=P  Paths [default: x y]", [[], ["--path=a"], ["--path=a", "--path=b"]]),
    ("Usage: p (--list | --listen)\nOptions:\n  --list  List\n  --listen  Listen", [["--list"], ["--liste"]]),
    ("Usage: p [<x>] [<y>]", [[], ["a"], ["a", "b"]]),
    ("Usage: p (a b | a) [b]", [["a"], ["a", "b"], ["a", "b", "b"]]),
    ("Usage: p [-ab]...", [[], ["-abab"], ["-a"]]),
]
rng = random.Random(20261020)
words = ["a", "b", "add", "-v", "-ab", "--", "--output=x", "-o", "data", "--path=z", "--list", "--lis", "--unknown", "", "中文"]
lines = ["// Independent generated answers from vendored Python docopt 0.6.2, seed 20261020."]
count = 0
for doc, valid in cases:
    vectors = valid * 8 + [[rng.choice(words) for _ in range(rng.randrange(7))] for _ in range(48)]
    for argv in vectors:
        for first in [False, True]:
            try:
                expected = reference.docopt(doc, argv, help=False, options_first=first)
            except reference.DocoptExit:
                expected = "user-error"
            count += 1
            lines += ["///|", 'test "differential %d" {' % count, assertion(doc, argv, expected, first), "}"]
write("differential_wbtest.mbt", lines)

lines = ["// Python shlex POSIX quote/join oracle; no evaluation or shell execution."]
chars = ["a", " ", "'", '"', "\\", "$", "`", "#", "\n", "中", "🙂", ";"]
for i in range(256):
    argv = ["".join(rng.choice(chars) for _ in range(rng.randrange(10))) for _ in range(rng.randrange(8))]
    joined = " ".join(shlex.quote(x) for x in argv)
    assert shlex.split(joined) == argv
    lines += ["///|", 'test "shlex quote oracle %d" {' % (i+1), "assert_eq(join_command(" + lit(argv) + "), " + lit(joined) + ")", "assert_eq(split_command(" + lit(joined) + "), " + lit(argv) + ")", "}"]
write("shlex_wbtest.mbt", lines)
print(json.dumps({"upstream":n, "docopt_differential":count, "shlex":256}))
