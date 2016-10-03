# Copyright 2015 datawire. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""
Quark IR emitter.

Usage:
  quark-ir emit [options] (--go | --java | --python | --ruby) <files>...

Commands:

  emit    Emit target code for the specified quark IR files in the output directory

Options:
  -h --help             Show this screen.
  -v --verbose          Show more detail.

  -o DIR, --output DIR  Target directory for output files. [default: .]

"""

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
        return self.current_dfn.name.package != name.package or self.current_dfn.name.path[:-1] != name.path[:-1]  or isinstance(self.current_dfn, TestFunction)

def backlink(ir, parent):
    if not hasattr(ir, "parent"):
        for c in ir.children:
            backlink(c, ir)
        ir.parent = parent

class Java(Target):

    @match(Function)
    def filename(self, fun):
        # XXX this will clash with a Quark class 'Functions' in the same namespace
        return "/".join(("src", "main", "java") + fun.name.path[:-1] + ("Functions.java",))

    @match(TestFunction)
    def filename(self, fun):
        # XXX this will clash with a Quark class 'Functions' in the same namespace
        return "/".join(("src", "test", "java") + fun.name.path[:-1] + ("Tests.java",))

    @match(choice(Class, Interface))
    def filename(self, cls):
        return "/".join(("src", "main", "java") + cls.name.path[:-1] + ("%s.java" % cls.name.path[-1], ))

class Python(Target):

    @match(Definition)
    def filename(self, dfn):
        for l in range(1,len(dfn.name.path)):
            init = "/".join(dfn.name.path[:l] + ('__init__.py',))
            if init not in self.files:
                self.files[init] = File(init)
        return "/".join(dfn.name.path[:]).lower() + ".py"

    @match(TestFunction)
    def filename(self, dfn):
        return "/".join(dfn.name.path[:-1] + ("test_" + dfn.name.path[-2],)).lower() + ".py"

class Ruby(Target):

    @match(Definition)
    def filename(self, dfn):
        return "/".join(dfn.name.path).lower() + ".rb"

    @match(TestFunction)
    def filename(self, dfn):
        return "/".join(dfn.name.path[:-1] + ("tc_" + dfn.name.path[-2],)).lower() + ".rb"

    def upcase(self, s):
        return s[0:1].capitalize() + s[1:]

class Go(Target):

    @match(Definition)
    def filename(self, dfn):
        return "/".join((dfn.name.package,) + dfn.name.path[:1] + ("-".join(p.lower() for p in dfn.name.path[1:]),)) + ".go"

    @match(TestFunction)
    def filename(self, dfn):
        return "/".join((dfn.name.package,) + dfn.name.path[:1] + ("-".join(p.lower() for p in dfn.name.path[:-1]) + "_test",)) + ".go"

    @match(Name)
    def is_interpackage(self, name):
        return self.current_dfn.name.package != name.package or self.current_dfn.name.path[0]  != name.path[0] or isinstance(self.current_dfn, TestFunction)

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
    backlink(pkg, None)
    for d in pkg.definitions:
        f = target.file(d)
        f.header.extend(dedupe(header(d, target)))
        f.code += target.indent(code(d, target))
        f.footer.extend(dedupe(footer(d, target)))

## Function

@match(Definition, Ruby)
def header(dfn, target):
    for c in dfn.children:
        for h in flatten_to_strings(header(c, target)):
            yield h
    module = ""
    for p in dfn.name.path[:-1]:
        module += "\n{indent}module {name}".format(
            indent = target.indent(),
            name = target.upcase(p))
        target.depth += 1
    yield module

@match(TestFunction, Ruby)
def header(dfn, target):
    for c in dfn.children:
        for h in flatten_to_strings(header(c, target)):
            yield h
    yield 'require "test/unit"\n\n'
    for p in dfn.name.path[:-2]:
        yield target.indent("module {name}\n".format(
            name = target.upcase(p)))
        target.depth += 1
    yield target.indent("class Test{name} < Test::Unit::TestCase\n".format(
        name = target.upcase(dfn.name.path[-2])))
    target.depth += 1

@match(Definition, Java)
def header(dfn, target):
    yield package_of(dfn, target)
    for c in dfn.children:
        for h in flatten_to_strings(header(c, target)):
            yield h

@match(Definition, Java)
def package_of(dfn, target):
    return "package {pkg};\n\n".format(
        pkg = ".".join(dfn.name.path[:-1]))

@match(Function, Java)
def header(dfn, target):
    hdr = "{pkg}\n{fun}".format(
        pkg = package_of(dfn, target),
        fun = target.indent("public class Functions {\n"))
    target.depth += 1
    return hdr;

@match(TestFunction, Java)
def header(dfn, target):
    yield package_of(dfn, target)
    yield "import static org.junit.Assert.assertEquals;\n"
    yield "import org.junit.Test;\n"
    yield "\n"
    yield "public class Tests {\n"
    target.depth += 1

@match(Definition, Go)
def header(dfn, target):
    yield package_of(dfn, target)
    for c in dfn.children:
        for h in flatten_to_strings(header(c, target)):
            yield h

@match(TestFunction, Go)
def header(dfn, target):
    yield package_of(dfn, target)
    yield 'import "testing"\n'
    for c in dfn.children:
        for h in flatten_to_strings(header(c, target)):
            yield h

@match(Definition, Go)
def package_of(dfn, target):
    return "package {pkg}\n\n".format(
        pkg = dfn.name.path[0].lower())

@match(TestFunction, Go)
def package_of(dfn, target):
    return "package {pkg}_test\n\n".format(
        pkg = dfn.name.path[0].lower())

@match(Function, Java)
def footer(dfn, target):
    target.depth -= 1;
    return target.indent("}");

@match(TestFunction, Java)
def footer(dfn, target):
    target.depth -= 1;
    return "}";

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

@match(TestFunction, Python)
def code(fun, target):
    return "def test_{name}(){body}\n\n".format(
        name=target.nameof(fun.name),
        body=code(fun.body, target)
    )

@match(Function, Java)
def code(fun, target):
    return "public static {type} {name}({params}){body}\n\n".format(
        type=code(fun.type, target),
        name=target.nameof(fun.name),
        params=", ".join(code(p, target) for p in fun.params),
        body=code(fun.body, target)
    )

@match(TestFunction, Java)
def code(fun, target):
    return "@Test\n{indent}public void {name}(){body}\n\n".format(
        indent=target.indent(""),
        name=target.nameof(fun.name),
        body=code(fun.body, target)
    )

@match(Function, Ruby)
def code(fun, target):
    return "def self.{name}({params}){body}\n{end}\n\n".format(
        name=target.nameof(fun.name),
        params=", ".join(code(p, target) for p in fun.params),
        body=code(fun.body, target),
        end=target.indent("end")
    )

@match(TestFunction, Ruby)
def code(fun, target):
    return "def test_{name}{body}\n{end}\n\n".format(
        name=target.nameof(fun.name),
        body=code(fun.body, target),
        end=target.indent("end")
    )

@match(Function, Go)
def code(fun, target):
    return "func {name}({params}) {type}{body}\n\n".format(
        type=code(fun.type, target),
        name=target.nameof(fun.name),
        params=", ".join(code(p, target) for p in fun.params),
        body=code(fun.body, target)
    )

@match(TestFunction, Go)
def code(fun, target):
    return "func TestQ_{name}(t__ *testing.T) {body}\n\n".format(
        name=target.upcase(fun.name.path[-1]),
        body=code(fun.body, target)
    )

@match(Type, Java)
def code(type, target):
    return ".".join(type.name.path)

@match(ClassType, Go)
def code(type, target):
    return "*" + target.nameof(type.name)

@match(Type, Go)
def code(type, target):
    return target.nameof(type.name)

## Void

@match(Void, Target)
def code(void, target):
    return ""

@match(Void, Java)
def code(void, target):
    return "void"

## Int

@match(Int, Target)
def code(intt, target):
    return ""

@match(Int, choice(Java, Go))
def code(intt, target):
    # XXX: int or long ?
    return "int"

## Float

@match(Float, Target)
def code(floatt, target):
    return ""

@match(Float, Java)
def code(floatt, target):
    return "double"

@match(Float, Go)
def code(floatt, target):
    return "float64"

## String

@match(String, Target)
def code(floatt, target):
    return ""

@match(String, Java)
def code(floatt, target):
    return "String"

@match(String, Go)
def code(floatt, target):
    return "string"

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

@match(choice(Java, Go))
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
        return "\n".join(
            [":"] +
            map(child.indent,
                [code(s, child) for s in block.statements] or ["pass"]))

@match(Block, Java)
def code(block, target):
    with target.descend() as child:
        return "\n".join(
            ["{"] +
            [child.indent(code(s, child)) for s in block.statements] +
            [target.indent("}")])

@match(Block, Ruby)
def code(block, target):
    with target.descend() as child:
        return "\n".join(
            [""] +
            map(child.indent,
                [code(s, child) for s in block.statements] or ["nil"]))

@match(Block, Go)
def code(block, target):
    with target.descend() as child:
        return "\n".join(
            ["{"] +
            [child.indent(code(s, child)) for s in block.statements] +
            [target.indent("}")])

## Statement semicolons

@match(Target)
def semi(target):
    return ""

@match(Java)
def semi(target):
    return ";"

## Evaluate

@match(Evaluate, Target)
def code(evaluate, target):
    return "{expr}{semi}".format(expr=code(evaluate.expr, target), semi=semi(target))

## Return

@match(Return, Target)
def code(retr, target):
    return "return {expr}{semi}".format(expr=code(retr.expr, target), semi=semi(target))

## Names

@match(Name, Java)
def code(name, target):
    return ".".join(name.path)

@match(choice(Type, Invoke), Python)
def header(thing, target):
    name = thing.name
    if target.is_interpackage(name):
        yield "import {module} as {alias}\n".format(
            module=".".join(name.path),
            alias="%s_%s" % (name.package, "_".join(name.path)))
    for c in thing.children:
        for h in flatten_to_strings(header(c, target)):
            yield h
    

@match(choice(Type, Invoke), Ruby)
def header(thing, target):
    name = thing.name
    if target.is_interpackage(name):
        yield "require '{package}/{module}'\n".format(
            package=name.package,
            module="/".join(name.path[:-1]))

@match(choice(Type, Invoke), Go)
def header(thing, target):
    name = thing.name
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

## This

@match(This, Target)
def code(this, target):
    return "this"

@match(This, choice(Ruby, Python))
def code(var, target):
    return "self"

## Null

@match(Null, Target)
def code(this, target):
    return "null"

@match(Null, choice(Ruby, Go))
def code(var, target):
    return "nil"

@match(Null, Python)
def code(var, target):
    return "None"

## Numbers

@match(choice(IntLit, FloatLit), Target)
def code(lit, target):
    # XXX: probably good enough
    return str(lit.value)

## StringLit

@match(StringLit, Target)
def code(lit, target):
    # XXX: this is potenitally good enough
    return '"' + lit.value.encode('unicode_escape').replace('"','\\"') + '"'

## StringLit

@match(BoolLit, choice(Ruby, Java, Go))
def code(lit, target):
    return lit.value and "true" or "false"

@match(BoolLit, Python)
def code(lit, target):
    return str(lit.value)

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

@match(Name, Python)
def funcall(name, target):
    if target.is_interpackage(name):
        return code(name, target) + "." + name.path[-1]
    else:
        return name.path[-1]

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

@match(Send, Go)
def code(send, target):
    return "{object}.{method}({args})".format(
        object=code(send.expr, target),
        method=target.upcase(send.name),
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
    return "{type} {name}{initializer};".format(
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
        return "public interface {name} {methods}\n".format(
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

## Construct

@match(Construct, Go)
def code(cons, target):
    return "{name}__Construct({args})".format(
        name=code(cons.name, target),
        args = ", ".join(code(a, target) for a in cons.args)
    )

@match(Construct, Python)
def code(cons, target):
    return "{name}({args})".format(
        name=code(cons.name, target),
        args = ", ".join(code(a, target) for a in cons.args)
    )

@match(Construct, Ruby)
def code(cons, target):
    return "{name}.new({args})".format(
        name=code(cons.name, target),
        args = ", ".join(code(a, target) for a in cons.args)
    )

@match(Construct, Java)
def code(cons, target):
    return "new {name}({args})".format(
        name=code(cons.name, target),
        args = ", ".join(code(a, target) for a in cons.args)
    )


## Message

@match(Message, Python)
def code(fun, target):
    return "def {name}({params}): pass\n".format(
        name=fun.name,
        params=", ".join(code(p, target) for p in fun.params)
    )

@match(Message, Java)
def code(fun, target):
    return "public {type} {name}({params});\n".format(
        type=code(fun.type, target),
        name=fun.name,
        params=", ".join(code(p, target) for p in fun.params)
    )

@match(Message, Ruby)
def code(fun, target):
    return "def {name}({params})\n{end}\n".format(
        name=fun.name,
        params=", ".join(code(p, target) for p in fun.params),
        end=target.indent("end")
    )

@match(Message, Go)
def code(fun, target):
    return "{name}({params}) {type}\n".format(
        type=code(fun.type, target),
        name=target.upcase(fun.name),
        params=", ".join(code(p, target) for p in fun.params)
    )

## Get

@match(Get, Go)
def code(fget, target):
    return "{target}.{field}".format(
        target=code(fget.expr, target),
        field=target.upcase(fget.name))

@match(Get, choice(Python, Java))
def code(fget, target):
    return "{target}.{field}".format(
        target=code(fget.expr, target),
        field=fget.name)

@match(Get, Ruby)
def code(fget, target):
    return "{target}.{field}".format(
        target=code(fget.expr, target),
        field=fget.name)

## Set

@match(Set, Go)
def code(fset, target):
    return "{target}.{field} = {value}".format(
        target=code(fset.expr, target),
        field=target.upcase(fset.name),
        value=code(fset.value, target))

@match(Set, choice(Python, Java))
def code(fset, target):
    return "{target}.{field} = {value}".format(
        target=code(fset.expr, target),
        field=fset.name,
        value=code(fset.value, target))

@match(Set, Ruby)
def code(fset, target):
    return "{target}.{field} = {value}".format(
        target=code(fset.expr, target),
        field=fset.name,
        value=code(fset.value, target))

## Class

@match(Class, Python)
def code(clazz, target):
    with target.descend() as child:
        return "class {name}(object){methods}\n".format(
            name = target.nameof(clazz.name),
            methods = "\n".join([":"] + map(child.indent, [code(m, child) for m in clazz.constructors + clazz.methods] or ["pass"]))
        )

@match(Class, Ruby)
def code(clazz, target):
    with target.descend() as child:
        return "class {name}\n{methods}".format(
            name = target.nameof(clazz.name),
            methods = "\n".join(map(child.indent, [code(m, child) for m in clazz.fields + clazz.constructors + clazz.methods]) + [target.indent("end")])
        )

@match(Class, Java)
def code(clazz, target):
    with target.descend() as child:
        return "public class {name} {methods}\n".format(
            name = target.nameof(clazz.name),
            methods = "\n".join(["{"] + [child.indent(code(m, child)) for m in clazz.fields + clazz.constructors + clazz.methods] + [target.indent("}")])
        )

@match(Class, Go)
def code(clazz, target):
    with target.descend() as child:
        return "type {name} struct {fields}\n{methods}\n".format(
            name = target.nameof(clazz.name),
            fields = "\n".join(["{"] + [child.indent(code(m, child)) for m in clazz.fields] + [target.indent("}")]),
            methods = "\n\n".join([""] + [code(m, child) for m in clazz.constructors + clazz.methods])
        )

## Field

@match(Field, Java)
def code(field, target):
    return "public {type} {name};\n".format(
        type=code(field.type, target),
        name=field.name,
    )

@match(Field, Ruby)
def code(field, target):
    return "attr_accessor :{name}\n".format(
        name=field.name,
    )

@match(Field, Go)
def code(field, target):
    return "{name} {type}\n".format(
        name=target.upcase(field.name),
        type=code(field.type, target),
    )

## Method

@match(Method, Python)
def code(method, target):
    return "def {name}({params}){body}\n".format(
        name=method.name,
        params=", ".join(code(p, target) for p in method.params),
        body=code(method.body, target)
    )

@match(Method, Java)
def code(method, target):
    return "public {type} {name}({params}){body}\n".format(
        type=code(method.type, target),
        name=method.name,
        params=", ".join(code(p, target) for p in method.params),
        body=code(method.body, target)
    )

@match(Method, Ruby)
def code(method, target):
    return "def {name}({params}){body}\n{end}\n".format(
        name=method.name,
        params=", ".join(code(p, target) for p in method.params),
        body=code(method.body, target),
        end=target.indent("end")
    )

@match(Method, Go)
def code(method, target):
    return "func (this *{clazz}) {name}({params}) {type}{body}\n".format(
        clazz=target.nameof(method.parent.name),
        type=code(method.type, target),
        name=target.upcase(method.name),
        params=", ".join(code(p, target) for p in method.params),
        body=code(method.body, target)
    )


## Constructor

@match(Constructor, Python)
def code(constructor, target):
    return "def __init__({params}){body}\n".format(
        name=constructor.name,
        params=", ".join(["self"] + [code(p, target) for p in constructor.params]),
        body=code(constructor.body, target)
    )

@match(Constructor, Java)
def code(constructor, target):
    return "public {name}({params}){body}\n".format(
        name=constructor.name,
        params=", ".join(code(p, target) for p in constructor.params),
        body=code(constructor.body, target)
    )

@match(Constructor, Ruby)
def code(constructor, target):
    return "def initialize({params}){body}\n{end}\n".format(
        params=", ".join(code(p, target) for p in constructor.params),
        body=code(constructor.body, target),
        end=target.indent("end")
    )

@match(Constructor, Go)
def code(constructor, target):
    with target.descend() as child:
        return "func {name}__Construct({params}) *{clazz} {alloc}({clazz})\n{body}{ret}".format(
            clazz=target.nameof(constructor.parent.name),
            name=code(constructor.type.name, target),
            params=", ".join(code(p, target) for p in constructor.params),
            alloc="{\n" + target.indent("this := new"),
            body=target.indent(code(constructor.body, child) + "\n"),
            ret=target.indent("return this\n") + "}\n"
        )

## AssertEqual

@match(AssertEqual, Go)
def code(assrt, target):
    with target.descend() as child:
        return "\n".join(
            ["{",
             child.indent("expected, actual := ({expected}), ({actual})".format(
                 expected = code(assrt.expected, child),
                 actual = code(assrt.actual, child))),
             child.indent("if (expected != actual) { t__.Error(expected, actual) }"),
             target.indent("}")
            ])

@match(AssertEqual, Python)
def code(assrt, target):
    return "assert ({expected}) == ({actual})".format(
                 expected = code(assrt.expected, target),
                 actual = code(assrt.actual, target))

@match(AssertEqual, Java)
def code(assrt, target):
    return "assertEquals(({expected}), ({actual}));".format(
                 expected = code(assrt.expected, target),
                 actual = code(assrt.actual, target))

@match(AssertEqual, Ruby)
def code(assrt, target):
    return "assert_equal(({expected}), ({actual}))".format(
                 expected = code(assrt.expected, target),
                 actual = code(assrt.actual, target))


import py.path

def writeout(files, output, verbose):
    o = py.path.local(output)
    for name, content in files.items():
        f = o.join(name)
        f.write(content, ensure=True)
        if verbose:
            print "wrote %s" % f

from docopt import docopt

def main(args):
    backends = {"--go" : Go,
                "--java" : Java,
                "--ruby" : Ruby,
                "--python" : Python,
            }
    for fn in args["<files>"]:
        with open(fn) as f:
            ir = IR.load(f.read(), source=fn)
        for opt, backend in backends.items():
            if not args.get(opt, False):
                continue
            b = backend()
            emit(ir, b)
            writeout(b.files, output=args["--output"], verbose=args["--verbose"])
 

def call_main():
    exit(main(docopt(__doc__)))
