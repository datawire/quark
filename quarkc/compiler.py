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

import os, sys, inspect, urllib, tempfile, logging, cPickle as pickle, shutil
from collections import OrderedDict

from .ast import *
from .exceptions import *
from .parser import Parser, ParseError as GParseError
from .dispatch import overload
from .helpers import *
from .environment import Environment
import docmaker
import docrenderer
import errors
import ast

sys.setrecursionlimit(10000)

BUILTIN = "quark"
BUILTIN_FILE = "%s.q" % BUILTIN
REFLECT = "reflect"

OBJECT = "%s.Object" % BUILTIN
VOID = "%s.void" % BUILTIN

def join(base, rel):
    if rel == BUILTIN_FILE:
        return os.path.join(os.path.dirname(__file__), "lib", BUILTIN_FILE)
    else:
        return urllib.basejoin(base, rel)


class Roots(AST):

    def __init__(self):
        self.roots = OrderedDict()

    def add(self, root):
        self.roots[root.url] = root

    def __getitem__(self, url):
        return self.roots[url]

    def __contains__(self, url):
        return url in self.roots

    def __iter__(self):
        return iter(self.roots.values())

    def sorted(self):
        roots = list(self)
        def compare(x, y):
            if x.url in y.uses:
                return -1
            else:
                return 1
        roots.sort(compare)
        return roots

    @property
    def children(self):
        for r in self.roots.values():
            yield r

class Root(AST):

    def __init__(self, url):
        self.url = url
        self.index = 0
        self.files = []
        self.root = self
        self.parent = None
        self.file = None
        self.package = None
        self.clazz = None
        self.callable = None
        self.id = ""
        self.index = 0
        self.count = 0
        self.env = Environment()
        self.imports = []
        self.included = OrderedDict()
        self.uses = OrderedDict()
        self.line = -1
        self.column = -1

    def add(self, file):
        self.files.append(file)

    @property
    def children(self):
        for f in self.files:
            yield f

def pkg_name(pkg):
    if pkg.package is None:
        return code(pkg.name)
    else:
        return "%s.%s" % (pkg_name(pkg.package), code(pkg.name))

class Crosswire:

    def __init__(self, parent):
        self.root = parent.root
        self.parent = parent
        self.file = parent.file
        self.package = parent.package
        if isinstance(parent, Class):
            self.clazz = parent
        else:
            self.clazz = parent.clazz
        if isinstance(parent, Callable):
            self.callable = parent
        else:
            self.callable = parent.callable

    def name(self, ast):
        if isinstance(ast, (Definition, Param, TypeParam)):
            return ast.name.text
        else:
            return str(ast.index)

    def visit_AST(self, ast):
        ast.root = self.root
        ast.parent = self.parent
        ast.file = self.file
        ast.package = self.package
        ast.clazz = self.clazz
        ast.callable = self.callable
        ast.resolved = None
        ast.coersion = None
        ast.count = 0
        ast.imports = []

        if ast.parent:
            ast.index = ast.parent.count
            ast.parent.count += 1
            ast.env = ast.parent.env

        if ast.parent.parent:
            ast.id = ".".join([ast.parent.id, self.name(ast)])
        else:
            ast.id = self.name(ast)

        self.parent = ast

        if not hasattr(ast, "_marked"):
            ast._marked = True
            ast.line, ast.column = ast.parent.line, ast.parent.column

    def leave_AST(self, ast):
        self.parent = ast.parent

    def visit_Use(self, use):
        self.visit_AST(use)
        qurl = join(use.root.url, use.url)
        use.root.uses[qurl] = use
        use.file.uses[use.url] = use
        use.qualified = qurl

    def visit_Include(self, inc):
        self.visit_AST(inc)
        inc.file.includes[inc.url] = inc

    def visit_File(self, f):
        self.file = f
        self.visit_AST(f)
        f.uses = OrderedDict()
        f.includes = OrderedDict()

    def leave_File(self, f):
        self.leave_AST(f)
        self.file = f.file

    def visit_Package(self, p):
        self.visit_AST(p)
        self.package = p

        name = pkg_name(p)
        if name in p.root.env:
            p.env = p.root.env[name].env
        else:
            p.env = Environment()
            try:
                p.root.env[name] = p
            except Environment.NameCollisionError:
                pass  # This error will be caught and reported in `Def` pass.
        if p.name.text not in p.parent.env:
            try:
                p.parent.env[p.name.text] = p
            except Environment.NameCollisionError:
                pass  # This error will be caught and reported in `Def` pass.

    def leave_Package(self, p):
        self.leave_AST(p)
        self.package = p.package

    def visit_Import(self, i):
        self.visit_AST(i)
        i.parent.imports.append(i)

    def visit_Class(self, c):
        self.visit_AST(c)
        self.clazz = c
        c.env = Environment()

    def leave_Class(self, c):
        self.leave_AST(c)
        self.clazz = c.clazz

    def visit_Callable(self, c):
        self.visit_AST(c)
        self.callable = c
        c.env = Environment()

    def leave_Callable(self, c):
        self.leave_AST(c)
        self.callable = c.callable

