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

from quarkc.c2.ir import (
    Name, Function, Int, Param, Return, Invoke, Ref, Local, Package, Var, While, If, Block, Call,
    Void, Send
)

NAMES = [
#    (("foo",), "foo", ()),
#    (("pkg:foo",), "pkg", ("foo",)),
    (("pkg:foo.bar",), "pkg", ("foo", "bar")),
    (("pkg", "foo.bar"), "pkg", ("foo", "bar"))
]

@pytest.mark.parametrize("args,package,path", NAMES)
def test_name(args, package, path):
    n = Name(*args)
    assert n.package == package
    assert n.path == path

LOCALS = [
    (("bar", Ref("pkg:x.foo")), "pkg", ("x", "foo",), "bar"),
    (("baz", Ref("pkg:x.foo")), "pkg", ("x", "foo",), "baz"),
    (("bar", "pkg:foo.bar"), "pkg", ("foo", "bar"), "bar"),
    (("baz", "pkg:foo.bar"), "pkg", ("foo", "bar"), "baz")
]

@pytest.mark.parametrize("args,package,path,name", LOCALS)
def test_local(args, package, path, name):
    l = Local(*args)
    assert l.type.name.package == package
    assert l.type.name.path == path
    assert l.name == name

def test_package():
    p1 = Package(Function(Name("p1:n.fun"),
                          Int(),
                          Param("a", Int()),
                          Param("b", Int()),
                          Return(Invoke(Ref("q:n.add"), Var("a"), Var("b")))),
                 Function(Name("p1:n.f2"),
                          Int(),
                          Param("a", Int()),
                          Param("b", Int()),
                          Return(Invoke(Ref("q:n.mul"), Var("a"), Var("b")))))
    print p1
    p = Python()
    files = emit(p1, p)
    print files

def test_nesting():
    l = Local("foo", Int())
    l2 = Local("foo", Int())
    stmt = While(Var("x"), l, If(Var("y"), l2, l2))
    b = Block(stmt)
    print b
    names = set()
    for c in b.collisions(names):
        print "collision:", c


from quarkc.c2.emit_code import code
from quarkc.c2.emit import emit
from quarkc.c2.emit_target import Python, Java

def test_emit():
    stmt = If(Var("x"),
              Call(Var("y"), ()),
              Call(Var("z"), ()))
    print code(stmt, Python())
    print code(stmt, Java())

    print

    stmt = If(Var("x"),
              Call(Var("y"), ()),
              stmt)
    print "======"
    print code(stmt, Python())
    print code(stmt, Java())
    print "======"

    stmt = Function(Name("a:b.c"),Void(),While(Invoke(Ref("pkg:n.asdf"), Send(Var("x"), "y", ())), stmt))
    p = Python()
    print code(stmt, p)
    j = Java()
    print code(stmt, j)


from .sample_ir import (
    fibonacci_ir, minimal_ir, native_int, native_map_string_string, native_map_string_int
)

samples = [fibonacci_ir, minimal_ir, native_int, native_map_string_string, native_map_string_int]
from quarkc.c2.ir import restructure, model_externals, reconstruct

@pytest.mark.parametrize("sample", samples, ids=[s.func_name for s in samples])
def test_restructure(sample):
    s = sample()
    r = restructure(s)
    assert len(repr(r)) >= len(repr(s))
    assert repr(r) == repr(restructure(r))
    print r

@pytest.mark.parametrize("sample", samples, ids=[s.func_name for s in samples])
def test_model_externals(sample):
    s = sample()
    e = model_externals(s)
    print e

@pytest.mark.parametrize("sample", samples, ids=[s.func_name for s in samples])
def test_reconstruct(sample):
    s = sample()
    r = reconstruct(s)
    assert len(repr(r)) >= len(repr(s))
    print r
