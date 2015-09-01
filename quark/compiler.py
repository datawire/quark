from .ast import AST
from .parser import Parser

class Root(AST):

    def __init__(self):
        self.parent = None
        self.files = []

    def add(self, file):
        self.files.append(file)

    @property
    def children(self):
        return self.files

class InitParent:

    def __init__(self):
        self.stack = []

    def visit_AST(self, ast):
        if self.stack:
            ast.parent = self.stack[-1]
        self.stack.append(ast)

    def leave_AST(self, ast):
        self.stack.pop()

class InitEnv:

    def visit_Package(self, p):
        p.env = {}

    def visit_Class(self, c):
        c.env = {}

    def visit_Function(self, f):
        f.env = {}

    def visit_AST(self, ast):
        if ast.parent:
            ast.env = ast.parent.env
        else:
            ast.env = {}

class Def:

    def define(self, env, value):
        assert value.name.text not in env
        env[value.name.text] = value

    def visit_Package(self, p):
        self.define(p.parent.env, p)

    def visit_Class(self, c):
        self.define(c.parent.env, c)

    def visit_Function(self, f):
        self.define(f.parent.env, f)

    def visit_Declaration(self, p):
        self.define(p.env, p)

class Use:

    def __init__(self):
        self.unresolved = []

    def lookup(self, v):
        ast = v
        while ast:
            if v.name.text in ast.env:
                return ast.env[v.name.text]
            else:
                ast = ast.parent
        return None

    def visit_Declaration(self, d):
        resolved = self.lookup(d.type)
        self.dfn = resolved
        if resolved is None:
            self.unresolved.append(d.type)

    def visit_Var(self, v):
        resolved = self.lookup(v)
        self.dfn = resolved
        if resolved is None:
            self.unresolved.append(v)

class CompileError(Exception): pass

class Compiler:

    def __init__(self):
        self.root = Root()
        self.parser = Parser()

    def parse(self, text):
        self.root.add(self.parser.parse(text))

    def prep(self):
        self.root.traverse(InitParent())
        self.root.traverse(InitEnv())
        self.root.traverse(Def())
        use = Use()
        self.root.traverse(use)
        if use.unresolved:
            vars = ["%s:%s:%s" % (v.name.line, v.name.column, v.name.text) for v in use.unresolved]
            raise CompileError("unresolved variables: %s" % ", ".join(vars))
