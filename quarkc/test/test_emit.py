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

import os, pytest, shutil, subprocess, filecmp
from quarkc.backend import Java, Python, JavaScript, Ruby
from quarkc.compiler import Compiler, CompileError, compile
from .util import check_file, maybe_xfail

directory = os.path.join(os.path.dirname(__file__), "emit")
files = [name for name in os.listdir(directory) if name.endswith(".q")]
paths = [os.path.join(directory, name) for name in files]
expected = os.path.join(directory, "expected")

@pytest.fixture(scope="session")
def output(request):
    result = os.path.join(directory, "output")
    if os.path.exists(result):
        shutil.rmtree(result)
    os.mkdir(result)
    return result

@pytest.fixture(scope="session", params=paths)
def path(request):
    return request.param

backends = (Java, Python, JavaScript, Ruby)

@pytest.fixture(scope="session")
def compiled(output, path):
    text = open(path).read()
    for b in backends:
        maybe_xfail(text, b().ext)
    return path, compile(path, output, *backends)

def check_diff(diff):
    # left is output, right is expected
    assert not diff.left_only, diff.left_only
    assert not diff.right_only, diff.right_only
    assert not diff.diff_files, diff.diff_files
    for common_dirname, common_sub_diff in diff.subdirs.items():
        check_diff(common_sub_diff)

def test_diff(output, compiled):
    path, dirs = compiled
    for b in backends:
        for name in dirs:
            ext = b().ext
            diff = filecmp.dircmp(os.path.join(output, ext, name),
                                  os.path.join(expected, ext, name),
                                  ['target']) # XXX: should only filter out target for java
            check_diff(diff)

def get_out(name):
    return os.path.join(directory, name + ".out")

def get_expected(name):
    out = get_out(name)
    try:
        expected = open(out).read()
    except IOError, e:
        expected = None
    return expected

def has_main(name):
    code = os.path.join(directory, name + ".q")
    return os.path.exists(code) and "main" in open(code).read()

def run_tests(base, dirs, command, env=None):
    for name in dirs:
        if has_main(name):
            actual = subprocess.check_output(command(name), cwd=os.path.join(base, name), env=env)
            expected = get_expected(name)
            if expected != actual:
                open(get_out(name) + ".cmp", "write").write(actual)
            assert expected == actual

def batch_pom(target, dirs):
    with open(os.path.join(target, "pom.xml"), "write") as fd:
        fd.write("""<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>batch</groupId>
  <artifactId>batch</artifactId>
  <version>1.0.0</version>
  <packaging>pom</packaging>
  <modules>
    %s
  </modules>
</project>
""" % "\n    ".join(["<module>%s</module>" % d for d in dirs]))

def test_run_java(output):
    j = Java()
    base = os.path.join(output, j.ext)
    dirs = [name for name in os.listdir(base) if name not in ("pom.xml",)]
    batch_pom(base, dirs)
    subprocess.check_call(["mvn", "-q", "install", "dependency:build-classpath", "-Dmdep.outputFile=classpath"], cwd=base)

    import quarkc.java
    run_tests(base, dirs, lambda name: ["java", "-cp", open(os.path.join(base, name, "classpath")).read().strip() +
                                        ":target/classes",
                                        quarkc.java.name(name)])

def test_run_python(output):
    py = Python()
    base = os.path.join(output, py.ext)
    dirs = [name for name in os.listdir(base)]
    pypath = ":".join([os.path.join(base, name) for name in dirs])
    env = {"PYTHONPATH": pypath}
    env.update(os.environ)

    import quarkc.python
    run_tests(base, dirs, lambda name: ["python", quarkc.python.name(name) + ".py"], env=env)

def test_run_javascript(output):
    js = JavaScript()
    base = os.path.join(output, js.ext)
    dirs = [name for name in os.listdir(base)]
    node_path = ":".join([os.path.join(base, name) for name in dirs])
    env = {"NODE_PATH": base}
    env.update(os.environ)

    run_tests(base, dirs, lambda name: ["node", name + ".js"], env=env)

def test_run_ruby(output):
    rb = Ruby()
    base = os.path.join(output, rb.ext)
    dirs = [name for name in os.listdir(base)]

    run_tests(base, dirs, lambda name: ["ruby", name + ".rb"])
