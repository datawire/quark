import pytest
from quarkc.types import *

# TODO: negative tests?

COMPARISONS = [
    (Leaf('a'), Leaf('a'), 0),
    (Leaf('a'), Leaf('b'), -1),
    (Object(Field('a', Leaf('A'))), Object(Field('a', Leaf('A'))), 0),
    (Object(Field('a', Leaf('A'))), Callable(Leaf('r'), Field('a', Leaf('A'))), 1)
]

@pytest.mark.parametrize("a,b,result", COMPARISONS)
def test_comparisons(a, b, result):
    assert cmp(a, b) == result

GET = [
    (Object(Field('a', Leaf('X'))), 'a', Leaf('X'))
]

@pytest.mark.parametrize("t,attr,result", GET)
def test_get(t, attr, result):
    assert t.get(attr) == result

BIND = [
    (Callable(Param('T'), Field('a', Param('T'))),
     {'T': Leaf('L')},
     Callable(Leaf('L'), Field('a', Leaf('L')))),
    (Object(Field('get', Callable(Param('T'))),
            Field('set', Callable(Leaf('void'), Field('value', Param('T'))))),
     {'T': Leaf('int')},
     Object(Field('get', Callable(Leaf('int'))),
            Field('set', Callable(Leaf('void'), Field('value', Leaf('int'))))))
]

@pytest.mark.parametrize("t,bindings,result", BIND)
def test_bind(t, bindings, result):
    assert t.bind() == t
    assert t.bind(bindings) == result

# XXX: hmm, should parameter names be part of the signature of a
# callable? that requires parameter names to match, which might be
# reasonable for keyword args scenarios, but not for positional

MATCH = [
    (Callable(Param('T'), Field('a', Param('T'))),
     Callable(Leaf('int'), Field('a', Leaf('int'))),
     {'T': Leaf('int')}),
    (Callable(Param('T'), Field('a', Param('T'))),
     Callable(Leaf('int'), Field('a', Leaf('float'))),
     {'T': Union(Leaf('int'), Leaf('float'))})
]

@pytest.mark.parametrize("a,b,result", MATCH)
def test_match(a,b,result):
    assert a.match(b) == result

def test_smug():
    smug = Callable(Param('T'), Field('f', Callable(Param('T'),
                                                    Field('a', Param('A')),
                                                    Field('b', Param('B')),
                                                    Field('c', Param('C')))),
                    Field('a', Param('A')),
                    Field('b', Param('B')),
                    Field('c', Param('C')))

    sum = Callable(Leaf('int'), Field('a', Leaf('int')), Field('b', Leaf('float')), Field('c', Leaf('String')))

    bindings = zipmatch(smug.params, (sum, Leaf('int')))
    assert bindings == {'T': Leaf('int'), 'A': Leaf('int'), 'B': Leaf('float'), 'C': Leaf('String')}
    assert smug.bind(bindings).call(sum, Leaf('int'), Leaf('float'), Leaf('String')) == Leaf('int')
