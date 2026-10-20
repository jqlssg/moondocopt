#!/usr/bin/env python3
"""Conservative source/history inventory. Tests/examples/vendor never count as production."""
import hashlib
import json
import pathlib
import re
import subprocess
ROOT=pathlib.Path(__file__).resolve().parents[1]
def git(*args):
    return subprocess.check_output(['git',*args],cwd=ROOT).decode('utf-8').strip()
files=[]
for p in sorted(ROOT.glob('*.mbt')):
    if p.name.endswith(('_test.mbt','_wbtest.mbt')):continue
    text=p.read_text(encoding='utf-8')
    assert not text.startswith('// Generated')
    files.append({'path':p.name,'physical_lines':len(text.splitlines()),'sha256':hashlib.sha256(p.read_bytes()).hexdigest()})
loc=sum(f['physical_lines'] for f in files)
assert loc>=1500,(loc,'production LOC below threshold')
steps=json.loads((ROOT/'docs/competition/engineering-steps.json').read_text(encoding='utf8'))
assert len(steps)>=20
assert len(set(x['commit'] for x in steps))==len(steps)
for step in steps:
    sha=step['commit']
    subprocess.run(['git','merge-base','--is-ancestor',sha,'HEAD'],cwd=ROOT,check=True)
    assert git('show','-s','--format=%s',sha)==step['purpose']
    assert git('show','--format=','--name-only',sha).strip()
    # Each accepted step really changes handwritten production, tests or a business workflow.
    changed=git('show','--format=','--name-only',sha).splitlines()
    assert any(p.endswith('.mbt') for p in changed),step
for p in ROOT.rglob('*.md'):
    if any(x in p.relative_to(ROOT).parts for x in ['_build','.git','.mooncakes']):continue
    for dest in re.findall(r'\[[^\]]*\]\(([^)]+)\)',p.read_text(encoding='utf8')):
        if '://' in dest or dest.startswith('#'):continue
        assert (p.parent/dest.split('#')[0]).exists(),(str(p),dest)
test_counts={p.name:len(re.findall(r'^test ',p.read_text(encoding='utf8'),re.M)) for p in ROOT.rglob('*.mbt') if p.name.endswith(('_test.mbt','_wbtest.mbt')) and not any(x in p.parts for x in ['_build','.mooncakes'])}
print(json.dumps({'production_files':files,'production_physical_lines':loc,'production_scope':'handwritten root *.mbt only; no tests, generated, examples or vendor','raw_commits':int(git('rev-list','--count','HEAD')),'conservative_meaningful_commits':len(steps),'excluded':'short-cluster grouping fixup and later documentation/CI-only commits','test_declarations':sum(test_counts.values()),'test_files':test_counts},ensure_ascii=False,indent=2))
