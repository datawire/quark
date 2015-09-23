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
from quark.compiler import Compiler, CompileError, ParseError
from .util import assert_file

directory = os.path.join(os.path.dirname(__file__), "compile")

files = [name for name in os.listdir(directory) if name.endswith(".q")]
paths = [os.path.join(directory, name) for name in files]

@pytest.fixture(params=paths)
def path(request):
    return request.param

def test_compile(path):
    dir = os.path.dirname(path)
    text = open(path).read()
    base = os.path.splitext(path)[0]
    c = Compiler()
    try:
        c.parse(os.path.basename(path), text)
        c.compile()
        for ast in c.root.files:
            astname = os.path.splitext(ast.filename)[0] + ".ast"
            astpath = os.path.join(dir, astname)
            assert_file(astpath, ast.pprint())
    except (CompileError, ParseError), e:
        expected = base + ".err"
        computed = str(e)
        assert_file(expected, computed)
