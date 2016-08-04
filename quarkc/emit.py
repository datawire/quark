from .dispatch import dispatch
from .ir import *

class File:

    def __init__(self, name):
        self.name = name
        self.header = ""
        self.code = ""
        self.footer = ""

    def __repr__(self):
        return "\n".join([s for s in (self.header, self.code, self.footer) if s])

class Target(object):

    def __init__(self, parent=None):
        self.parent = parent
        if parent:
            self.depth = parent.depth + 1
        else:
            self.depth = 0
        self.files = {}

    def descend(self):
        return self.__class__(self)

    def indent(self, st=""):
        return "%s%s" % ("  "*self.depth, st)

    def file(self, dfn):
        name = self.filename(dfn)
        if name not in self.files:
            self.files[name] = File(name)
        return self.files[name]

class Java(Target):

    @overload(Function)
    def filename(self, fun):
        return "/".join(fun.name.path[:-1], "Functions.java")

    @overload(Class)
    def filename(self, cls):
        return "/".join(cls.name.path[:-1], "%s.java" % cls.name.path[-1])

class Python(Target):

    @overload(Definition)
    def filename(self, dfn):
        return "/".join(dfn.name.path[:-1])

@dispatch(IR, Target)
def header(nd, target):
    return "".join([header(c, target) for c in nd.children])

@dispatch(IR, Target)
def footer(nd, target):
    return "".join([footer(c, target) for c in nd.children])

## Package

@dispatch(Package, Target)
def emit(pkg, target):
    for d in pkg.definitions:
        f = target.file(d)
        f.header += header(d, target)
        f.code += code(d, target)
        f.footer += footer(d, target)

## Function

@dispatch(Function, Python)
def code(fun, target):
    return "def {name}({params}){body}\n".format(
        name=fun.name.path[-1],
        params=", ".join(code(p, target) for p in fun.params),
        body=code(fun.body, target)
    )

## Param

@dispatch(Param, Python)
def code(param, target):
    return param.name

## If

@dispatch(If, Target)
def code(if_, target):
    return "if ({predicate}){consequence}{nl}else{alternative}".format(
        predicate=code(if_.predicate, target),
        nl="\n" + target.indent(),
        consequence=code(if_.consequence, target),
        alternative=code(if_.alternative, target)
    )

## While

@dispatch(While, Target)
def code(wh, target):
    return "while ({predicate}){body}".format(
        predicate=code(wh.predicate, target),
        body=code(wh.body, target)
    )

## Blocks

@dispatch(Block, Python)
def code(block, target):
    child = target.descend()
    return ":\n" + ("\n".join([child.indent(code(s, child)) for s in block.statements]) or child.indent("pass"))

@dispatch(Block, Java)
def code(block, target):
    child = target.descend()
    result = "\n".join([child.indent(code(s, child)) for s in block.statements])
    if result:
        return " {\n" + result + "\n%s}" % target.indent()
    else:
        return " {}"

## Evaluate

@dispatch(Evaluate, Target)
def code(evaluate, target):
    return code(evaluate.expr, target)

## Return

@dispatch(Return, Target)
def code(retr, target):
    return "return {expr}".format(expr=code(retr.expr, target))

## Names

@dispatch(Name, Java)
def code(name, target):
    return ".".join(name.path)

@dispatch(Name, Python)
def header(name, target):
    return "import %s as %s\n" % (".".join(name.path), "%s_%s" % (name.package, "_".join(name.path)))

@dispatch(Name, Python)
def code(name, target):
    # need to emit an alias here that has been set up for appropriately in a prior pass, maybe have a header(blah, target) and possibly footer(blah, target) pass that can be invoked around the code(blah, target)
    return "%s_%s" % (name.package, "_".join(name.path))

## Variables

@dispatch(Var, Target)
def code(var, target):
    return var.name

## Call

@dispatch(Call, Target)
def code(call, target):
    return "{callable}({args})".format(
        callable=code(call.expr, target),
        args=", ".join([code(a, target) for a in call.args])
    )

## Invoke

@dispatch(Invoke, Target)
def code(invoke, target):
    return "{function}({args})".format(
        function=code(invoke.name, target),
        args=", ".join([code(a, target) for a in invoke.args])
    )

## Send

@dispatch(Send, Target)
def code(send, target):
    return "{object}.{method}({args})".format(
        object=code(send.expr, target),
        method=send.name,
        args=", ".join([code(a, target) for a in send.args])
    )
