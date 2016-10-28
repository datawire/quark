from contextlib import contextmanager
from functools import total_ordering
from collections import deque
from itertools import groupby

from .match import match, lazy, ntuple, many, opt, choice


class _Indent(object):
    def __init__(self):
        self.indent = 0

    @contextmanager
    def __call__(self):
        self.indent += 1
        yield self.indent
        self.indent -= 1

# should pull in stuff from types base class here... would enable
# comparisons and stuff for testing, should possibly use pyrsistent or
# something like that for this stuff, although I want to see how
# pattern matching would work

class _Tree(object):

    def __init__(self):
        assert False, "%s is abstract base class" % self.__class__

    def __ne__(self, other):
        return not self.__eq__(other)

    __hash__ = None

    @property
    def children(self):
        assert False, "%s must implement children" % self.__class__

    __INDENT = _Indent()

    def repr(self, *args, **kwargs):
        with self.__INDENT() as i:
            sargs = [repr(a) for a in args]
            sargs += ["%s=%r" % (k, v) for k, v in kwargs.items() if v is not None]
            if sum(map(len, sargs)) > 60:
                indent = " " * i * 2
                first = "\n" + indent
                sep = ",\n" + indent
            else:
                first = ""
                sep = ", "
            return "%s(%s%s)" % (self.__class__.__name__, first, sep.join(sargs))



@match(many(type))
def isa(*types):
    """ Generate a predicate for the specifed types """
    return lambda x: isinstance(x, types)


def split(coll, *pred):
    """split coll into tuples that match pred[0] to pred[-1] and one extra
       for all the rest.unless the last predicate is None
    """
    assert pred, "Need at least one predicate"
    if pred[-1] is not None:
        pred = pred + (lambda x: True,)
    else:
        pred = pred[:-1]
    ret = tuple([] for p in pred)
    for el in coll:
        for i,p in enumerate(pred):
            if p(el):
                ret[i].append(el)
                break
        else:
            assert False, "element does not match any of the predicates and wildcard not allowed"
    return tuple(map(tuple,ret))

class Query(object):
    @match(_Tree)
    def __init__(self, tree):
        self.parent_memory = {}
        self.parent_memory[id(tree)] = None
        pending = deque([tree])
        while pending:
            node = pending.popleft()
            for c in node.children:
                assert isinstance(c, _Tree), repr(c)
                self.parent_memory[id(c)] = node
                pending.append(c)

    @match(_Tree)
    def parent(self, node):
        assert id(node) in self.parent_memory
        return self._parent(node)

    @match(_Tree)
    def _parent(self, node):
        return self.parent_memory.get(id(node))

    @match(_Tree)
    def ancestors(self, node):
        parent = self.parent(node)
        while parent is not None:
            yield parent
            parent = self._parent(parent)

    @match(_Tree, (many(type, min=1),))
    def ancestors(self, node, types, ):
        parent = self.parent(node)
        while parent is not None:
            if isinstance(parent, types):
                yield parent
            parent = self._parent(parent)

    @match(_Tree, (many(type, min=1),))
    def ancestors_or_self(self, node, types):
        parent = node
        while parent is not None:
            if isinstance(parent, types):
                yield parent
            parent = self._parent(parent)

    @match(_Tree, (many(type, min=1),))
    def ancestor(self, node, types):
        for ancestor in self.ancestors(node, types):
            return ancestor
        assert False, "No ancestor of type (%s) for node %r" % (", ".join(t.__name__ for t in types), node)

def walk_dfs(tree):
    pending = deque([tree])
    while pending:
        node = pending.popleft()
        yield node
        pending.extendleft(reversed(list(node.children)))

def walk_bfs(tree):
    pending = deque([tree])
    while pending:
        node = pending.popleft()
        yield node
        pending.extend(node.children)

