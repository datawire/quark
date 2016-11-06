from quarkc.c2.typespace import Typespace, Object, Field, Final, Ref, Template, Param, Callable, Unresolved

def typespace():
    space = Typespace()

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

    space["meth"] = Template(Param("meth.T"), Callable(Ref("meth.T"), Ref("String")))
    space["Node"] = Template(Param("Node.T"),
                             Object(Final("parent", Ref("Node", Ref("Node.T"))),
                                    Field("value", Ref("Node.T")),
                                    Final("method", Ref("meth", Ref("Node.T")))))

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
    assert bindings == {'T': Ref('int'), 'A': Ref('int'), 'B': Ref('float'), 'C': Ref('String')}

def test_nested_templates():
    space = typespace()

    space["Map"] = Template(Param('K'), Param('V'), Object(Field('key', Ref('K')), Field('value', Ref('V'))))
    space["Box"] = Template(Param('T'), Object(Field('contents', Ref('Map', Ref('String'), Ref('T')))))

    contents =  space.get(space.resolve(Ref("Box", Ref("int"))), "contents")
    map = Ref("Map", Ref("String"), Ref("int"))
    assert space.assignable(contents, map)
    assert space.assignable(map, contents)

def test_template_comparison():
    space = typespace()

    space["Pair"] = Template(Param('Pair.K'), Param('Pair.V'), Object(Field('key', Ref('Pair.K')),
                                                                      Field('value', Ref('Pair.V'))))
    space["Pair2"] = Template(Param('Pair2.K'), Param('Pair2.V'), Object(Field('key', Ref('Pair2.K')),
                                                                         Field('value', Ref('Pair2.V'))))
    space["Entry"] = Template(Param('A'), Param('B'), Object(Field('key', Ref('A')), Field('value', Ref('B'))))
    space["Coord"] = Template(Param('X'), Param('Y'), Object(Field('x', Ref('X')), Field('y', Ref('Y'))))

    assert space.assignable(Ref("Pair"), Ref("Pair2"))
    assert space.assignable(Ref("Pair2"), Ref("Pair"))
    assert space.assignable(Ref("Entry"), Ref("Pair"))
    assert not space.assignable(Ref("Pair"), Ref("Coord"))
    assert not space.assignable(Ref("Coord"), Ref("Pair"))

def test_mutable_comparison():
    space = typespace()
    space["A"] = Object(Field("f", Ref("int")))
    space["B"] = Object(Final("f", Ref("int")))

    assert not space.assignable(Ref("A"), Ref("B"))
    assert space.assignable(Ref("B"), Ref("A"))

def test_template_bounds():
    space = typespace()
    space["Box"] = Template(Param('Box.T'), Object(Final('contents', Ref('Box.T'))))
    space["Box1"] = Template(Param('Box1.T', Ref("Object")), Object(Final('contents', Ref('Box1.T'))))
    space["Box2"] = Template(Param('Box2.T', Ref("String")), Object(Final('contents', Ref('Box2.T'))))
    space["Box3"] = Template(Param('Box3.T', Ref("Object")), Object(Field('contents', Ref('Box3.T'))))

    # not having a bound is the same as Object() right now
    assert space.assignable(Ref("Box"), Ref("Box1"))
    assert space.assignable(Ref("Box1"), Ref("Box"))

    # if the parameters do have bounds, then the bounds are compared
    assert space.assignable(Ref("Box1"), Ref("Box2"))
    assert not space.assignable(Ref("Box2"), Ref("Box1"))

    assert not space.assignable(Ref("Box3"), Ref("Box1"))
    assert space.assignable(Ref("Box1"), Ref("Box3"))

    assert not space.assignable(Ref("Box3"), Ref("Box2"))
    assert not space.assignable(Ref("Box2"), Ref("Box3"))

def test_template_resolution():
    space = typespace()

    space["Box"] = Template(Param('T'), Object(Field('contents', Ref('T'))))
    assert isinstance(space.resolve(Ref("Box", Ref("int"))), Object)
    assert isinstance(space.resolve(Ref("Box", Ref("nonexistent"))), Unresolved)
