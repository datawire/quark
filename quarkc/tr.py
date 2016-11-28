##
from textwrap import dedent
from match import match, many, lazy, choice, opt
from .tree import _Tree, multiline

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

class BoxComment(Comment):
    @match(basestring)
    def __init__(self, box):
        self.comment = dedent(box)

    def __repr__(self):
        return self.repr(multiline(self.comment))

def flattened(stmts):
    return sum((s if isinstance(s, tuple) else (s,) for s in stmts), ())

def many_tuple(x):
    return many(choice(x, (many(x),)))

class Block(TR):
    @match(many_tuple(Statement), opt(basestring))
    def __init__(self, *stmts, **kwargs):
        self.extra_close = kwargs.pop("extra_close", "")
        assert not kwargs, "Unexpected kwargs %s" % kwargs
        self.stmts = flattened(stmts)

    @match(many_tuple(Statement))
    def add(self, *stmts):
        self.stmts += flattened(stmts)
        return self

    @match(many_tuple(Statement))
    def push(self, *stmts):
        self.stmts = flattened(stmts) + self.stmts
        return self

    @property
    def children(self):
        for stmt in self.stmts:
            yield stmt

    def __repr__(self):
        return self.repr(*self.stmts)

class File(TR):
    @match(basestring, many_tuple(Statement))
    def __init__(self, filename, *stmts):
        self.filename = filename
        self.outer_block = Block()
        self.inner_block = self.outer_block
        self.add(*stmts)

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

class Box(Statement):
    @match(basestring)
    def __init__(self, box):
        self.box = dedent(box)

    def __repr__(self):
        return self.repr(multiline(self.box))

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
