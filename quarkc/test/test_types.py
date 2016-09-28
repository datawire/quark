import pytest
from quarkc.errors import Errors
from quarkc.types import *

# TODO: negative tests?

GET = [
    (Object(Field('a', Ref('X'))), 'a', Ref('X'))
]

@pytest.mark.parametrize("t,attr,result", GET)
def xtest_get(t, attr, result):
    assert t.get(attr) == result

BIND = [
    (Callable(Ref('T'), Ref('T')),
     (Ref('L'),),
     Callable(Ref('L'), Ref('L'))),
    (Object(Field('get', Callable(Ref('T'))),
            Field('set', Callable(Ref('void'), Ref('T')))),
     (Ref('int'),),
     Object(Field('get', Callable(Ref('int'))),
            Field('set', Callable(Ref('void'), Ref('int')))))
]

# XXX: hmm, should parameter names be part of the signature of a
# callable? that requires parameter names to match, which might be
# reasonable for keyword args scenarios, but not for positional

MATCH = [
    (Callable(Ref('T'), Ref('T')),
     Callable(Ref('int'), Ref('int')),
     {'T': Ref('int')}),
#    (Callable(Ref('T'), Ref('T')),
#     Callable(Ref('int'), Ref('float')),
#     {'T': Union(Ref('int'), Ref('float'))})
]

@pytest.mark.parametrize("a,b,result", MATCH)
def xtest_match(a,b,result):
    assert a.match(b) == result

def typespace():
    space = Typespace(Errors())

    space["Object"] = Object()
    space["int"] = Object(Field("int", Ref("int")))
    space["float"] = Object(Field("float", Ref("float")))
    space["String"] = Object(Field("string", Ref("String")))
    return space

def test_struct():
    space = typespace()

    space["Foo"] = Object(Field("a", Ref("int")),
                          Field("b", Ref("float")),
                          Field("c", Ref("String")))

    space["Bar"] = Object(Field("a", Ref("int")),
                          Field("b", Ref("float")),
                          Field("c", Ref("String")),
                          Field("d", Ref("String")))

    assert space.assignable(Ref("Foo"), Ref("Foo"))
    assert space.assignable(Ref("Bar"), Ref("Bar"))
    assert space.assignable(Ref("Foo"), Ref("Bar"))
    assert not space.assignable(Ref("Bar"), Ref("Foo"))

def test_template():
    space = typespace()

    space["Foo"] = Object(Field("a", Ref("int")),
                          Field("b", Ref("float")),
                          Field("c", Ref("String")))
    space["Bar"] = Template(Param("A"), Param("B"), Param("C"),
                            Object(Field("a", Ref("A")),
                                   Field("b", Ref("B")),
                                   Field("c", Ref("C"))))

    foo = Ref("Foo")
    bar = Ref("Bar", Ref("int"), Ref("float"), Ref("String"))
    Bar = Ref("Bar")
    assert space.assignable(foo, bar)
    assert space.assignable(bar, foo)
    assert not space.assignable(foo, Bar)
    assert not space.assignable(Bar, foo)

def test_templated_method_cycle():
    space = typespace()

    space["meth"] = Template(Param("T"), Callable(Ref("T"), Ref("String")))
    space["Node"] = Template(Param("T"),
                             Object(Final("parent", Ref("Node", Ref("T"))),
                                    Field("value", Ref("T")),
                                    Final("method", Ref("meth", Ref("T")))))

    n1 = space.resolve(Ref("Node", Ref("int")))
    assert space.get(Ref("Node", Ref("int")), "parent") is n1

    space["mint"] = Callable(Ref("int"), Ref("Object"))
    space["NodeInt"] = Object(Final("parent", Ref("NodeInt")),
                              Field("value", Ref("int")),
                              Final("method", Ref("mint")))

    assert space.assignable(Ref("Node", Ref("int")), Ref("NodeInt"))
    assert not space.assignable(Ref("NodeInt"), Ref("Node", Ref("int")))
    assert not space.assignable(Ref("int"), Ref("Object"))
    assert space.assignable(Ref("Object"), Ref("int"))

