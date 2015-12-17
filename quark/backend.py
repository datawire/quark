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

import os, types, java, python, javascript
from collections import OrderedDict
from .ast import *
from .compiler import TypeExpr
from .dispatch import *
from .helpers import *

class Backend(object):

    def __init__(self, ext, gen):
        self.ext = ext
        self.gen = gen
        self.files = OrderedDict()
        self._imports = OrderedDict()
        self.current_file = None
        self.current_package = None
        self.packages = []
        self.definitions = []
        self.names = []
        self.bindings = None
        self.rootname = None

    def visit_Class(self, cls):
        self.definitions.append(cls)

    def visit_Primitive(self, p):
        pass

    def visit_Function(self, f):
        if not isinstance(f, Method):
            self.definitions.append(f)

    def visit_Package(self, p):
        self.packages.append(p)
        self.definitions.append(p)

    def leave_Root(self, r):
        roots = [p.name.text for p in self.packages if p.package is None]
        if len(roots) > 1:
            roots.sort()
            roots += ["common"]
        elif not roots:
            for d in self.definitions:
                if isinstance(d, Function) and d.name.text == "main":
                    roots = [self.gen.name(self.fname(d)), "lib"]
                    break
            else:
                # XXX: first file is builtin, last file is reflector
                roots = [self.gen.name(self.fname(r.files[1]))]
        else:
            roots += ["lib"]
        self.rootname = "_".join(roots)

        for d in self.definitions:
            fname = self.file(d)
            if fname is None:
                continue
            self.current_file = fname
            self.current_package = d.package
            if fname not in self._imports:
                self._imports[fname] = OrderedDict()
            if fname not in self.files:
                self.files[fname] = self.make_file(d)
            else:
                self.files[fname] += "\n"
            dfn_code = self.definition(d)
            if dfn_code and d.package is None and d.file.name.endswith("builtin.q"):
                self.files[fname] += self.gen.comment("BEGIN_BUILTIN") + "\n"
                self.files[fname] += dfn_code
                self.files[fname] += "\n" + self.gen.comment("END_BUILTIN")
            else:
                self.files[fname] += dfn_code

        for name in self.files:
            code = self.files[name]
            imports = [self.gen.import_(pkg, org)
                       for (pkg, org) in self._imports[name].keys()]
            code.head += "\n".join(filter(lambda x: x is not None, imports))
            if imports: code.head += "\n\n"
            content = str(code)
            if content[-1:] != "\n": content += "\n"
            self.files[name] = content

    def add_import(self, obj):
        imports = self._imports[self.current_file]
        pkg = tuple(self.package(obj))
        if self.current_package:
            org = tuple(self.package(self.current_package))
        else:
            org = (self.rootname,)
        if pkg != org:
            imports[(pkg, org)] = True
        return list(self.qualify(pkg, org))

    @overload(Class)
    def file(self, cls):
        return self.gen.class_file(self.package(cls), self.name(cls.name), self.fname(cls))

    @overload(Function)
    def file(self, fun):
        return self.gen.function_file(self.package(fun), self.name(fun.name), self.fname(fun))

    @overload(Package)
    def file(self, pkg):
        return self.gen.package_file(self.package(pkg.package), self.name(pkg.name), self.fname(pkg))

    def fname(self, obj):
        return os.path.splitext(os.path.basename(obj.file.name))[0]

    @overload(Class)
    def make_file(self, cls):
        return self.gen.make_class_file(self.package(cls), self.name(cls.name))

    @overload(Function)
    def make_file(self, fun):
        return self.gen.make_function_file(self.package(fun), self.name(fun.name))

    @overload(Package)
    def make_file(self, pkg):
        return self.gen.make_package_file(self.package(pkg.package), self.name(pkg.name))

    def write(self, target):
        if not os.path.exists(target):
            os.makedirs(target)
        name, version = namever(self.packages)
        packages = OrderedDict()
        for pkg in self.packages:
            lines = []
            readme(pkg, lines)
            packages[tuple(self.package(pkg))] = "\n".join(lines)
        files = self.gen.package(name, version, packages, self.files)
        for name, content in files.items():
            path = os.path.join(target, name)
            dir = os.path.dirname(path)
            if not os.path.exists(dir):
                os.makedirs(dir)
            open(path, "wb").write(content)
            print "quark (compile): wrote", path

    @overload(Package)
    def definition(self, pkg):
        self.current_package = pkg
        for d in pkg.definitions:
            if isinstance(d, Package):
                self.add_import(d)
        return "" # self.doc(pkg)

    @overload(Function)
    def definition(self, fun):
        if fun.body is None: return ""
        if fun.package is None and fun.name.text == "main":
            fname = self.gen.name(self.fname(fun))
            old = self.current_file
            self.current_file = fname + ".%s" % self.ext
            self._imports[self.current_file] = OrderedDict()
            self.files[self.current_file] = self.gen.main(fname, self.rootname)
            self.current_file = old

        return self.gen.function(self.doc(fun),
                                 self.type(fun.type),
                                 self.name(fun.name),
                                 [self.param(p) for p in fun.params],
                                 self.block(fun.body))

    @overload(Class)
    def definition(self, cls):
        clazz = self.name(cls.name)
        parameters = [self.name(p.name) for p in cls.parameters]
        base = self.type(base_type(cls))
        interfaces = [self.type(t) for t in cls.bases
                      if isinstance(t.resolved.type, (Interface, Primitive))]

        fields = []
        methods = []
        constructors = []

        defaulted, self.bindings = get_defaulted_methods(cls)
        for d in cls.definitions + defaulted.values():
            if isinstance(d, Macro): continue
            doc = self.doc(d)
            if isinstance(d, Field):
                fields.append(self.gen.field(doc,
                                             self.type(d.type),
                                             self.name(d.name),
                                             self.expr(d.value)))
            elif d.type:
                if d.body:
                    methods.append(self.gen.method(doc,
                                                   clazz,
                                                   self.type(d.type),
                                                   self.name(d.name),
                                                   [self.param(p) for p in d.params],
                                                   self.block(d.body)))
                else:
                    methods.append(self.gen.abstract_method(doc,
                                                            clazz,
                                                            self.type(d.type),
                                                            self.name(d.name),
                                                            [self.param(p) for p in d.params]))
            else:
                if base and not has_super(d):
                    header = [self.gen.expr_stmt(self.gen.invoke_super(clazz,
                                                                       self.name(base_type(cls).resolved.type.name),
                                                                       []))]
                elif not base:
                    finit = self.gen.field_init()
                    if finit:
                        header = [finit]
                    else:
                        header = None
                else:
                    header = None
                constructors.append(self.gen.constructor(doc,
                                                         clazz,
                                                         [self.param(p) for p in d.params],
                                                         self.block(d.body, header)))

        if not constructors:
            constructors = self.default_constructors(cls)

        return self.gen.clazz(self.doc(cls), is_abstract(cls), clazz, parameters, base,
                              interfaces, fields, constructors, methods)

    @overload(Interface)
    def definition(self, iface):
        name = self.name(iface.name)
        parameters = [self.name(p.name) for p in iface.parameters]
        bases = [self.type(t) for t in iface.bases]

        methods = []

        for d in iface.definitions:
            if isinstance(d, Method):
                methods.append(self.gen.interface_method(self.doc(d),
                                                         name,
                                                         self.type(d.type),
                                                         self.name(d.name),
                                                         [self.param(p) for p in d.params],
                                                         self.block(d.body)))

        return self.gen.interface(self.doc(iface), name, parameters, bases,
                                  methods)

    def default_constructors(self, cls):
        name = self.name(cls.name)
        btype = base_type(cls)
        base = btype.resolved.type if btype else None
        cons = base_constructors(cls)
        result = []
        for con in cons:
            params = [self.param(p) for p in con.params]
            args = [self.name(p.name) for p in con.params]
            stmt = self.gen.expr_stmt(self.gen.invoke_super(name, self.name(base.name), args))
            result.append(self.gen.constructor("", name, params, self.gen.block([stmt])))

        if result:
            return result
        elif base:
            body = self.gen.block([self.gen.expr_stmt(self.gen.invoke_super(name, self.name(base.name), []))])
            result.append(self.gen.constructor("", name, [], body))
        else:
            result.append(self.gen.default_constructor(name))

        return result

    def doc(self, obj):
        return self.gen.doc(doc(obj))

    def push(self, env):
        self.names.append(env)

    def pop(self):
        self.names.pop()

    def name(self, n):
        if self.names:
            env = self.names[-1]
            if n.text in env:
                return env[n.text]
        return self.gen.name(n.text)

    def package(self, node):
        if node is None: return []
        if isinstance(node, Package):
            me = self.name(node.name)
            if node.package:
                return self.package(node.package) + [me]
            else:
                return [me]
        elif node.package:
            return self.package(node.package)
        else:
            return [self.rootname]

    @overload(Type)
    def type(self, t):
        return self.type(t.resolved)

    @overload(TypeExpr)
    def type(self, texpr):
        return self.type(texpr.type, texpr.bindings)

    @overload(Class, dict)
    def type(self, cls, bindings):
        mapping = None
        for a in cls.annotations:
            if a.name.text == "mapping":
                mapping = a
                break
        if mapping:
            path = []
            name = self.expr(mapping.arguments[0])
        else:
            pkg = self.package(cls)
            path = self.add_import(cls)
            name = self.name(cls.name)

        if cls.parameters:
            params = [self.type(bindings[p]) for p in cls.parameters]
        else:
            params = []

        return self.gen.type(path, name, params)

    def qualify(self, package, origin):
        return self.gen.qualify(package, origin)

    @overload(TypeParam)
    def type(self, tparam, bindings):
        if tparam in bindings:
            return self.type(bindings[tparam])
        elif self.bindings and tparam in self.bindings:
            return self.type(self.bindings[tparam])
        else:
            return self.name(tparam.name)

    @overload(types.NoneType)
    def type(self, n):
        return None

    def param(self, p):
        return self.gen.param(self.type(p.type),
                              self.name(p.name),
                              self.expr(p.value))

    def block(self, b, header=None):
        if b is None:
            return header
        else:
            return self.gen.block((header or []) + [self.statement(s) for s in b.statements])

    @overload(Local)
    def statement(self, s):
        return self.gen.local(self.type(s.declaration.type),
                              self.name(s.declaration.name),
                              self.maybe_cast(s.declaration.type, s.declaration.value))

    @overload(ExprStmt)
    def statement(self, s):
        return self.gen.expr_stmt(self.expr(s.expr))

    @overload(Assign)
    def statement(self, ass):
        return self.gen.assign(self.expr(ass.lhs), self.maybe_cast(ass.lhs, ass.rhs))

    @overload(Return)
    def statement(self, ret):
        return self.gen.return_(self.maybe_cast(ret.callable.type, ret.expr))

    @overload(If)
    def statement(self, iff):
        return self.gen.if_(self.expr(iff.predicate),
                            self.block(iff.consequence),
                            self.block(iff.alternative))

    @overload(While)
    def statement(self, wh):
        return self.gen.while_(self.expr(wh.condition), self.block(wh.body))

    @overload(Break)
    def statement(self, brk):
        return self.gen.break_()

    @overload(Continue)
    def statement(self, cnt):
        return self.gen.continue_()

    @overload(Var)
    def expr(self, v):
        return self.var(v.definition, v)

    @overload(Call)
    def expr(self, c):
        type = c.expr.resolved.type
        return self.invoke(type, c.expr, [self.coerce(a) for a in c.args])

    @overload(String)
    def expr(self, s):
        return self.gen.string(s)

    @overload(Number)
    def expr(self, n):
        return self.gen.number(n)

    @overload(Bool)
    def expr(self, b):
        return self.gen.bool_(b)

    @overload(List)
    def expr(self, l):
        return self.gen.list([self.expr(e) for e in l.elements])

    @overload(Map)
    def expr(self, m):
        return self.gen.map([(self.expr(e.key), self.expr(e.value)) for e in m.entries])

    @overload(Null)
    def expr(self, n):
        return self.gen.null()

    @overload(Native)
    def expr(self, n):
        return "".join([self.expr(c) for c in n.cases])

    @overload(NativeCase)
    def expr(self, nc):
        if nc.name in (None, self.ext):
            return "".join([self.expr(c) for c in nc.children])
        else:
            return ""

    @overload(Fixed)
    def expr(self, f):
        return f.text

    @overload(Attr)
    def expr(self, a):
        type = a.expr.resolved.type
        return self.get(type, a.resolved.type, a.expr, a.attr)

    @overload(Type)
    def expr(self, t):
        return self.type(t)

    @overload(Cast)
    def expr(self, c):
        return self.maybe_cast(c, c.expr)

    @overload(types.NoneType)
    def expr(self, n):
        return None

    @overload(Param)
    def var(self, _, v):
        return self.gen.local_ref(self.name(v.name))

    @overload(Declaration)
    def var(self, _, v):
        return self.gen.local_ref(self.name(v.name))

    @overload(Class)
    def var(self, _, v):
        return self.gen.class_ref(self.name(v.name))

    @overload(Method)
    def var(self, _, v):
        return self.gen.method_ref(self.name(v.name))

    @overload(Field)
    def var(self, _, v):
        return self.gen.field_ref(self.name(v.name))

    @overload(Class, Class)
    def get(self, cls, type, expr, attr):
        return self.gen.get_field(self.expr(expr), self.name(attr))

    @overload(Class, TypeParam)
    def get(self, cls, type, expr, attr):
        return self.gen.get_field(self.expr(expr), self.name(attr))

    @overload(Class, Method)
    def get(self, cls, type, expr, attr):
        return self.gen.get_method(self.expr(expr), self.name(attr))

    @overload(Package, Package)
    def get(self, pkg, type, expr, attr):
        return self.gen.get_package(self.expr(expr), self.name(attr))

    @overload(Package, Function)
    def get(self, pkg, type, expr, attr):
        return self.gen.get_function(self.expr(expr), self.name(attr))

    @overload(Function)
    def invoke(self, func, expr, args):
        path = self.add_import(func)
        return self.gen.invoke_function(path, self.name(func.name), args)

    @overload(Method, Attr)
    def invoke(self, method, expr, args):
        if isinstance(expr.expr, Super):
            return self.gen.invoke_super_method(self.name(expr.clazz.name),
                                                self.name(expr.expr.resolved.type.name),
                                                self.name(method.name),
                                                args)
        else:
            return self.gen.invoke_method(self.expr(expr.expr), self.name(method.name), args)

    @overload(Method, Var)
    def invoke(self, method, var, args):
        return self.gen.invoke_method_implicit(self.name(method.name), args)

    @overload(Class)
    def invoke(self, cls, expr, args):
        cons = constructors(cls)
        con = cons[0] if cons else None
        if isinstance(con, Macro):
            return self.apply_macro(con, expr, args)
        else:
            return self.gen.construct(self.type(expr.resolved), args)

    @overload(Class, Super)
    def invoke(self, cls, sup, args):
        return self.gen.invoke_super(self.name(sup.clazz.name), self.name(cls.name), args)

    @overload(Macro)
    def invoke(self, macro, expr, args):
        return self.apply_macro(macro, expr, args)

    @overload(Expression)
    def coerce(self, expr):
        if expr.coersion:
            if isinstance(expr.coersion, Macro):
                class FakeExpr: pass
                fake = FakeExpr()
                fake.expr = expr
                return self.apply_macro(expr.coersion, fake, ())
            else:
                return self.gen.invoke_method(self.expr(expr), self.name(expr.coersion.name), [])
        else:
            return self.expr(expr)

    def apply_macro(self, macro, expr, args):
        env = {}
        if macro.clazz and macro.type:
            # for method macros we use expr to access self
            env["self"] = self.expr(expr.expr)
        idx = 0
        for p in macro.params:
            env[p.name.text] = args[idx]
            idx += 1
        self.push(env)
        try:
            result = self.expr(macro.body)
            return result
        finally:
            self.pop()

    def maybe_cast(self, type, expr):
        if expr is None: return None
        if expr.coersion:
            return self.coerce(expr)
        if type.resolved.assignableFrom(expr.resolved):
            return self.expr(expr)
        else:
            return self.gen.cast(self.type(type.resolved), self.expr(expr))

class Java(Backend):

    def __init__(self):
        Backend.__init__(self, "java", java)

class Python(Backend):

    def __init__(self):
        Backend.__init__(self, "py", python)

class JavaScript(Backend):

    def __init__(self):
        Backend.__init__(self, "js", javascript)