class Def:

    def __init__(self):
        self.errors = []

    def define(self, env, node, name=None, is_leaf=True, dup=lambda x: True):
        error = None
        if name is None:
            name = node.name.text
        if name in env:
            if dup(env[name]):
                error = errors.DuplicateDefinition(
                    location=lineinfo(node),
                    id=name,
                    previous_location=lineinfo(env[name]),
                )
        else:
            try:
                env[name] = node
            except env.NameCollisionError:
                if is_leaf:
                    colliding_name = env.colliding_key(name)
                    error = error or errors.NameCollision(
                        id=name,
                        location=lineinfo(node),
                        id2=colliding_name,
                        location2=lineinfo(env[colliding_name]),
                    )
        if is_leaf:
            node.resolved = texpr(node)
        if error is not None:
            self.errors.append(error)

    def visit_Package(self, p):
        self.define(p.parent.env, p, dup=lambda x: False)

    def visit_Class(self, c):
        self.define(c.parent.env, c)
        for p in c.parameters:
            self.define(c.env, p)

    def visit_Function(self, f):
        self.define(f.parent.env, f, dup=lambda x: ((isinstance(x, Function) and x.body) or
                                                    (not isinstance(x, Function))))

    def visit_Method(self, m):
        # we don't put constructors in the namespace
        if m.type:
            self.define(m.parent.env, m)
        self.define(m.env, m.parent, "self")

    def visit_Macro(self, m):
        # we don't put constructors in the namespace
        if m.type:
            self.define(m.parent.env, m)

    def visit_MethodMacro(self, mm):
        self.define(mm.parent.env, mm)
        self.define(mm.env, mm.parent, "self")

    def visit_Declaration(self, d):
        self.define(d.env, d, is_leaf=False)

class TypeExpr(object):

    def __init__(self, type, bindings):
        self.type = type
        self.bindings = bindings

    def assignableFrom(self, other):
        for sup in other.supertypes():
            if self.id == sup.id:
                return True
        return False

    @overload()
    def supertypes(self):
        for sup in self.supertypes(self.type):
            yield sup

    @overload(Class)
    def supertypes(self, cls):
        yield self
        if cls.bases:
            for base in cls.bases:
                for sup in base.resolved.supertypes():
                    yield texpr(sup.type, sup.bindings, self.bindings)
        else:
            sup = cls.root.env[BUILTIN].env["Object"].resolved
            yield texpr(sup.type, sup.bindings, self.bindings)

    @overload(TypeParam)
    def supertypes(self, param):
        # should we check in bindings here and try supertypes?
        yield self
        yield param.root.env[BUILTIN].env["Object"].resolved

    def get(self, attr, errors):
        name = attr.text
        bindings = {}
        for env in self.environments(self.type, bindings):
            if name in env:
                tgt = env[name].resolved
                return texpr(tgt.type, self.bindings, bindings, tgt.bindings)
        errors.append("%s:%s has no such attribute: %s" % (lineinfo(attr), self.type.name, name))
        return None

    @overload(Package)
    def environments(self, pkg, bindings):
        yield pkg.env

    @overload(Class)
    def environments(self, cls, bindings):
        yield cls.env
        if cls.bases:
            for btype in cls.bases:
                base = btype.resolved.type
                bindings.update(btype.resolved.bindings)
                for e in self.environments(base, bindings):
                    yield e
        else:
            yield cls.root.env[BUILTIN].env["Object"].env

    @overload(Call, list)
    def invoke(self, c, errors):
        return self.invoke(self.type, c, errors)

    def check(self, params, call, errors, bindings=None):
        idx = 0
        if len(params) == len(call.args):
            for param in params:
                pexpr = texpr(param.resolved.type, param.resolved.bindings, self.bindings, bindings or {})
                arg = call.args[idx]
                idx += 1
                class FakeType: pass
                ft = FakeType()
                ft.resolved = pexpr
                castify(ft, arg)
                if not isinstance(arg, Null) and arg.resolved and not pexpr.assignableFrom(arg.resolved):
                    dfn = get_field(arg.resolved.type, "__to_%s" % pexpr.type.name, None)
                    if dfn and len(dfn.params) == 0 and pexpr.assignableFrom(dfn.type.resolved):
                        arg.coersion = dfn
                    else:
                        errors.append("%s:type mismatch: expected %s, got %s" %
                                      (lineinfo(arg), pexpr, arg.resolved))
        else:
            errors.append("%s: expected %s args, got %s" %
                          (lineinfo(call), len(params), len(call.args)))

    @overload(Callable)
    def invoke(self, dfn, call, errors):
        self.check(dfn.params, call, errors)
        return texpr(dfn.type.resolved.type, dfn.type.resolved.bindings, self.bindings)

    @overload(Class)
    def invoke(self, cls, call, errors):
        con = constructor(cls)
        bindings = base_bindings(cls)
        if con:
            self.check(con.params, call, errors, bindings)
        else:
            if len(call.args) != 0:
                errors.append("%s: expected 0 args, got %s" % (lineinfo(call), len(call.args)))
        return texpr(cls, self.bindings)

    def assign(self, expr, errors=None):
        if not isinstance(expr, Null) and expr.resolved and not self.assignableFrom(expr.resolved):
            dfn = get_field(expr.resolved.type, "__to_%s" % self.type.name, None)
            if dfn and len(dfn.params) == 0 and self.assignableFrom(dfn.type.resolved):
                expr.coersion = dfn
            else:
                if errors is not None:
                    errors.append("%s:type mismatch: expected %s, got %s" %
                                  (lineinfo(expr), self, expr.resolved))

    @property
    def id(self):
        return self.pprint(self.type)

    @overload(Package)
    def pprint(self, pkg):
        return pkg.id

    def resolve(self, param):
        bindings = {}
        done = set()
        while param in self.bindings:
            done.add(param)
            pexpr = self.bindings[param]
            param = pexpr.type
            bindings.update(pexpr.bindings)
            if param in done:
                break
        return texpr(param, bindings)

    @overload(Class)
    def pprint(self, cls):
        if cls.parameters:
            params = [repr(self.resolve(p)) for p in cls.parameters]
            return "%s<%s>" % (cls.id, ",".join(params))
        else:
            return cls.id

    @overload(Callable)
    def pprint(self, cls):
        return cls.id

    @overload(TypeParam)
    def pprint(self, pkg):
        return pkg.id

    def __repr__(self):
        return self.id

