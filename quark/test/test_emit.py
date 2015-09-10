# Copyright 2015 datawire. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import os, pytest, subprocess
from quark.backend import Java
from quark.compiler import Compiler, CompileError

directory = os.path.join(os.path.dirname(__file__), "emit")

files = [name for name in os.listdir(directory) if name.endswith(".q")]
paths = [os.path.join(directory, name) for name in files]

def walker(result, dir, fnames):
    for f in fnames:
        if f.endswith(".java"):
            result.append(f)

def walk(dir):
    result = []
    os.path.walk(dir, walker, result)
    return result

@pytest.fixture(params=paths)
def path(request):
    return request.param

def test_emit(path):
    text = open(path).read()
    base = os.path.splitext(path)[0]
    c = Compiler()
    c.parse(text)
    c.compile()
    j = Java()
    c.emit(j)
    if not os.path.exists(base):
        os.makedirs(base)
    expected = walk(base)
    srcs = []

    assertions = []
    for name in j.files:
        path = os.path.join(base, name)
        srcs.append(path)
        computed = j.files[name]
        try:
            saved = open(path).read()
        except IOError, e:
            saved = None
        if saved != computed:
            if not os.path.exists(os.path.dirname(path)):
                os.makedirs(os.path.dirname(path))
            open(path + ".cmp", "write").write(computed)
        assertions.append((saved, computed))

    for saved, computed in assertions:
        assert saved == computed
    assert len(j.files) == len(expected)

    build = os.path.join(base, "build")
    if not os.path.exists(build):
        os.makedirs(build)
    jexit = os.system("javac -d %s %s" % (build, " ".join(srcs)))
    assert jexit == 0

    if "main" in c.root.env:
        out = base + ".out"
        try:
            expected = open(out).read()
        except IOError, e:
            expected = None
        actual = subprocess.check_output(["java", "-cp", build, "Functions"])
        if expected != actual:
            open(out + ".cmp", "write").write(actual)
        assert expected == actual
