import pytest
from quarkc.c2.ir import ( IR, Name, Ref, Local, Package, Literal,
                           Declaration, Field, Message, Method,
                           Construct, Constructor, Function, Class, Interface,
                           Void, Int, Float, String, Bool, Return, Type, InterfaceType,
                           ClassType,
                           Var, Get, Set, Invoke, Send,
                           This, Null, StringLit, IntLit, FloatLit, BoolLit,
                           Block, If, While, Evaluate, Break, Continue)

def nameof(c, default=None):
    if default is None:
        default = "/"
    else:
        default = "[%s]" % default
    return (c.__class__.__name__, getattr(c, "name", default))

def check_tree_equal(tree, etree, stack=()):
    assert isinstance(tree, IR)
    assert type(tree) is type(etree)
    if not stack:
        stack = (nameof(tree), )
    for i, (c, ec) in enumerate(map(None, tree.children, etree.children)):
        cn = nameof(c, i)
        ecn = nameof(ec, i)
        assert c is not None, "Unexpected child %s, got extra %s" % (stack, ecn)
        assert ec is not None, "Missing child %s, missing %s" % (stack, cn)
        assert type(c) is type(ec), "Mismatched child %s, want %s got %s" % (stack, cn, ecn)
        check_tree_equal(c, ec, stack + (cn, ))
    if isinstance(tree, (Name, Literal)):
        assert tree == etree, "Value mismatch, expected %r got %r for %s" % (
            tree, etree, stack)
    elif isinstance(tree, (Declaration, Field, Message, Method, Constructor, Var, Get, Set)):
        assert tree.name == etree.name, "Name mismatch, expected %r got %r for %s" % (
            tree.name, etree.name, stack)

def check_repr(tree):
    r = repr(tree)
    print r
    etree = IR.load(r)
    check_tree_equal(tree, etree)


class TestTreeEqual(object):
    def test_non_ir(self):
        with pytest.raises(AssertionError):
            check_tree_equal(None, None)

    def test_type_equality(self):
        with pytest.raises(AssertionError):
            check_tree_equal(Int(), This())

    def test_missing_child(self):
        with pytest.raises(AssertionError):
            check_tree_equal(Block(Return(This())), Block())

    def test_extra_child(self):
        with pytest.raises(AssertionError):
            check_tree_equal(Block(), Block(Return(This())))

    def test_mismatched_child(self):
        with pytest.raises(AssertionError):
            check_tree_equal(Block(Return(This())), Block(Return(Null(Int()))))

    @pytest.mark.parametrize("ir_f", [
        lambda name: Name("a:b", name),
        lambda name: Local(name, Int()),
        lambda name: Field(name, Int()),
        lambda name: Message(name, Int()),
        lambda name: Method(name, Int(), Block()),
        lambda name: Constructor(name, ClassType(Name("a.b.c")), Block()),
        lambda name: Var(name),
        lambda name: Get(This(), name),
        lambda name: Set(This(), name, Null(Int())),
        ])
    def test_name(self, ir_f):
        with pytest.raises(AssertionError):
            check_tree_equal(ir_f("right"), ir_f("wrogn"))

    @pytest.mark.parametrize("right, wrogn", [
        (StringLit("right"), StringLit("wrogn")),
        (IntLit(1), IntLit(2)),
        (FloatLit(1.1), FloatLit(1.2)),
        (BoolLit(True), BoolLit(False)),
        ])
    def test_literal(self, right, wrogn):
        with pytest.raises(AssertionError):
            check_tree_equal(right, wrogn)

@pytest.mark.parametrize("tree", [
    Package(), Name('a', 'b', 'c'), Type('a:b.c'),
    ClassType('a:b.c'), InterfaceType('a:b.c'),
    Void(), Int(), Float(), String(), Bool(), Declaration('a', Void()),
    Package(Function(Name('a:b.c'), Void(), Block()),
            Function(Name('a:b.d'), Void(), Block())),
    Interface(Name('a:b.c')),
    Interface(Name('a:b.c'), Message('a',Void())),
    Interface(Name('a:b.c'), Message('a',Void()), Message('b', Int())),
    Interface(Name('a:b.c'), InterfaceType('b:c.d')),
    Interface(Name('a:b.c'), InterfaceType('b:c.d'), InterfaceType('b:c.e')),
    Interface(Name('a:b.c'), InterfaceType('b:c.d'), InterfaceType('b:c.e'),
              Message('a',Void()), Message('b', Int())),
    Class(Name('a:b.c'), Constructor('c', ClassType('a:b.c'), Block())),
    Class(Name('a:b.c'), InterfaceType('b:c.d'),
          Constructor('c', ClassType('a:b.c'), Block())),
    Class(Name('a:b.c'), InterfaceType('b:c.d'), InterfaceType('b:c.e'),
          Constructor('c', ClassType('a:b.c'), Block())),
    This(), Null(Int()),
    Var("a"), Get(This(), "a"), Set(This(), "a", Null(Bool())),
    Invoke(Ref("a:b.c")), Invoke(Ref("a:b.c"), This()),
    Invoke(Ref("a:b.c"), This(), Invoke(Ref("a:b.c"))),
    Send(This(), "a", (Send(This(), "a", (This(), )), Send(This(), "a", ()), )),
    Construct(Ref("a:b.c"), (Construct(Ref("a:b.c"), (This(), )),
                              Construct(Ref("a:b.c"), ()))),
    IntLit(0), IntLit(1), IntLit(42),
    FloatLit(0.0), FloatLit(1.0), FloatLit(1.1), FloatLit(4.2),
    StringLit(""), StringLit("a"), StringLit(u"\xfc"),
    Local("a",Int()), Local("a", Int(), IntLit(3)),
    Evaluate(Null(String())),
    Return(Null(Float())),
    If(BoolLit(True),
       Return(Null(InterfaceType(Ref("a:b.c")))),
       Return(This())),
    While(BoolLit(True), Block(Break(), Continue())),
    ])
def test_simple_ir(tree):
    check_repr(tree)

from sample_ir import fibonacci_ir, minimal_ir

@pytest.mark.parametrize("factory", [fibonacci_ir, minimal_ir])
def test_sample_ir(factory):
    tree = factory()
    check_repr(tree)