def texpr(type, *bindingses):
    bindings = {}
    for b in bindingses:
        bindings.update(b)
    while type in bindings:
        expr = bindings[type]
        bindings.update(expr.bindings)
        type = expr.type
    return TypeExpr(type, bindings)

class Use(object):

    def __init__(self):
        self.unresolved = []

    @overload(AST, str)
    def lookup(self, node, name, imported=None):
        if imported is None:
            imported = set()
        while node:
            for imp in node.imports:
                if imp.alias and imp.alias.text == name:
                    return self.lookup(imp)

            if name in node.env:
                return node.env[name]
            else:
                for imp in node.imports:
                    key = imp.code()
                    if key in imported: continue
                    imported.add(key)
                    imp_node = self.lookup(imp)

                    if isinstance(imp_node, Package):
                        nd = self.lookup(imp_node, name, imported)
                        if nd: return nd

                node = node.parent
        return None

    @overload(AST)
    def lookup(self, node):
        return self.lookup(node, node.name.text)

    @overload(Type)
    def lookup(self, t):
        type = self.lookup(t.clazz or t.package or t.file or t.root, t.path[0].text)
        return self.lookup_path(type, t.path[1:])

    @overload(Import)
    def lookup(self, imp):
        node = self.lookup(imp.root, imp.path[0].text)
        return self.lookup_path(node, imp.path[1:])

    def lookup_path(self, node, path):
        if node:
            for n in path:
                if n.text in node.env:
                    node = node.env[n.text]
                else:
                    node = None
                    break
        return node

    def leave_Type(self, t):
        type = self.lookup(t)
        bindings = {}
        if type and t.parameters:
            idx = 0
            for p in type.parameters:
                bindings[p] = t.parameters[idx].resolved
                idx += 1
        if type is None:
            t.resolved = None
            self.unresolved.append((t.path[-1], t.path[-1].text))
        else:
            t.resolved = texpr(type.resolved.type, bindings, type.resolved.bindings)

    def leave_Declaration(self, d):
        d.resolved = d.type.resolved

    def visit_Var(self, v):
        v.definition = self.lookup(v)
        if v.definition is None:
            self.unresolved.append((v.name, v.name.text))

    def leaf(self, n, name):
        type = self.lookup(n, name)
        n.resolved = texpr(type)
        if n.resolved is None:
            self.unresolved.append((n, name))

    def visit_Null(self, n):
        self.leaf(n, "Object")

    def visit_Number(self, n):
        if "." in n.text:
            self.leaf(n, "float")
        else:
            self.leaf(n, "int")

    def visit_String(self, n):
        self.leaf(n, "String")

    def visit_List(self, n):
        self.leaf(n, "List")

    def visit_Map(self, n):
        self.leaf(n, "Map")

    def visit_Bool(self, n):
        self.leaf(n, "bool")

    def visit_Import(self, imp):
        imp_node = self.lookup(imp)
        if imp_node is None:
            self.unresolved.append((imp, imp.path[-1].text))


