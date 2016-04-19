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

import os, pytest
from quarkc.compiler import Compiler, CompileError, ParseError
from .util import assert_file, maybe_xfail, is_excluded_file, check_file

directory = os.path.join(os.path.dirname(__file__), "compile")

files = [name for name in os.listdir(directory) if name.endswith(".q")]
paths = [os.path.join(directory, name) for name in files]

@pytest.fixture(params=paths)
def path(request):
    return request.param

def test_compile(path):
    compile(path, is_excluded_file)

def test_compile_builtin():
    compile(os.path.join(directory, "empty.q"), lambda x: False)

def compile(path, file_filter):
    dir = os.path.dirname(path)
    text = open(path).read()
    maybe_xfail(text)
    base = os.path.splitext(path)[0]
    c = Compiler()
    try:
        c.urlparse(path)
        c.compile()
        failed_expectations = []
        for root in c.roots:
            for ast in root.files:
                if ast.filename == "reflector": continue
                if file_filter(ast.filename): continue
                astname = os.path.splitext(ast.filename)[0] + ".astc"
                astpath = os.path.join(dir, astname)
                content = ast.pprint()
                expected = check_file(astpath, content)
                if content != expected:
                    failed_expectations.append(astname)
        assert not failed_expectations, failed_expectations
    except (CompileError, ParseError), e:
        expected = base + ".err"
        computed = str(e).replace(os.path.dirname(path) + "/", "")
        assert_file(expected, computed)
