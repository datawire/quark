##
from match import match, many, lazy
from . import ir

class TR(ir._Tree):
    @match()
    def __init__(self):
        assert False, "%s must implement init" % self.__class__.__name__

class Statement(TR):
    pass

class Block(TR):
    @match(many(Statement))
    def __init__(self, *stmts):
        self.stmts = stmts

    @match(many(Statement))
    def add(self, *stmts):
        self.stmts += stmts

    @property
    def children(self):
        for stmt in self.stmts:
            yield stmt

    def __repr__(self):
        return self.repr(*self.stmts)

class Module(TR):
    @match((many(basestring),))
    def __init__(self, name):
        self.definitions = []
        self.block = Block()

    @property
    def children(self):
        yield block

    def __repr__(self):
        return self.repr(self.modules, self.block)

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