def castify(type, expr):
    if isinstance(expr, Cast):
        if type:
            expr.resolved = type.resolved
        else:
            expr.resolved = texpr(expr.root.env["Object"])
    if type and isinstance(expr, (List, Map)):
        if type.resolved.type.name.text == expr.__class__.__name__:
            expr.resolved = type.resolved

class Resolver(object):

    def __init__(self):
        self.errors = []

    def leave_Super(self, s):
        bt = base_type(s.clazz)
        if bt is None:
            self.errors.append("%s: %s has no base class" % (lineinfo(s), s.clazz.name))
        else:
            s.resolved = texpr(bt.resolved.type)

    def leave_Var(self, v):
        v.resolved = v.definition.resolved

    def leave_Attr(self, a):
        if a.expr.resolved:
            a.resolved = a.expr.resolved.get(a.attr, self.errors)

    def leave_Call(self, c):
        if c.expr.resolved:
            c.resolved = c.expr.resolved.invoke(c, self.errors)

    def leave_Assign(self, a):
        castify(a.lhs, a.rhs)
        if a.lhs.resolved and a.rhs.resolved:
            a.lhs.resolved.assign(a.rhs, self.errors)

    def leave_ExprStmt(self, es):
        castify(None, es.expr)

    def leave_Return(self, r):
        if r.expr is None:
            if r.callable.type is None:
                return
            if r.callable.type.code() != "void":
                self.errors.append("%s: %s is not declared void" %
                                   (lineinfo(r), r.callable.name))
            return

        if not r.callable.type or r.callable.type.code() == VOID:
            if r.expr:
                self.errors.append("%s: %s cannot return a value" % (lineinfo(r), r.callable.name))
            return

        if r.callable.type.resolved:
            castify(r.callable.type, r.expr)
            r.callable.type.resolved.assign(r.expr, self.errors)

    def leave_Declaration(self, d):
        castify(d.type, d.value)
        if d.type.resolved and d.value and d.value.resolved:
            d.type.resolved.assign(d.value, self.errors)

    def leave_List(self, l):
        if l.elements and l.elements[0].resolved:
            element_texp = l.elements[0].resolved
            list_texp = l.resolved
            list_texp.bindings[list_texp.type.parameters[0]] = element_texp

    def leave_Map(self, m):
        if not m.entries: return
        entry = m.entries[0]
        map_texp = m.resolved
        if entry.key.resolved:
            key_texp = entry.key.resolved
            value_texp = entry.value.resolved
            key_param, value_param = map_texp.type.parameters
            if key_texp:
                map_texp.bindings[key_param] = key_texp
            if value_texp:
                map_texp.bindings[value_param] = value_texp

class Check:

    def __init__(self):
        self.errors = []

    def visit_Field(self, f):
        for base in f.clazz.bases:
            if base.resolved.type:
                prev = get_field(base.resolved.type, f, None)
                if prev is not None:
                    self.errors.append("%s: duplicate field '%s', previous definition: %s" %
                                       (lineinfo(f), f.name, lineinfo(prev)))

    def visit_Constructor(self, c):
        cons = base_constructors(c.clazz)
        if not cons: return
        for con in cons:
            if con.params and not has_super(c):
                self.errors.append("%s: superclass constructor has arguments, "
                                   "explicit call to super is required" % lineinfo(c))

    def visit_Super(self, s):
        if (isinstance(s.parent, Attr) or
            (isinstance(s.parent, Call) and s.parent.expr == s)):
            return
        self.errors.append("%s: super can only be used for constructor or method invocation" % lineinfo(s))

    def visit_Callable(self, c):
        if (not isinstance(c, Macro) and c.body and c.type
            and c.type.code() != "void" and not has_return(c)):
            self.errors.append("%s: missing return (%s)" % (lineinfo(c), c.type.code()))

def lineinfo(node):
    trace = getattr(node, "_trace", None)
    stack = [getattr(node, "filename", "<none>")]
    while trace:
        stack.append("%s:%s:" % (inspect.getfile(trace.annotator), trace.annotator.__name__))
        stack.append(trace.text)
        stack.append("<generated>")
        trace = trace.prev
    stack[-1] = stack[-1] + (":%s:%s" % (node.line, node.column))
    return "\n".join(stack)

class SetTrace:

    def __init__(self, node, annotator, text):
        self.node = node
        self.annotator = annotator
        self.text = text

    def visit_AST(self, ast):
        ast._trace = Trace(self.annotator, self.text, getattr(ast, "_trace", None))

class Trace:

    def __init__(self, annotator, text, prev):
        self.annotator = annotator
        self.text = text
        self.prev = prev

