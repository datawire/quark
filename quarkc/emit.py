from contextlib import contextmanager
from .match import *
from .ir import *

class Duplicate(set):
    __slots__=()
    def __call__(self, item):
        if item in self:
            return False
        else:
            self.add(item)
            return True

def dedupe(seq):
    return filter(Duplicate(), flatten_to_strings(seq))

class File:

    def __init__(self, name):
        self.name = name
        self.header = []
        self.code = ""
        self.footer = []

    def __repr__(self):
        return "\n".join([s for s in ("".join(dedupe(self.header)), self.code, "".join(dedupe(self.footer))) if s]) + ""

class Target(object):

    def __init__(self, parent=None):
        self.parent = parent
        if parent:
            self.depth = parent.depth + 1
        else:
            self.depth = 0
        self.files = {}
        self._current_dfn = None

    @property
    def current_dfn(self):
        if self._current_dfn is None and self.parent is not None:
            self._current_dfn = self.parent.current_dfn
        return self._current_dfn

    @contextmanager
    def descend(self):
        child = self.__class__(self)
        yield child
        assert not child.files

    def indent(self, st=""):
        return "%s%s" % ("  "*self.depth, st)

    def file(self, dfn):
        self._current_dfn = dfn
        name = self.filename(dfn)
        if name not in self.files:
            self.files[name] = File(name)
        return self.files[name]

    @match(Name)
    def nameof(self, name):
        return name.path[-1]

    @match(Name)
    def is_interpackage(self, name):
        return self.current_dfn.name.package != name.package or self.current_dfn.name.path[:-1] != name.path[:-1]

class Java(Target):

    @match(Function)
    def filename(self, fun):
        # XXX this will clash with a Quark class 'Functions' in the same namespace
        return "/".join(fun.name.path[:-1] + ("Functions.java",))

    @match(choice(Class, Interface))
    def filename(self, cls):
        return "/".join(cls.name.path[:-1] + ("%s.java" % cls.name.path[-1], ))

class Python(Target):

    @match(Definition)
    def filename(self, dfn):
        return "/".join(dfn.name.path[:]) + ".py"

class Ruby(Target):

    @match(Definition)
    def filename(self, dfn):
        return "/".join(dfn.name.path) + ".rb"

    def upcase(self, s):
        return s[0:1].capitalize() + s[1:]

class Go(Target):

    @match(Definition)
    def filename(self, dfn):
        return "/".join(dfn.name.path[:1] + ("-".join(p.lower() for p in dfn.name.path[1:]),)) + ".go"

    @match(Name)
    def is_interpackage(self, name):
        return self.current_dfn.name.package != name.package or self.current_dfn.name.path[0] != name.path[0]

    @match(Name)
    def nameof(self, name):
        ident = "_".join(self.upcase(p) for p in name.path[1:])
        if self.is_interpackage(name):
            ident = name.path[0].lower() + "." + ident
        return ident

    def upcase(self, s):
        return s[0:1].capitalize() + s[1:]

def flatten_to_strings(gen_or_str):
    if isinstance(gen_or_str, basestring):
        if gen_or_str:
            yield gen_or_str
    else:
        for item in gen_or_str:
            if item:
                yield item

@match(IR, Target)
def header(nd, target):
    for c in nd.children:
        for h in flatten_to_strings(header(c, target)):
            yield h

@match(IR, Target)
def footer(nd, target):
    for c in nd.children:
        for f in flatten_to_strings(footer(c, target)):
            yield f

@match(basestring, IR, Target, opt(basestring))
def opt_code(glue, nd, target, default=""):
    if nd is None:
        return default
    else:
        return "{glue}{code}".format(
            glue=glue, code=code(nd, target))

## Package

@match(Package, Target)
def emit(pkg, target):
    for d in pkg.definitions:
        f = target.file(d)
        f.header.extend(dedupe(header(d, target)))
        f.code += target.indent(code(d, target))
        f.footer.extend(dedupe(footer(d, target)))

## Function

@match(Definition, Ruby)
def header(dfn, target):
    module = ""
    for p in dfn.name.path[:-1]:
        module += "\n{indent}module {name}".format(
            indent = target.indent(),
            name = target.upcase(p))
        target.depth += 1
    return module

