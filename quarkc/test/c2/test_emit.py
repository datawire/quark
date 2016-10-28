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

import pytest


from quarkc.c2.emit import transform, emit
from quarkc.c2.ir import reconstruct
from quarkc.c2.emit_target import Go, Python, Java, Ruby

from .sample_ir import fibonacci_ir, minimal_ir, native_int, native_map_string_int, native_map_string_string

samples = [fibonacci_ir, minimal_ir, native_int, native_map_string_string, native_map_string_int]

@pytest.mark.parametrize("sample", samples, ids=[s.func_name for s in samples])
@pytest.mark.parametrize("target", [Go, Python, Java, Ruby])
def test_transform(sample, target):
    s = sample()
    r = reconstruct(s)
    t = transform(r, target())
    print t


@pytest.mark.parametrize("sample", samples, ids=[s.func_name for s in samples])
@pytest.mark.parametrize("target", [Go, Python, Java, Ruby])
def test_emit_sample(sample, target):
    t = target()
    for name, content in emit(sample(), t):
        print("")
        print(">>>>>> begin " + name)
        print(content)
        print("<<<<<<<< end " + name)

    import pprint
    pprint.pprint(dict(t.names))
    pprint.pprint(dict(t.imports))