class ApplyAnnotators:

    def __init__(self, annotators):
        self.annotators = annotators
        self.modified = False
        self.parser = Parser()

    def visit_AST(self, node):
        if hasattr(node, "annotations"):
            annotations = node.annotations
            done = set()
            for ann in annotations:
                name = ann.name.text
                if name not in done and name in self.annotators:
                    for afun in self.annotators[name]:
                        result = afun(node)
                        if isinstance(result, basestring):
                            text = afun(node)
                            node._replacement = self.parser.rule(node._rule, text)
                        else:
                            node._replacement = result
                            text = result.code()
                        node._replacement.traverse(SetTrace(node._replacement, afun, text))
                        self.modified = True
                    done.add(name)

def delegate(node):
    ann = [a for a in node.annotations if a.name.text == "delegate"][0];
    delegate = ann.arguments[0].code()
    options = [arg.code() for arg in ann.arguments[1:]]
    args = ["\"%s\"" % node.name]
    if len(node.params) == 1:
        args.append(node.params[0].name.code())
    else:
        args.append("[%s]" % ", ".join([p.name.code() for p in node.params]))
    args.append("[%s]" % ", ".join(options))
    if node.type and node.type.code() != "void":
        body = "{ return ?(%s(%s)); }" % (delegate, ", ".join(args))
    else:
        body = "{ %s(%s); }" % (delegate, ", ".join(args))
    node.body = Parser().rule("body", body)
    node.annotations = [a for a in node.annotations if a.name.text != "delegate"]
    return node