def test_pure_cycle():
    space = typespace()

    space["Start"] = Object(Field("next", Ref("Middle")))
    space["Middle"] = Object(Field("next", Ref("Cycle")))
    space["Cycle"] = Object(Field("next", Ref("Cycle")))

    assert space.assignable(Ref("Cycle"), Ref("Start"))
    assert space.assignable(Ref("Cycle"), Ref("Middle"))
    assert space.assignable(Ref("Start"), Ref("Middle"))
    assert space.assignable(Ref("Start"), Ref("Cycle"))
    assert space.assignable(Ref("Middle"), Ref("Start"))
    assert space.assignable(Ref("Middle"), Ref("Cycle"))

def test_cycle():
    space = typespace()

    space["Start"] = Object(Final("next", Ref("Middle")),
                            Field("start", Ref("int")))
    space["Middle"] = Object(Final("next", Ref("Cycle")),
                             Field("middle", Ref("String")))
    space["Cycle"] = Object(Final("next", Ref("Cycle")))

    assert space.assignable(Ref("Cycle"), Ref("Start"))
    assert space.assignable(Ref("Cycle"), Ref("Middle"))
    assert not space.assignable(Ref("Start"), Ref("Cycle"))
    assert not space.assignable(Ref("Start"), Ref("Middle"))
    assert not space.assignable(Ref("Middle"), Ref("Start"))
    assert not space.assignable(Ref("Middle"), Ref("Cycle"))

def test_meth_cycle():
    space = typespace()

    space["Start"] = Object(Final("next", Callable(Ref("Middle"))),
                            Field("start", Ref("int")))
    space["Middle"] = Object(Final("next", Callable(Ref("Cycle"))),
                             Field("middle", Ref("String")))
    space["Cycle"] = Object(Final("next", Callable(Ref("Cycle"))))

    assert space.assignable(Ref("Cycle"), Ref("Start"))
    assert space.assignable(Ref("Cycle"), Ref("Middle"))
    assert not space.assignable(Ref("Start"), Ref("Cycle"))
    assert not space.assignable(Ref("Start"), Ref("Middle"))
    assert not space.assignable(Ref("Middle"), Ref("Start"))
    assert not space.assignable(Ref("Middle"), Ref("Cycle"))

def test_box():
    space = typespace()

    space["box"] = Template(Param("T"), Object(Field("value", Ref("T"))))

    intbox = Ref("box", Ref("int"))
    objbox = Ref("box", Ref("Object"))

    assert not space.assignable(intbox, objbox)
    assert not space.assignable(objbox, intbox)

def test_function():
    space = typespace()

    space["f"] = Callable(Ref("int"))
    space["g"] = Callable(Ref("Object"))

    assert space.assignable(Ref("g"), Ref("f"))
    assert not space.assignable(Ref("f"), Ref("g"))

    space["h"] = Callable(Ref("int"), Ref("int"))
    space["i"] = Callable(Ref("int"), Ref("Object"))
    space["j"] = Callable(Ref("int"))

    assert space.assignable(Ref("h"), Ref("i"))
    assert not space.assignable(Ref("i"), Ref("h"))

    assert space.assignable(Ref("j"), Ref("j"))
    assert not space.assignable(Ref("j"), Ref("i"))
    assert not space.assignable(Ref("i"), Ref("j"))
    assert not space.assignable(Ref("j"), Ref("h"))
    assert not space.assignable(Ref("h"), Ref("j"))

def test_higher_order_function():
    space = typespace()

    space["smug"] = Template(Param('T'), Param('A'), Param('B'), Param('C'),
                             Callable(Ref('T'), Callable(Ref('T'), Ref('A'), Ref('B'), Ref('C')),
                                      Ref('A'), Ref('B'), Ref('C')))
    space["sum"] = Callable(Ref('int'), Ref('int'), Ref('float'), Ref('String'))

    result = space.call(Ref("smug", Ref("int"), Ref("int"), Ref("float"), Ref("String")),
                        Ref("sum"),
                        Ref("int"), Ref("float"), Ref("String"))
    assert result == space.resolve(Ref("int"))

    bindings = space.infer(space["smug"].type.arguments[0], space["sum"])
    print bindings

#    bindings = zipmatch(smug.arguments, (sum, Ref('int'), Ref('float'), Ref('String')))
#    assert bindings == {'T': Ref('int'), 'A': Ref('int'), 'B': Ref('float'), 'C': Ref('String')}
#    assert smug.bind(bindings).call(sum, Ref('int'), Ref('float'), Ref('String')) == Ref('int')
