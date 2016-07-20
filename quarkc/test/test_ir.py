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

from quarkc.ir import *

def test_name():
    n = Name("foo")
    print n
    n = Name("pkg:foo")
    print n
    n = Name("pkg:foo.bar")
    print n
    n = Name("pkg", "foo.bar")
    print n

def test_local():
    l = Local(Name("pkg:foo"), "bar")
    print l
    l = Local("pkg:foo.bar", "bar")
    print l

def test_package():
    p1 = Package((Function(Name("p1:fun"),
                           Name("p1:int"),
                           (Param("p1:int", "a"),
                            Param("p1:int", "b")),
                           Return(Invoke(Name("q:add"), (Var("a"), Var("b"))))),
                  Function(Name("p1:f2"),
                           Name("q:int"),
                           (Param("q:int", "a"),
                            Param("q:int", "b")),
                           Return(Invoke(Name("q:mul"), (Var("a"), Var("b")))))))
    print p1