@match(Definition, Java)
def header(dfn, target):
    yield package_of(dfn, target)

@match(Definition, Java)
def package_of(dfn, target):
    return "package {pkg};\n".format(
        pkg = ".".join(dfn.name.path[:-1]))

@match(Function, Java)
def header(dfn, target):
    hdr = "{pkg}\n{fun}".format(
        pkg = package_of(dfn, target),
        fun = target.indent("public class Functions {\n"))
    target.depth += 1;
    return hdr;

@match(Definition, Go)
def header(dfn, target):
    return package_of(dfn, target)

@match(Definition, Go)
def package_of(dfn, target):
    return "package {pkg}".format(
        pkg = dfn.name.path[0].lower())

@match(Function, Java)
def footer(dfn, target):
    target.depth -= 1;
    return target.indent("}");

@match(Definition, Ruby)
def footer(dfn, target):
    module = []
    for p in dfn.name.path[:-1]:
        target.depth -= 1
        module.append("{indent}end".format(
            indent = target.indent()))
    module.append("")
    return "\n".join(module)

@match(Function, Python)
def code(fun, target):
    return "def {name}({params}){body}\n".format(
        name=target.nameof(fun.name),
        params=", ".join(code(p, target) for p in fun.params),
        body=code(fun.body, target)
    )

@match(Function, Java)
def code(fun, target):
    return "public static {type} {name}({params}){body}\n".format(
        type=code(fun.type, target),
        name=target.nameof(fun.name),
        params=", ".join(code(p, target) for p in fun.params),
        body=code(fun.body, target)
    )

@match(Function, Ruby)
def code(fun, target):
    return "def self.{name}({params}){body}\n{end}\n".format(
        name=target.nameof(fun.name),
        params=", ".join(code(p, target) for p in fun.params),
        body=code(fun.body, target),
        end=target.indent("end")
    )

@match(Function, Go)
def code(fun, target):
    return "func {name}({params}) {type}{body}\n".format(
        type=code(fun.type, target),
        name=target.nameof(fun.name),
        params=", ".join(code(p, target) for p in fun.params),
        body=code(fun.body, target)
    )

@match(Type, Java)
def code(type, target):
    return type.name.path[-1]

@match(Type, Go)
def code(type, target):
    return target.nameof(type.name)

## Param

@match(Param, Python)
def code(param, target):
    return param.name

@match(Param, Ruby)
def code(param, target):
    return param.name

@match(Param, Java)
def code(param, target):
    return "{type} {name}".format(
        type=code(param.type, target),
        name=param.name)

@match(Param, Go)
def code(param, target):
    return "{name} {type}".format(
        type=code(param.type, target),
        name=param.name)
## If

@match(If, Target)
def code(if_, target):
    return "if ({predicate}){consequence}{nl}else{alternative}".format(
        predicate=code(if_.predicate, target),
        nl=else_sep(target),
        consequence=code(if_.consequence, target),
        alternative=code(if_.alternative, target)
    )

@match(If, Ruby)
def code(if_, target):
    return "if {predicate}{consequence}{nl}else{alternative}{nl}end".format(
        predicate=code(if_.predicate, target),
        nl=else_sep(target),
        consequence=code(if_.consequence, target),
        alternative=code(if_.alternative, target)
    )

@match(Target)
def else_sep(target):
    return "\n" + target.indent()

@match(Java)
def else_sep(target):
    return " "

## While

@match(While, Target)
def code(wh, target):
    return "while ({predicate}){body}".format(
        predicate=code(wh.predicate, target),
        body=code(wh.body, target)
    )

## Blocks

@match(Block, Python)
def code(block, target):
    with target.descend() as child:
        return ":\n" + ("\n".join([child.indent(code(s, child)) for s in block.statements]) or child.indent("pass"))

@match(Block, Java)
def code(block, target):
    with target.descend() as child:
        result = "\n".join([child.indent(code(s, child)) for s in block.statements])
    if result:
        return " {\n" + result + "\n%s}" % target.indent()
    else:
        return " {}"

@match(Block, Ruby)
def code(block, target):
    with target.descend() as child:
        return "\n" + ("\n".join([child.indent(code(s, child)) for s in block.statements]) or child.indent("nil"))

