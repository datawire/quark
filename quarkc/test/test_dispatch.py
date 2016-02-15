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
from quarkc.dispatch import dispatch, overload

@dispatch(int, int)
def foo(x, y):
    return type(x), type(y)

@dispatch(str, str)
def foo(x, y):
    return type(x), type(y)

@dispatch(float)
def foo(x, y):
    return type(x), type(y)

class Overload(object):

    @overload(int, int)
    def bar(self, x, y):
        return type(x), type(y)

    @overload(str, str)
    def bar(self, x, y):
        return type(x), type(y)

    @overload(float)
    def bar(self, x, y):
        return type(x), type(y)

bar = Overload().bar

@dispatch(int)
def baz(x, y=None):
    return type(x), type(y)

@dispatch(str)
def baz(x, y=None):
    return type(x), type(y)

@pytest.mark.parametrize("callable,arguments,expected", [
    (foo, (1, 2), (int, int)),
    (foo, ("a", "b"), (str, str)),
    (foo, (1, "a"), TypeError("foo has no matching method: (int, str)")),
    (foo, (1.0, 1), (float, int)),
    (foo, (1.0, [1, 2, 3]), (float, list)),
    (bar, (1, 2), (int, int)),
    (bar, ("a", "b"), (str, str)),
    (bar, (1, "a"), TypeError("bar has no matching method: (int, str)")),
    (bar, (1.0, 1), (float, int)),
    (bar, (1.0, [1, 2, 3]), (float, list)),
    (baz, (1,), (int, type(None))),
    (baz, (1, 2), (int, int)),
    (baz, ("one",), (str, type(None))),
    (baz, ("one", 2), (str, int)),
])
def test_dispatch(callable, arguments, expected):
    try:
        result = callable(*arguments)
        assert result == expected
    except TypeError, e:
        assert type(e) == type(expected)
        assert str(e) == str(expected)
