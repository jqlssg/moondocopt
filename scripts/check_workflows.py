#!/usr/bin/env python3
"""Run real command-line inputs and verify business results on one backend."""
import argparse
import json
import pathlib
import subprocess
ROOT = pathlib.Path(__file__).resolve().parents[1]
parser = argparse.ArgumentParser()
parser.add_argument('--target', choices=['wasm-gc','wasm','js','native'], default='wasm-gc')
a = parser.parse_args()
def invoke(package, argv):
    cmd = ['moon','run','examples/'+package,'--target',a.target,'--'] + argv
    r = subprocess.run(cmd,cwd=ROOT,stdout=subprocess.PIPE,stderr=subprocess.PIPE,encoding='utf-8')
    if r.returncode:
        raise SystemExit(r.stderr)
    value = json.loads(r.stdout.strip())
    print(package, json.dumps(value,ensure_ascii=False))
    return value
assert invoke('reduce',['mean','3','5','--scale=2']) == {'operation':'mean','count':2,'result':8}
assert invoke('reduce',['sum','--scale=2','3','5']) == {'operation':'sum','count':2,'result':16}
expected = ['cc','-c','src/a.c','-o','build/object-0.o','-g','-DLOG=1']
v = invoke('buildplan',['debug','--define=LOG=1','src/a.c'])
assert v == {'object_count':1,'jobs':[{'argv':expected,'display_posix':' '.join(expected)}]}
v = invoke('buildplan',['release','--out=build dir','src/a.c','src/b.c'])
assert v['object_count'] == 2
assert v['jobs'][0]['argv'] == ['cc','-c','src/a.c','-o','build dir/object-0.o','-O2']
assert v['jobs'][1]['argv'][4] == 'build dir/object-1.o'
assert invoke('console',['select','--tag=core','--limit=1']) == {'matched':2,'rows':[{'id':'parser','score':90}]}
assert invoke('console',['select','--tag=core','--tag=cli','--min-score=80']) == {'matched':1,'rows':[{'id':'parser','score':90}]}
print('business workflows passed:',a.target)