@match(Block, Go)
def code(block, target):
    with target.descend() as child:
        result = "\n".join([child.indent(code(s, child)) for s in block.statements])
    if result:
        return " {\n" + result + "\n%s}" % target.indent()
    else:
        return " {}"

## Evaluate

@match(Evaluate, Target)
def code(evaluate, target):
    return code(evaluate.expr, target)

## Return

@match(Return, Target)
def code(retr, target):
    return "return {expr}".format(expr=code(retr.expr, target))

## Names

@match(Name, Java)
def code(name, target):
    return ".".join(name.path)

@match(Name, Python)
def header(name, target):
    if target.is_interpackage(name):
        yield "import %s as %s\n" % (".".join(name.path), "%s_%s" % (name.package, "_".join(name.path)))

@match(Name, Go)
def header(name, target):
    if target.is_interpackage(name):
        yield """import "{package}/{toplevel}"\n""".format(
            package = name.package,
            toplevel = name.path[0].lower())

@match(Name, Python)
def code(name, target):
    # need to emit an alias here that has been set up for appropriately in a prior pass, maybe have a header(blah, target) and possibly footer(blah, target) pass that can be invoked around the code(blah, target)
    return "%s_%s" % (name.package, "_".join(name.path))

@match(Name, Ruby)
def code(name, target):
    return ".".join(list(map(target.upcase, name.path[:-1])) + [name.path[-1]])

@match(Name, Go)
def code(name, target):
    return target.nameof(name)

## Variables

@match(Var, Target)
def code(var, target):
    return var.name

@match(Var, Python)
def code(var, target):
    return var.name


@match(Number, Target)
def code(num, target):
    return str(num.value)

## Call

@match(Call, Target)
def code(call, target):
    return "{callable}({args})".format(
        callable=code(call.expr, target),
        args=", ".join([code(a, target) for a in call.args])
    )

## Invoke

@match(Invoke, Target)
def code(invoke, target):
    return "{function}({args})".format(
        function=funcall(invoke.name, target),
        args=", ".join([code(a, target) for a in invoke.args])
    )

@match(Name, Target)
def funcall(name, target):
    return code(name, target)

@match(Name, Java)
def funcall(name, target):
    return ".".join(name.path[:-1] + ("Functions",) + name.path[-1:])

## Send

@match(Send, Target)
def code(send, target):
    return "{object}.{method}({args})".format(
        object=code(send.expr, target),
        method=send.name,
        args=", ".join([code(a, target) for a in send.args])
    )

## Local

@match(Local, choice(Python, Ruby))
def code(local, target):
    return "{name}{initializer}".format(
        name=local.name,
        initializer=opt_code(" = ", local.expr, target))

@match(Local, Java)
def code(local, target):
    return "{type} {name}{initializer}".format(
        name=local.name,
        type=code(local.type, target),
        initializer=opt_code(" = ", local.expr, target))

@match(Local, Go)
def code(local, target):
    return "var {name} {type}{initializer}".format(
        name=local.name,
        type=code(local.type, target),
        initializer=opt_code(" = ", local.expr, target))


## Interface

@match(Interface, Python)
def code(iface, target):
    with target.descend() as child:
        return "class {name}(object){methods}\n".format(
            name = target.nameof(iface.name),
            methods = "\n".join([":"] + map(child.indent, [code(m, child) for m in iface.methods] or ["pass"]))
        )

@match(Interface, Ruby)
def code(iface, target):
    with target.descend() as child:
        return "class {name}\n{methods}".format(
            name = target.nameof(iface.name),
            methods = "\n".join(map(child.indent, [code(m, child) for m in iface.methods]) + [target.indent("end")])
        )

@match(Interface, Java)
def code(iface, target):
    with target.descend() as child:
        return "interface {name} {methods}\n".format(
            name = target.nameof(iface.name),
            methods = "\n".join(["{"] + [child.indent(code(m, child)) for m in iface.methods] + [target.indent("}")])
        )

@match(Interface, Go)
def code(iface, target):
    with target.descend() as child:
        return "type {name} interface {methods}\n".format(
            name = target.nameof(iface.name),
            methods = "\n".join(["{"] + [child.indent(code(m, child)) for m in iface.methods] + [target.indent("}")])
        )
