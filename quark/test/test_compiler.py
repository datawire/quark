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
class int {}

void f(int a, int b, int c) {}
    """)
    c.prep()
    check_f(c.root.env["f"])

def test_prep_package():
    c = Compiler()
    c.parse("""
class int {}

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
class int {}

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
class int {}

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
        for fragment in ("4:16:int", "4:23:int", "4:30:int",
                         "5:13:x",
                         "6:13:nonexistent", "6:34:d"):
            assert fragment in msg

def test_emit():
    c = Compiler()
    c.parse("""
class int {}

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
    assert b.files["int.java"] == "public class int {}"
    assert b.files["Test.java"] == """public class Test {
    public void test() {
        int x = 2;
        int y = 2;
        int z = (x) + (y);
    }
}"""
