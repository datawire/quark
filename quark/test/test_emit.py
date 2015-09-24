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
from quark.backend import Java, Python
from quark.compiler import Compiler, CompileError
from .util import check_file

directory = os.path.join(os.path.dirname(__file__), "emit")

files = [name for name in os.listdir(directory) if name.endswith(".q")]
paths = [os.path.join(directory, name) for name in files]

class Walker(object):

    def __init__(self, ext):
        self.ext = ext

    def __call__(self, result, dir, fnames):
        for f in fnames:
            if f.endswith(self.ext):
                result.append(f)

def walk(dir, ext):
    result = []
    os.path.walk(dir, Walker(ext), result)
    return result

@pytest.fixture(params=paths)
def path(request):
    return request.param

def test_emit(path):
    text = open(path).read()
    base = os.path.splitext(path)[0]
    comp = Compiler()
    comp.parse(os.path.basename(path), text)
    comp.compile()

    for Backend in (Java, Python):
        backend = Backend()
        comp.emit(backend)
        extbase = os.path.join(base, backend.ext)
        if not os.path.exists(extbase):
            if Backend in (Java,):
                os.makedirs(extbase)
            else:
                continue

        srcs = []
        assertions = []
        for name in backend.files:
            path = os.path.join(extbase, name)
            srcs.append(path)
            computed = backend.files[name]
            expected = check_file(path, computed)
            assertions.append((expected, computed))

        for expected, computed in assertions:
            assert expected == computed
        assert len(backend.files) == len(walk(extbase, ".%s" % backend.ext))

        BUILDERS[backend.ext](comp, extbase, srcs)

def build_java(comp, base, srcs):
    build = os.path.join(base, "build")
    if not os.path.exists(build):
        os.makedirs(build)
    jexit = os.system("javac -d %s %s" % (build, " ".join(srcs)))
    assert jexit == 0

    if "main" in comp.root.env:
        out = os.path.dirname(base) + ".out"
        try:
            expected = open(out).read()
        except IOError, e:
            expected = None
        actual = subprocess.check_output(["java", "-cp", build, "Functions"])
        if expected != actual:
            open(out + ".cmp", "write").write(actual)
        assert expected == actual

def build_py(comp, base, srcs):
    env = {"PYTHONPATH": base}
    pyout = subprocess.check_output(["python", "-m", "py_compile"] + srcs, env=env)
    assert pyout == ""
    if "main" in comp.root.env:
        out = os.path.dirname(base) + ".out"
        script = os.path.basename(os.path.dirname(base))
        try:
            expected = open(out).read()
        except IOError, e:
            expected = None
        actual = subprocess.check_output(["python", "-c", "import %s; %s.main()" % (script, script)], env=env)
        if expected != actual:
            open(out + ".cmp", "write").write(actual)
        assert expected == actual

BUILDERS = {
    "java": build_java,
    "py": build_py
}
