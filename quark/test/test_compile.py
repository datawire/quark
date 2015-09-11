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

directory = os.path.join(os.path.dirname(__file__), "compile")

files = [name for name in os.listdir(directory) if name.endswith(".q")]
paths = [os.path.join(directory, name) for name in files]

@pytest.fixture(params=paths)
def path(request):
    return request.param

def test_compile(path):
    text = open(path).read()
    base = os.path.splitext(path)[0]
    c = Compiler()
    try:
        c.parse(os.path.basename(path), text)
        c.compile()
        expected = base + ".ast"
        computed = str(c.root)
    except (CompileError, ParseError), e:
        expected = base + ".err"
        computed = str(e)
    try:
        saved = open(expected).read()
    except IOError, e:
        saved = None
    if saved != computed:
        open(expected + ".cmp", "write").write(computed)
    assert computed == saved