class Reflector:

    def __init__(self):
        self.methods = OrderedDict()
        self.classes = []
        self.class_uses = OrderedDict()
        self.metadata = OrderedDict()
        self.entry = None

    def visit_File(self, f):
        if not self.entry and not is_meta(f):
            self.entry = f

    def package(self, pkg):
        if pkg is None:
            return []
        else:
            return self.package(pkg.package) + [pkg.name.text]

    def qtype(self, texp):
        if isinstance(texp.type, TypeParam): return OBJECT
        result = ".".join(self.package(texp.type.package) + [texp.type.name.text])
        if isinstance(texp.type, Class) and texp.type.parameters:
            result += "<%s>" % ",".join([self.qtype(texp.bindings.get(p, TypeExpr(p, {})))
                                         for p in texp.type.parameters])
        return result

    def qname(self, texp):
        if isinstance(texp.type, TypeParam): return OBJECT
        return ".".join(self.package(texp.type.package) + [texp.type.name.text])

    def qparams(self, texp):
        if isinstance(texp.type, Class) and texp.type.parameters:
            return "[%s]" % ", ".join([self.qexpr(texp.bindings.get(p, TypeExpr(p, {}))) for p in texp.type.parameters])
        else:
            return "[]"

    def qexpr(self, texp):
        return '"%s"' % self.qtype(texp)

    def visit_Type(self, type):
        cls = type.resolved.type
        if isinstance(cls, (Primitive, Interface, TypeParam)) or is_abstract(cls):
            if cls.name.text not in ("List", "Map"):
                return
        if cls.parameters:
            if cls not in self.class_uses:
                self.class_uses[cls] = OrderedDict()
            qual = self.qtype(type.resolved)
            clazz = type.clazz
            package = tuple(self.package(type.package))
            if qual not in self.class_uses[cls]:
                self.class_uses[cls][qual] = (type.resolved, clazz, package)

    def fields(self, cls, use_bindings):
        fields = []
        bindings = base_bindings(cls)
        bindings.update(use_bindings)
        for f in get_fields(cls):
            fields.append((self.qtype(texpr(f.resolved.type, bindings, f.resolved.bindings)), f.name.text))
        return fields

    def meths(self, cls, cid, use_bindings):
        if cls.package and cls.package.name.text in (BUILTIN, REFLECT): return []
        methods = []
        bindings = base_bindings(cls)
        bindings.update(use_bindings)
        for m in get_methods(cls, False).values():
            if isinstance(m, Macro): continue
            mid = "%s_%s_Method" % (self.mdname(cid), m.name.text)
            mtype = self.qtype(texpr(m.type.resolved.type, bindings, m.type.resolved.bindings))
            margs = [self.qtype(texpr(p.resolved.type, bindings, p.resolved.bindings))
                     for p in m.params]
            methods.append((mid, self.meth(mid, cid, mtype, m.name.text, margs)))
        return methods

    def meth(self, mid, cid, type, name, params):
        args = ", ".join(['?args[%s]' % i for i in range(len(params))])
        if type == VOID:
            invoke = "        obj.%s(%s);\n        return null;" % (name, args)
        else:
            invoke = "        return obj.%s(%s);" % (name, args)
        return """    class %(mid)s extends reflect.Method {
        %(mid)s() {
            super("%(type)s", "%(name)s", [%(params)s]);
        }
        Object invoke(Object object, List<Object> args) {
            %(cid)s obj = ?object;
%(invoke)s
        }
        String _getClass() { return null; }
        Object _getField(String name) { return null; }
        void _setField(String name, Object value) {}
    }
""" % {"mid": mid,
       "cid": cid,
       "type": type,
       "name": name,
       "params": ", ".join('"%s"' % p for p in params),
       "invoke": invoke}

    def qual(self, cls):
        return ".".join(self.package(cls.package) + [cls.name.text])

    def visit_Class(self, cls):
        if isinstance(cls, (Primitive, Interface)) or is_abstract(cls):
            if (cls.package and cls.package.name.text == BUILTIN and cls.name.text in ("List", "Map") or
                isinstance(cls, Interface)):
                self.classes.append(cls)
            return

        getclass = 'String _getClass() { return "%s"; }' % self.qtype(cls.resolved)

        getter = "Object _getField(String name) {\n"
        setter = "void _setField(String name, Object value) {\n"

        for ftype, fname in self.fields(cls, {}):
            getter += '    if (name == "%s") { return self.%s; }\n' % (fname, fname)
            if not isinstance(get_field(cls, fname).clazz, Interface):
                setter += '    if (name == "%s") { self.%s = ?value; }\n' % (fname, fname)

        getter += '    return null;\n'
        getter += "}\n"
        setter += "}\n"

        self.methods[cls] = (getclass, getter, setter)
        self.classes.append(cls)

    def mdname(self, id):
        for c in ".<,>":
            id = id.replace(c, "_")
        return id

    def clazz(self, cls, id, name, params, nparams, texp):
        mdefs = []
        mids = []
        for mid, mdef in self.meths(cls, id, texp.bindings):
            mdefs.append(mdef)
            mids.append('new %s()' % mid)

        if isinstance(cls, Interface):
            construct = "null"
        else:
            construct = "new %s(%s)" % (id, ", ".join(['?args[%s]' % i for i in range(nparams)]))

        return """%(mdefs)s
    class %(mdname)s extends reflect.Class {

        static reflect.Class singleton = new %(mdname)s();

        %(mdname)s() {
            super("%(id)s");
            self.name = "%(name)s";
            self.parameters = %(parameters)s;
            self.fields = [%(fields)s];
            self.methods = [%(methods)s];
        }

        Object construct(List<Object> args) {
            return %(construct)s;
        }

        String _getClass() { return null; }
        Object _getField(String name) { return null; }
        void _setField(String name, Object value) {}
    }""" % {"id": id,
            "mdname": self.mdname(id),
            "name": name,
            "parameters": params,
            "fields": ", ".join(['new reflect.Field("%s", "%s")' % f for f in self.fields(cls, texp.bindings)]),
            "mdefs": "\n".join(mdefs),
            "methods": ", ".join(mids),
            "construct": construct}

    def leave_Root(self, root):
        mdpkg = mdroot(self.entry)

        self.code = ""
        mdclasses = []

        classes = OrderedDict()
        for cls in self.classes:
            classes[cls] = None
        classes.update(self.class_uses)

        for cls in classes:
            qual = self.qual(cls)
            if cls.parameters:
                clsid = qual + "<%s>" % ",".join([OBJECT]*len(cls.parameters))
                params = "[%s]" % ",".join(['"%s"' % OBJECT]*len(cls.parameters))
            else:
                clsid = qual
                params = "[]"
            cons = constructor(cls)
            nparams = len(cons.params) if cons else 0

            uses = self.class_uses.get(cls, OrderedDict([(clsid,
                                                          (cls.resolved, cls, tuple(self.package(cls.package))))]))

            for clsid, (texp, ucls, pkg) in uses.items():
                if pkg:
                    self.code += "package %s {\n%s\n}\n\n" % (mdpkg,
                                                              self.clazz(cls, clsid, qual, self.qparams(texp),
                                                                         nparams, texp))
                    if not ucls: continue
                    if ucls.package and ucls.package.name.text in (REFLECT, ):
                        continue
                    if ucls not in self.metadata:
                        self.metadata[ucls] = OrderedDict()
                    mdcls = "%s.Root.%s_md" % (mdpkg, self.mdname(clsid))
                    mdclasses.append(self.mdname(clsid))
                    self.metadata[ucls][self.mdname(clsid)] = mdcls

        self.code += """package %s {
    class Root {

        String _getClass() { return null; }
        Object _getField(String name) { return null; }
        void _setField(String name, Object value) {}
""" % mdpkg
        for cls in mdclasses:
            self.code += "        static reflect.Class %s_md = %s.singleton;\n" % (cls, cls)
        self.code += "    }\n}"

ARCHIVE_END = "ARCHIVE_END"

