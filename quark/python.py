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

import os
from .ast import *
from .dispatch import overload
from collections import OrderedDict

# XXX: danger!!! circular import reference hack
import backend
from java import *

class FieldRenderer(object):

    def __init__(self, namer, exprr):
        self.namer = namer
        self.exprr = exprr

    def match_Field(self, field):
        name = field.name.match(self.namer)
        if field.value:
            return "self.%s = %s" % (name, field.value.match(self.exprr))
        else:
            return "self.%s = None" % name

class PythonNamer(SubstitutionNamer):

    def __init__(self):
        SubstitutionNamer.__init__(self, {"List": "_List", "Map": "_Map", "print": "print_"})

    def match_Type(self, t):
        if len(t.path) > 1:
            root = t.path[0].match(self)
            t.file.imports[root] = True
        return ".".join([p.match(self) for p in t.path])

    def get(self, name):
        return self.env.get(name, name.replace("-", "_"))

class PythonDefinitionRenderer(DefinitionRenderer):

    def __init__(self):
        self.namer = PythonNamer()
        self.stmtr = PythonStatementRenderer(self.namer)
        self.fieldr = FieldRenderer(self.namer, self.stmtr.exprr)

    def doc(self, annotations):
        return DefinitionRenderer.doc(self, annotations, head='"""', prefix="", tail='"""')

    def match_Macro(self, m):
        return ""

    def match_Primitive(self, p):
        return ""

    def match_Package(self, p):
        if isinstance(p.parent, Package):
            p.parent.imports[p.name.match(self.namer)] = True
        return ""

    def match_Class(self, c):
        name = c.name.match(self.namer)
        base = c.base.match(self.namer) if c.base else ""
        fields = "\n".join([f.match(self.fieldr) for f in c.definitions if isinstance(f, Field)])
        if base:
            fields = "%s._init(self)\n%s" % (base, fields)
        extras = []
        extras.append("def _init(self):%s" % (indent(fields) or " pass"))
        if not c.base and not self.constructors(c):
            extras.append("def __init__(self): self._init()")
        body = indent("\n".join(extras + [d.match(self) for d in c.definitions]))
        bases = "(%s)" % base if base else ""
        doc = self.doc(c.annotations)
        return "%sclass %s%s:%s" % (doc, name, bases, body or " pass")

    def match_Function(self, fun):
        doc = self.doc(fun.annotations)
        if fun.type:
            name = fun.name.match(self.namer)
            init = None
        else:
            name = "__init__"
            init = None if fun.parent.base else ["self._init()"]
        params = [p.match(self) for p in fun.params]
        if isinstance(fun, Method):
            params = ["self"] + params
        body = fun.body.match(self.stmtr, header=init) if fun.body else ": assert False"
        return "%s\ndef %s(%s)%s" % (doc, name, ", ".join(params), body)

    def match_Field(self, f):
        return ""

class PythonStatementRenderer(StatementRenderer):

    def __init__(self, namer):
        self.namer = namer
        self.exprr = PythonExprRenderer(self.namer)

    def match_Declaration(self, d):
        name = d.name.match(self.namer)
        if d.value:
            return "%s = %s" % (name, d.value.match(self.exprr))
        else:
            # XXX: will probably need to adjust this to deal with
            #      different declaration cases in python
            return name

    def match_Block(self, b, header=None):
        header = header or []
        stmts = "\n".join(header + [s.match(self) for s in b.statements])
        if stmts:
            return ":%s" % indent(stmts)
        else:
            return ": pass"

    def match_If(self, i):
        result = "if (%s)%s" % (i.predicate.match(self.exprr),
                                 i.consequence.match(self))
        if i.alternative:
            result += "else%s" % i.alternative.match(self)
        return result

    def match_Assign(self, ass):
        return "%s = %s" % (ass.lhs.match(self.exprr), ass.rhs.match(self.exprr))

    def match_Return(self, r):
        return "return %s;" % r.expr.match(self.exprr)

class PythonExprRenderer(ExprRenderer):

    @property
    def lang(self):
        return "py"

    @overload(AST)
    def var(self, dfn, v):
        if isinstance(v.definition, Field):
            return "self.%s" % v.match(self.namer)
        else:
            name = v.match(self.namer)
            if isinstance(v.definition, Package):
                v.file.imports[name] = True
            return name

    @overload(AST)
    def get(self, cls, attr):
        expr = attr.expr
        attr_name = attr.attr.text
        return "(%s).%s" % (expr.match(self), attr_name)

    @overload(Class)
    def invoke(self, cls, expr, args):
        return "%s(%s)" % (expr.match(self), ", ".join(args))

    def match_List(self, l):
        return "_List([%s])" % ", ".join([e.match(self) for e in l.elements])

    def match_Null(self, n):
        return "None"

class Python(backend.Backend):

    def __init__(self):
        backend.Backend.__init__(self, "py")
        self.dfnr = PythonDefinitionRenderer()
        self.header = """import os, sys

_Map = dict
class _List(list):
    def __repr__(self):
        return "[%s]" % ", ".join([str(e) for e in self])

def _println(obj):
    if obj is None:
        sys.stdout.write("null\\n")
    else:
        sys.stdout.write("%s\\n" % obj)

"""

    def write(self, target):
        src = target
        if not os.path.exists(src):
            os.makedirs(src)
        for name, content in self.files.items():
            path = os.path.join(src, name)
            dir = os.path.dirname(path)
            if not os.path.exists(dir):
                os.makedirs(dir)
            open(path, "wb").write(content)
            print "wrote", path

    def imports(self, packages):
        result = "\n".join(["import %s" % pkg for pkg in packages.keys()])
        if result: result += "\n\n"
        return result

    def visit_Package(self, pkg):
        pkg.imports = OrderedDict()
        content = "\n".join([d.match(self.dfnr) for d in pkg.definitions])
        pname = self.dfnr.namer.package(pkg)
        fname = "%s/__init__.py" % pname.replace(".", "/")
        if fname in self.files:
            self.files[fname] += "\n\n" + self.imports(pkg.imports) + content
        else:
            self.files[fname] = self.header + self.imports(pkg.imports) + content

    def visit_File(self, file):
        file.imports = OrderedDict()
        content = "\n".join([d.match(self.dfnr) for d in file.definitions])
        if content.strip() != "":
            fname = os.path.splitext(os.path.basename(file.name))[0]
            self.files["%s.py" % self.dfnr.namer.get(fname)] = \
                self.header + self.imports(file.imports) + content

    def visit_Primitive(self, p):
        pass
