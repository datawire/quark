import pytest
from quarkc.ir import ( IR, Name, Local, Package, Literal,
                        Declaration, Field, Message, Method, Constructor,
                        Construct, Constructor, Function, Class, Interface,
                        Void, Int, Float, String, Bool, Return, Type, InterfaceType,
                        ClassType,
                         Var, Get, Set, Invoke, Send,
                        This, Null, StringLit, IntLit, FloatLit, BoolLit,
                        Block, If, While, Evaluate, Break, Continue)

def check_tree_equal(tree, etree, stack=()):
    assert isinstance(tree, IR)
    assert type(tree) is type(etree)
    for c, ec in map(None, tree.children, etree.children):
        assert c is not None, "Unexpected child %s in %s" % (ec, stack)
        assert ec is not None, "Missing child %s in %s" % (ec, stack)
        check_tree_equal(c, ec, stack + (c.__class__.__name__, ))
    if isinstance(tree, (Name, Literal)):
        assert tree == etree
    elif isinstance(tree, (Declaration, Field, Message, Method, Constructor, Var, Get, Set)):
        assert tree.name == etree.name, "Name mismatch, expected %r got %r for %s" % (
            tree.name, etree.name, tree.__class__.__name__)

def check_repr(tree):
    r = repr(tree)
    print r
    etree = IR.load(r)
    check_tree_equal(tree, etree)


class TestTreeEqual(object):
    def test_detects_non_ir(self):
        with pytest.raises(AssertionError):
            check_tree_equal(None, None)

    def test_type_equality(self):
        with pytest.raises(AssertionError):
            check_tree_equal(Int(), Null())

    def test_missing_child(self):
        with pytest.raises(AssertionError):
            check_tree_equal(Block(Return(Null())), Block())

    def test_extra_child(self):
        with pytest.raises(AssertionError):
            check_tree_equal(Block(), Block(Return(Null())))

    def test_mismatched_child(self):
        with pytest.raises(AssertionError):
            check_tree_equal(Block(Return(This())), Block(Return(Null())))

    @pytest.mark.parametrize("ir_f", [
        lambda name: Name("a:b", name),
        lambda name: Local(name, Int()),
        lambda name: Field(name, Int()),
        lambda name: Message(name, Int()),
        lambda name: Method(name, Int(), Block()),
        lambda name: Constructor(name, ClassType(Name("a.b.c")), Block()),
        lambda name: Var(name),
        lambda name: Get(This(), name),
        lambda name: Set(This(), name, Null()),
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
    This(), Null(), Var("a"), Get(This(), "a"), Set(This(), "a", Null()),
    Invoke(Name("a:b.c")), Invoke(Name("a:b.c"), This()),
    Invoke(Name("a:b.c"), This(), Invoke(Name("a:b.c"))),
    Send(This(), "a", (Send(This(), "a", (This(), )), Send(This(), "a", ()), )),
    Construct(Name("a:b.c"), (Construct(Name("a:b.c"), (This(), )),
                              Construct(Name("a:b.c"), ()))),
    IntLit(0), IntLit(1), IntLit(42),
    FloatLit(0.0), FloatLit(1.0), FloatLit(1.1), FloatLit(4.2),
    StringLit(""), StringLit("a"), StringLit(u"\xfc"),
    Local("a",Int()), Local("a", Int(), IntLit(3)),
    Evaluate(Null()),
    Return(Null()),
    If(BoolLit(True), Return(Null()), Return(This())),
    While(BoolLit(True), Block(Break(), Continue())),
    ])
def test_simple_ir(tree):
    check_repr(tree)

from sample_ir import fibonacci_ir, minimal_ir

@pytest.mark.parametrize("factory", [fibonacci_ir, minimal_ir])
def test_sample_ir(factory):
    tree = factory()
    check_repr(tree)