class Compiler(object):

    def __init__(self):
        self.roots = Roots()
        self.root = None
        self.parser = Parser()
        self.annotators = OrderedDict()
        self.annotator("delegate", delegate)
        self.included = set()
        self.log = logging.getLogger("quark.compiler")
        self.entries = OrderedDict()

    def annotator(self, name, annotator):
        if name in self.annotators:
            self.annotators[name].append(annotator)
        else:
            self.annotators[name] = [annotator]

    CACHE = {}

    def parse(self, name, text):
        try:
            self.parser._filename = name
            file = self.parser.parse(text)
        except GParseError, e:
            raise ParseError("%s:%s:%s: %s" % (name, e.line(), e.column(), e))
        imp = Import([Name(BUILTIN)])
        imp.line = -1
        imp.column = -1
        imp._silent = True
        file.definitions.insert(0, imp)
        if not self.root.files and not name.endswith(BUILTIN_FILE):  # First file
            use = ast.Use(BUILTIN_FILE)
            use._silent = True
            file.definitions.insert(0, use)
        while True:
            file.name = name
            file.traverse(Crosswire(self.root))
            aa = ApplyAnnotators(self.annotators)
            file.traverse(aa)
            if aa.modified:
                file = copy(file)
            else:
                break
        self.root.add(file)
        return file

    def urlparse(self, url, top=True, text=None, include=False, recurse=True):
        if os.path.exists(url):
            url = os.path.abspath(url)

        urlc = compiled_quark(url)
        if url in self.CACHE:
            self.log.debug("loading from cache: %s", url)
            root = self.CACHE[url]
            self.roots.add(root)
            if recurse:
                for u in root.uses:
                    assert u in self.CACHE, (url, u, self.CACHE.keys())
                    self.roots.add(self.CACHE[u])
            if not include: self.entries[url] = root.files[0]
            return root.files[0]
        elif recurse and os.path.exists(url) and is_newer(urlc, url, __file__):
            self.log.debug("loading from: %sc", url)
            with open(urlc) as fd:
                try:
                    deps = pickle.load(fd)
                    if is_newer(urlc, *deps):
                        roots = pickle.load(fd)
                        # Check for the end record in case we
                        # encounter a partially written file.
                        end = pickle.load(fd)
                        if end == ARCHIVE_END:
                            for root in roots:
                                self.CACHE[root.url] = root
                                self.roots.add(root)
                            if not include: self.entries[url] = roots[0].files[0]
                            return roots[0].files[0]
                except EOFError:
                    pass

        old = None
        if not include and url not in self.roots:
            old = self.root
            self.root = Root(url)
            self.roots.add(self.root)

        try:
            if text is None:
                try:
                    text = self.read(url)
                except IOError, e:
                    if top:
                        raise CompileError(e)
                    else:
                        raise
            self.log.debug("parsing %s", url)
            file = self.parse(url, text)
            if recurse:
                for u in file.uses.values():
                    qurl = join(url, u.url)
                    self.perform_use(qurl, u)
                    assert qurl in self.CACHE, (url, qurl, self.CACHE.keys())
                for inc in file.includes.values():
                    qurl = join(url, inc.url)
                    if qurl.endswith(".q"):
                        self.perform_quark_include(qurl, inc)
                    else:
                        self.perform_native_include(qurl, inc)
                self.CACHE[url] = self.root
            if not include: self.entries[url] = file
            return file
        finally:
            if old: self.root = old

    def perform_use(self, qurl, use):
        if qurl not in self.roots:
            try:
                self.urlparse(qurl, top=False)
            except IOError:
                raise CompileError("%s: error reading file: %s" % (lineinfo(use), use.url))  # XXX qurl instead?

    def perform_quark_include(self, qurl, inc):
        if qurl not in self.included:
            self.included.add(qurl)
            try:
                self.urlparse(qurl, top=False, include=True)
            except IOError:
                raise CompileError("%s: error reading file: %s" % (lineinfo(inc), inc.url))  # XXX qurl instead?

    def perform_native_include(self, qurl, inc):
        if inc.url not in self.root.included:
            try:
                self.root.included[inc.url] = self.read(qurl)
            except IOError:
                raise CompileError("%s: error reading file: %s" % (lineinfo(inc), inc.url))  # XXX qurl instead?

    def read(self, url):
        self.log.debug("Loading %s", url)
        fd = urllib.urlopen(url)
        try:
            return fd.read()
        finally:
            fd.close()

    def icompile(self, ast):
        def_ = Def()
        ast.traverse(def_)
        if def_.errors:
            raise CompileError("\n".join(map(str, def_.errors)))

        use = Use()
        ast.traverse(use)
        if use.unresolved:
            vars = ["%s: unresolved variable: %s" % (lineinfo(node), name)
                    for node, name in use.unresolved]
            raise CompileError("\n".join(vars))

        res = Resolver()
        ast.traverse(res)
        if res.errors:
            raise CompileError("\n".join(res.errors))

        check = Check()
        ast.traverse(check)
        if check.errors:
            raise CompileError("\n".join(check.errors))

    def reflect(self, root):
        ref = Reflector()
        root.traverse(ref)
