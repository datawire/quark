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

from .ast import Method

class Backend(object):

    def __init__(self):
        self.files = {}

class Java(Backend):

    def __init__(self):
        Backend.__init__(self)
        self.classr = ClassRenderer()
        self.functions = []

    def visit_Class(self, c):
        self.files[c.name.text + ".java"] = c.apply(self.classr)

    def visit_Function(self, f):
        if not isinstance(f, Method):
            self.functions.append(f)

    def leave_Root(self, r):
        if self.functions:
            cr = ClassRenderer()
            functions = []
            for f in self.functions:
                functions.append(f.apply(cr))
                if f.name.text == "main":
                    functions.append("public static void main(String[] args) {\n    main();\n}")
            self.files["Functions.java"] = "public class Functions {%s}" % \
                                           indent("\n".join(functions))

    def visit_Primitive(self, p):
        pass

    def visit_Interface(self, i):
        pass

def indent(st, level=4):
    if st:
        spaces = " "*level
        return ("\n" + st).replace("\n", "\n%s" % spaces) + "\n"
    else:
        return ""

class NameRenderer(object):

    def Name(self, n):
        return n.text

    def Type(self, t):
        return t.name.apply(self)

    def Var(self, v):
        return v.name.apply(self)

class SubstitutionNamer(NameRenderer):

    def __init__(self, env):
        self.env = env

    def Name(self, n):
        if n.text in self.env:
            return self.env[n.text]
        else:
            return n.text

class ExprRenderer(object):

    def __init__(self, namer):
        self.namer = namer

    def Number(self, n):
        return n.text

    def String(self, s):
        return s.text

    def Call(self, c):
        type = c.expr.resolved
        return type.apply(Invoker(c, self.namer))

    def Attr(self, a):
        return "(%s).%s" % (a.expr.apply(self), a.attr)

    def Var(self, v):
        return v.apply(self.namer)

    def Native(self, n):
        return "".join([c.apply(self) for c in n.children])

    def Fixed(self, f):
        return f.text

class Invoker(object):

    def __init__(self, call, namer):
        self.call = call
        self.namer = namer

    @property
    def expr(self):
        return self.call.expr.apply(ExprRenderer(self.namer))

    @property
    def args(self):
        return [a.apply(ExprRenderer(self.namer)) for a in self.call.args]

    def Class(self, c):
        return "new %s(%s)" % (self.expr, ", ".join(self.args))

    def Function(self, f):
        return "%s(%s)" % (self.expr, ", ".join(self.args))

    @property
    def self_(self):
        return self.call.expr.expr.apply(ExprRenderer(self.namer))

    def Method(self, m):
        return "(%s).%s(%s)" % (self.self_, m.name, ", ".join(self.args))

    def Macro(self, m):
        # macros are evaluated at compile time, so we don't use expr
        env = {}
        idx = 0
        args = self.args
        for p in m.params:
            env[p.name.text] = args[idx]
            idx += 1
        return m.body.apply(ExprRenderer(SubstitutionNamer(env)))

    def MethodMacro(self, mm):
        # for method macros we use expr to access self
        env = {"self": self.self_}
        idx = 0
        args = self.args
        for p in mm.params:
            env[p.name.text] = args[idx]
            idx += 1
        return mm.body.apply(ExprRenderer(SubstitutionNamer(env)))

class ClassRenderer(object):

    def __init__(self):
        self.namer = NameRenderer()
        self.exprr = ExprRenderer(self.namer)

    def Class(self, c):
        name = c.name.apply(self.namer)
        body = "\n".join([d.apply(self) for d in c.definitions])
        return "public class %s {%s}" % (name, indent(body))

    def Block(self, b):
        return "\n".join([s.apply(self) for s in b.statements])

    def Function(self, m):
        type = m.type.apply(self.namer)
        name = m.name.apply(self.namer)
        params = ", ".join([p.apply(self) for p in m.params])
        body = m.body.apply(self)
        if isinstance(m, Method):
            mods = "public"
        else:
            mods = "public static"
        return "%s %s %s(%s) {%s}" % (mods, type, name, params, indent(body))

    def MethodMacro(self, mm):
        return ""

    def Declaration(self, d):
        type = d.type.apply(self.namer)
        name = d.name.apply(self.namer)
        if d.value:
            value = d.value.apply(self.exprr)
            return "%s %s = %s" % (type, name, value)
        else:
            return "%s %s" % (type, name)

    def Return(self, r):
        return "return %s;" % r.expr.apply(self.exprr)

    def Local(self, stmt):
        return "%s;" % stmt.declaration.apply(self)

    def ExprStmt(self, stmt):
        return "%s;" % stmt.expr.apply(self.exprr)

    def Assign(self, a):
        return "%s = %s;" % (a.lhs.apply(self), a.rhs.apply(self.exprr))

    def Var(self, v):
        return v.apply(self.namer)

    def If(self, i):
        result = "if (%s) {%s}" % (i.predicate.apply(self.exprr),
                                   indent(i.consequence.apply(self)))
        if i.alternative:
            result += " else {%s}" % indent(i.alternative.apply(self))
        return result
