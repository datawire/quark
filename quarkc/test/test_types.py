import pytest
from quarkc.types import *

# TODO: negative tests?

COMPARISONS = [
    (Atom('a'), Atom('a'), 0),
    (Atom('a'), Atom('b'), -1),
    (Object(Field('a', Atom('A'))), Object(Field('a', Atom('A'))), 0),
    (Object(Field('a', Atom('A'))), Callable(Atom('r'), Field('a', Atom('A'))), 1)
]

@pytest.mark.parametrize("a,b,result", COMPARISONS)
def test_comparisons(a, b, result):
    assert cmp(a, b) == result

GET = [
    (Object(Field('a', Atom('X'))), 'a', Atom('X'))
]

@pytest.mark.parametrize("t,attr,result", GET)
def test_get(t, attr, result):
    assert t.get(attr) == result

BIND = [
    (Callable(Param('T'), Field('a', Param('T'))),
     {'T': Atom('L')},
     Callable(Atom('L'), Field('a', Atom('L')))),
    (Object(Field('get', Callable(Param('T'))),
            Field('set', Callable(Atom('void'), Field('value', Param('T'))))),
     {'T': Atom('int')},
     Object(Field('get', Callable(Atom('int'))),
            Field('set', Callable(Atom('void'), Field('value', Atom('int'))))))
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
     Callable(Atom('int'), Field('a', Atom('int'))),
     {'T': Atom('int')}),
    (Callable(Param('T'), Field('a', Param('T'))),
     Callable(Atom('int'), Field('a', Atom('float'))),
     {'T': Union(Atom('int'), Atom('float'))})
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

    sum = Callable(Atom('int'), Field('a', Atom('int')), Field('b', Atom('float')), Field('c', Atom('String')))

    bindings = zipmatch(smug.params, (sum, Atom('int')))
    assert bindings == {'T': Atom('int'), 'A': Atom('int'), 'B': Atom('float'), 'C': Atom('String')}
    assert smug.bind(bindings).call(sum, Atom('int'), Atom('float'), Atom('String')) == Atom('int')
