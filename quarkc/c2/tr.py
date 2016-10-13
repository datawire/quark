##
from match import match, many, lazy, choice
from .ir import _Tree

class TR(_Tree):
    @match()
    def __init__(self):
        assert False, "%s must implement init" % self.__class__.__name__

class Statement(TR):
    pass

class Comment(Statement):
    @match(basestring)
    def __init__(self, comment):
        self.comment = comment

    def __repr__(self):
        return self.repr(self.comment)

def flattened(stmts):
    return sum((s if isinstance(s, tuple) else (s,) for s in stmts), ())

def many_tuple(x):
    return many(choice(x, (many(x),)))

class Block(TR):
    @match(many_tuple(Statement))
    def __init__(self, *stmts):
        self.stmts = flattened(stmts)

    @match(many_tuple(Statement))
    def add(self, *stmts):
        self.stmts += flattened(stmts)

    @property
    def children(self):
        for stmt in self.stmts:
            yield stmt

    def __repr__(self):
        return self.repr(*self.stmts)

class File(TR):
    @match(basestring)
    def __init__(self, filename):
        self.filename = filename
        self.outer_block = Block()
        self.inner_block = self.outer_block

    @match(many_tuple(Statement))
    def add(self, *stmts):
        self.inner_block.add(*stmts)

    @match(lazy("Compound"), Block)
    def push(self, stmt, block):
        assert block in list(stmt.children)
        self.add(stmt)
        self.inner_block = block

    @property
    def children(self):
        yield self.outer_block

    def __repr__(self):
        return self.repr(self.outer_block)

class Simple(Statement):
    @match(basestring)
    def __init__(self, stmt):
        self.stmt = stmt

    def __repr__(self):
        return self.repr(self.stmt)

class Import(Simple):
    pass

class Compound(Statement):
    @match(many(basestring, Block))
    def __init__(self, *comps):
           self.comps = comps

    @property
    def children(self):
        for block in self.comps[1::2]:
            yield block

    def __repr__(self):
        return self.repr(*self.comps)