#        with open("/tmp/reflector.q", "w") as fd:
#            fd.write(ref.code)
        old = self.root
        self.root = root
        try:
            self.parse("reflector", ref.code)
        finally:
            self.root = old
            # XXX: this seems to cause problems, should investigate
        #self.urlparse("reflector", text=ref.code)
        self.icompile(root.files[-1])
        for cls, methods in ref.methods.items():
            for m in methods:
                method = Parser().rule("method", m)
                cls.definitions.append(method)
                method.traverse(Crosswire(cls))
                self.icompile(method)
        for cls, deps in ref.metadata.items():
            for dep in deps:
                field = Parser().rule("field", "static reflect.Class %s_ref = %s;" % (dep, deps[dep]))
                cls.definitions.append(field)
                field.traverse(Crosswire(cls))
                self.icompile(field)

    def merge(self, env, dep):
        if env == dep: return
        for k in dep:
            if k in env:
                self.merge_one(env[k], dep[k])
            else:
                env[k] = dep[k]

    @overload(Package, Package)
    def merge_one(self, p1, p2):
        self.merge(p1.env, p2.env)

    @overload(AST, AST)
    def merge_one(self, n1, n2):
        raise CompileError("Cannot merge %r @ %s with %r @ %s" % (n1, lineinfo(n1), n2, lineinfo(n2)))

    def trans_roots(self, root):
        result = [root]
        for use in root.uses:
            result.extend(self.trans_roots(self.roots[use]))
        return result

    def deps(self, roots):
        result = OrderedDict()
        for r in roots:
            if not os.path.exists(r.url): continue
            result[r.url] = True
            for f in r.files:
                for url in f.includes:
                    result[join(r.url, url)] = True
        return tuple(result.keys())

    def compile(self):
        self.log.info("Compiling quark code")
        for root in self.roots.sorted():
            if getattr(root, "_compiled", False):
                continue
            for use in root.uses:
                dep = self.roots[use]
                assert getattr(dep, "_compiled", False)
                self.merge(root.env, dep.env)
            self.icompile(root)
            self.reflect(root)
            root._compiled = True

        modified = []
        for url, file in self.entries.items():
            if not os.path.exists(url): continue
            urlc = compiled_quark(url)
            trans_roots = tuple(self.trans_roots(file.root))
            deps = tuple(self.deps(trans_roots))
            if not is_newer(urlc, __file__, *deps):
                self.log.info("Writing %s" % urlc)
                with open(urlc, "write") as fd:
                    pickle.dump(deps, fd, -1)
                    pickle.dump(trans_roots, fd, -1)
                    # Write out an object to mark the archive end so
                    # we can detect partial writes.
                    pickle.dump(ARCHIVE_END, fd, -1)
                modified.append(file.root)
        # We compute the modified flag here so it never gets saved to disk.
        for r in modified:
            r._modified = True

def install(url, *backends):
    c = Compiler()
    c.log.info("Parsing: %s", url)
    c.urlparse(url)
    c.compile()

    for root in c.roots.sorted():
        for backend in backends:
            b = backend()
            b.roots = c.roots
            root.traverse(b)
            b.install()

def compile(url, target, *backends):
    c = Compiler()
    c.log.info("Parsing: %s", url)
    c.urlparse(url)
    c.compile()

    dirs = []

    for root in c.roots.sorted():
        dir = os.path.splitext(os.path.basename(root.url))[0]
        if dir not in dirs:
            dirs.append(dir)
        for backend in backends:
            b = backend()
            b.roots = c.roots
            root.traverse(b)
            out = os.path.join(os.path.join(target, b.ext), dir)
            b.write(out)

    return dirs

def run(url, args, *backends):
    c = Compiler()
    file = c.urlparse(url, recurse=False)
    name, ver = namever(file)
    for backend in backends:
        b = backend()
        tgt = b._install_target(name, ver)
        if tgt is None:
            raise CompileError("Cannot find the target to run. Did you forget to\n\n    quark install %s %s\n" % (b.argswitch, sh_quote(url)))
        b.run(name, ver, args)


def make_docs(url, target):
    # FIXME: Lots of boilderplate here...
    c = Compiler()
    c.log.info("Parsing: %s", url)
    c.urlparse(url)
    c.compile()

    for root in c.roots.sorted():
        dest = os.path.join(target, os.path.splitext(os.path.basename(root.url))[0])
        if os.path.exists(dest):
            shutil.rmtree(dest)
        os.makedirs(dest)
        st = docmaker.make_docs_json(root, os.path.join(dest, "api.json"))
        docrenderer.render(st, dest)
