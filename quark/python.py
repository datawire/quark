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
from .dispatch import dispatch
from collections import OrderedDict

# XXX: danger!!! circular import reference hack
import backend
from java import *

class PythonDefinitionRenderer(DefinitionRenderer):

    def __init__(self):
        self.namer = SubstitutionNamer({"List": "list", "Map": "dict"})
        self.stmtr = PythonStatementRenderer(self.namer)

    def match_Macro(self, m):
        return ""

    def match_Primitive(self, p):
        return ""

    def match_Package(self, p):
        return ""

    def match_Class(self, c):
        name = c.name.match(self.namer)
        body = "\n".join([d.match(self) for d in c.definitions])
        doc = self.doc(c.annotations)
        return "%sclass %s:%s" % (doc, name, indent(body))

    def match_Function(self, fun):
        doc = self.doc(fun.annotations)
        if fun.type:
            name = fun.name.match(self.namer)
        else:
            name = "__init__"
        params = [p.match(self) for p in fun.params]
        if isinstance(fun, Method):
            params = ["self"] + params
        body = fun.body.match(self.stmtr) if fun.body else "assert False"
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

    def match_Block(self, b):
        stmts = "\n".join([s.match(self) for s in b.statements])
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


class PythonExprRenderer(ExprRenderer):

    @property
    def lang(self):
        return "py"

    @dispatch(AST)
    def var(self, dfn, v):
        return v.match(self.namer)

    @dispatch(Class)
    def invoke(self, cls, expr, args):
        return "%s(%s)" % (expr.match(self), ", ".join(args))

class Python(backend.Backend):

    def __init__(self):
        backend.Backend.__init__(self, "py")
        self.dfnr = PythonDefinitionRenderer()
        self.imports = "import os, sys\n\n"

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

    def visit_Package(self, pkg):
        content = "\n".join([d.match(self.dfnr) for d in pkg.definitions])
        pname = self.dfnr.namer.package(pkg)
        self.files["%s/__init__.py" % pname.replace(".", "/")] = self.imports + content

    def visit_File(self, file):
        content = "\n".join([d.match(self.dfnr) for d in file.definitions])
        if content.strip() != "":
            self.files["%s.py" % os.path.splitext(file.name)[0]] = self.imports + content

    def visit_Primitive(self, p):
        pass
