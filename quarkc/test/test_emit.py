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

import os, pytest, shutil, subprocess, filecmp, difflib
from quarkc.backend import Java, Python, JavaScript, Ruby, Python3
from quarkc.compiler import Compiler, compile
from quarkc.helpers import namever
from .util import maybe_xfail, filter_builtin

backends = (Java, Python, JavaScript, Ruby)

def do_compile(output, path):
    text = open(path).read()
    for b in backends:
        maybe_xfail(text, b().ext)
    return path, compile(Compiler(), path, output, *backends)

def do_output(directory):
    result = os.path.join(directory, "output")
    if os.path.exists(result):
        shutil.rmtree(result)
    os.mkdir(result)
    return result

ffi_dir = os.path.join(os.path.dirname(__file__), "ffi")
ffi_files = [name for name in os.listdir(ffi_dir) if name.endswith(".q")]
ffi_paths = [os.path.join(ffi_dir, name) for name in ffi_files]
ffi_expected = os.path.join(ffi_dir, "expected")

@pytest.fixture(scope="session")
def ffi_output(request):
    return do_output(ffi_dir)

@pytest.fixture(scope="session", params=ffi_paths)
def ffi_path(request):
    return request.param

@pytest.fixture(scope="session")
def ffi_compiled(ffi_output, ffi_path):
    return do_compile(ffi_output, ffi_path)

def check_diff(output_root, expected_root, diff):
    # left is output, right is expected
    assert not diff.left_only, diff.left_only
    assert not diff.right_only, diff.right_only
    for name in diff.diff_files:
        assert (filter_builtin(open(os.path.join(output_root, name)).read()) ==
                filter_builtin(open(os.path.join(expected_root, name)).read()))
    for common_dirname, common_sub_diff in diff.subdirs.items():
        check_diff(os.path.join(output_root, common_dirname),
                   os.path.join(expected_root, common_dirname),
                   common_sub_diff)

def test_ffi(ffi_output, ffi_compiled):
    path, dirs = ffi_compiled
    for b in backends:
        for name in dirs:
            if name == "quark": continue
            ext = b().ext
            output_root = os.path.join(ffi_output, ext, name)
            expected_root = os.path.join(ffi_expected, ext, name)
            diff = filecmp.dircmp(output_root, expected_root,
                                  ['target']) # XXX: should only filter out target for java
            check_diff(output_root, expected_root, diff)

def test_ffi_build_java(ffi_output):
    j = Java()
    base = os.path.join(ffi_output, j.ext)
    dirs = [name for name in os.listdir(base) if name not in ("pom.xml",)]
    batch_pom(base, dirs)
    subprocess.check_call(["mvn", "-q", "compile"], cwd=base)

directory = os.path.join(os.path.dirname(__file__), "emit")
files = [name for name in os.listdir(directory) if name.endswith(".q")]
paths = [os.path.join(directory, name) for name in files]

@pytest.fixture(scope="session")
def output(request):
    return do_output(directory)

@pytest.fixture(scope="session", params=paths)
def path(request):
    return request.param

@pytest.fixture(scope="session")
def compiled(output, path):
    return do_compile(output, path)

# This test is necessary to glue together the compiled fixture to
# test_run_*
def test_emit(output, compiled):
    pass

def get_out(name):
    return os.path.join(directory, name + ".out")

def get_expected(name):
    out = get_out(name)
    try:
        expected = open(out).read()
    except IOError:
        expected = None
    return expected

def has_main(name):
    code = os.path.join(directory, name + ".q")
    return os.path.exists(code) and "main" in open(code).read()

def get_dist(name):
    code = os.path.join(directory, name + ".q")
    cmp = Compiler()
    file = cmp.urlparse(code, recurse=False)
    name, ver = namever(file)
    return name

def run_tests(base, dirs, command, env=None):
    failed_expectations = []
    for name in dirs:
        if has_main(name):
            try:
                cmd = command(name)
                cwd = os.path.join(base, name)
                print "cd %s && %s" % (cwd, " ".join(cmd))
                actual = subprocess.check_output(cmd, cwd=cwd, env=env, stderr=subprocess.STDOUT)
            except subprocess.CalledProcessError as e:
                actual = e.output
                print(actual)
            expected = get_expected(name)
            if expected != actual:
                open(get_out(name) + ".cmp", "w").write(actual)
                failed_expectations.append(name)
                if expected is None:
                    print("FAILURE: Expected output not found for %r." % name)
                else:
                    d = difflib.Differ()
                    delta = list(d.compare(filter_builtin(expected),
                                           filter_builtin(actual)))
                    print("FAILURE: Expected and actual output dont match for '%s':\n%s" % (
                        name, "".join(delta)))
    print(failed_expectations)
    assert not failed_expectations



def batch_pom(target, dirs):
    with open(os.path.join(target, "pom.xml"), "w") as fd:
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

def test_run_java_(output):
    j = Java()
    base = os.path.join(output, j.ext)
    dirs = [name for name in os.listdir(base) if name not in ("pom.xml",)]
    batch_pom(base, dirs)
    subprocess.check_call(["mvn", "-q", "install", "dependency:build-classpath", "-Dmdep.outputFile=classpath"], cwd=base)

    subprocess.check_call(["quark", "install", "--java"])
    import quarkc.java
    run_tests(base, dirs, lambda name: ["java", "-cp", open(os.path.join(base, name, "classpath")).read().strip() +
                                        ":target/classes",
                                        "%s.Main" % quarkc.java.name(get_dist(name))])

def test_run_python(output):
    py = Python()
    base = os.path.join(output, py.ext)
    dirs = [name for name in os.listdir(base)]
    pypath = ":".join([os.path.join(base, name) for name in dirs])
    env = {"PYTHONPATH": pypath}
    env.update(os.environ)

    subprocess.check_call(["quark", "install", "--python"])
    import quarkc.python
    run_tests(base, dirs, lambda name: ["python", quarkc.python.name(get_dist(name)) + ".py"], env=env)

def test_run_python3(output):
    py = Python3()
    base = os.path.join(output, py.ext)
    dirs = [name for name in os.listdir(base)]
    pypath = ":".join([os.path.join(base, name) for name in dirs])
    env = {"PYTHONPATH": pypath}
    env.update(os.environ)

    subprocess.check_call(["quark", "install", "--python3"])
    import quarkc.python
    run_tests(base, dirs, lambda name: ["python3", quarkc.python.name(get_dist(name)) + ".py"], env=env)

def test_run_javascript(output):
    js = JavaScript()
    base = os.path.join(output, js.ext)
    dirs = [name for name in os.listdir(base)]
    env = {"NODE_PATH": base}
    env.update(os.environ)

    subprocess.check_call(["quark", "install", "--javascript"])
    import quarkc.javascript
    run_tests(base, dirs, lambda name: ["node", quarkc.javascript.name(get_dist(name)) + ".js"], env=env)

def test_run_ruby(output):
    rb = Ruby()
    base = os.path.join(output, rb.ext)
    dirs = [name for name in os.listdir(base)]
    ruby_path = ":".join([os.path.join(base, name, "lib") for name in dirs])
    env = {"RUBYLIB": ruby_path}
    env.update(os.environ)

    subprocess.check_call(["quark", "install", "--ruby"])
    import quarkc.ruby
    run_tests(base, dirs, lambda name: ["bundle", "exec", "ruby", "lib/" + quarkc.ruby.name(get_dist(name)) + ".rb"], env=env)
