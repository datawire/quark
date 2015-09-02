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
from quark.backend import Java
from quark.compiler import Compiler, CompileError
from quark.ast import *

def check_f(f):
    assert isinstance(f, Function)
    assert f.name.text == "f"
    assert [p.name.text for p in f.params] == ["a", "b", "c"]

def test_prep_function():
    c = Compiler()
    c.parse("""
void f(int a, int b, int c) {}
    """)
    c.prep()
    check_f(c.root.env["f"])

def test_prep_package():
    c = Compiler()
    c.parse("""
package p {
    void f(int a, int b, int c) {}
}
    """)
    c.prep()
    p = c.root.env["p"]
    assert p.name.text == "p"
    f = p.env["f"]
    check_f(f)

def test_prep_package_class():
    c = Compiler()
    c.parse("""
package p {
    class C {
        void f(int a, int b, int c) {
        }
    }
}
    """)
    c.prep()
    p = c.root.env["p"]
    assert p.name.text == "p"
    C = p.env["C"]
    assert C.name.text == "C"
    f = C.env["f"]
    check_f(f)

def test_prep_class():
    c = Compiler()
    c.parse("""
class C {
    void f(int a, int b, int c) {
    }
}
    """)
    c.prep()
    C = c.root.env["C"]
    assert C.name.text == "C"
    f = C.env["f"]
    check_f(f)

def test_nonexistent():
    c = Compiler()
    c.parse("""
package p {
    class C {
        void f(int a, int b, int c) {
            x = a;
            nonexistent(a, b, c, d);
        }
    }
}
    """)
    try:
        c.prep()
        assert False
    except CompileError, e:
        msg = str(e)
        for fragment in ("5:13:x", "6:13:nonexistent", "6:34:d"):
            assert fragment in msg

def test_emit():
    c = Compiler()
    c.parse("""
class Test {
    void test() {
        int x = 2;
        int y = 2;
        int z = x + y;
    }
}
""")
    c.prep()
    b = Java()
    c.emit(b)
    assert b.files["Test.java"] == """public class Test {
    public void test() {
        int x = 2;
        int y = 2;
        int z = (x) + (y);
    }
}"""
