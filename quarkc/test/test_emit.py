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

