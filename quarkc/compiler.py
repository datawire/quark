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

from __future__ import absolute_import

import os, sys, urllib, logging, cPickle as pickle, shutil
from collections import OrderedDict

try:  # py3
    from shlex import quote as sh_quote
except ImportError:  # py2
    from pipes import quote as sh_quote

from parsimonious import ParseError as GParseError

from .ast import (
    AST, Class, Callable, Definition, Param, TypeParam, Function, Call,
    Package, Null, Type, Import, Cast, List, Map, Attr, Macro, Name,
    Use as AstUse, code, copy, Interface, Include, CompilerVersionSpec,
)
from .exceptions import CompileError, ParseError
from .parser import (
    Parser,
    parse_strict_compiler_version_spec,
)
from .dispatch import overload
from .helpers import (
    lineinfo, base_bindings, get_field, constructor, base_type, base_constructors,
    has_super, has_return, is_newer, compiled_quark, namever, check_deprecated,
    CompileWarning
)
from .environment import Environment
from . import docmaker
from . import docrenderer
from . import errors
from .versioning import (
    compiler_version_spec_messages,
    version_spec_string_messages,
)
from .messages import Warning, issue_all

sys.setrecursionlimit(10000)

from .constants import (BUILTIN, BUILTIN_FILE, VOID)

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

    def dfs(self, root, result, visiting):
        if root in visiting:
            raise CompileError("circular use dependency detected: %s" % tuple(visiting))
        visiting.add(root)
        try:
            for use in root.uses:
                dep = self.roots[use]
                if dep not in result:
                    self.dfs(dep, result, visiting)
            if root not in result:
                result.append(root)
        finally:
            visiting.discard(root)

    def sorted(self):
        result = []
        visiting = set()
        for root in self:
            self.dfs(root, result, visiting)
        return result

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
        i.parent.imports.insert(0, i)

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

    def __init__(self, errors=None):
        if errors is None: errors = []
        self.errors = errors

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

    def visit_Constructor(self, m):
        self.check_constructor_name(m)
        # we don't put constructors in the namespace
        self.define(m.env, m.parent, "self")

    def visit_ConstructorMacro(self, m):
        self.check_constructor_name(m)
        # we don't put constructors in the namespace

    def check_constructor_name(self, m):
        if m.name.text != m.parent.name.text:
            self.errors.append(CompileWarning(m, "constructor name '%s' does not match class name '%s'. Missing return type?" % (
                m.name.text, m.parent.name.text)))

    def visit_Method(self, m):
        self.define(m.parent.env, m)
        self.define(m.env, m.parent, "self")

    def visit_Macro(self, m):
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

    @overload(AST)
    def supertypes(self, ast_node):
        return iter([])

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
                pexpr.assign(arg, errors)
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
        dfn = self._assign(expr, errors)
        if dfn:
            expr.coersion = dfn

    def _assign(self, expr, errors=None):
        if not isinstance(expr, Null) and expr.resolved and not self.assignableFrom(expr.resolved):
            dfn = get_field(expr.resolved.type, "__to_%s" % self.type.name, None)
            if dfn and len(dfn.params) == 0 and self.assignableFrom(dfn.type.resolved):
                check_deprecated(dfn, expr, errors)
                return dfn
            else:
                if errors is not None:
                    errors.append("%s:type mismatch: expected %s, got %s" %
                                  (lineinfo(expr), self, expr.resolved))
        return None

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

    def __init__(self, errors=None):
        if errors is None: errors = []
        self.errors = errors
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
            if len(t.parameters) != len(type.parameters):
                if len(t.parameters) > len(type.parameters):
                    ne = "many"
                else:
                    ne = "few"
                self.errors.append(
                    "%s: too %s template parameters to %s<%s>, got %s" % (
                        lineinfo(t), ne,
                        type.name, ", ".join(map(str,type.parameters)),
                        str(t)))
                return
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
        elif n.text.endswith("L"):
            self.leaf(n, "long")
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

    def __init__(self, errors=None):
        if errors is None: errors = []
        self.errors = errors

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

    def __init__(self, errors=None):
        if errors is None: errors = []
        self.errors = errors

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

    def visit_Method(self, method):
        """
        Ensure method has the same signature matching method on parent interface.

        :param method: L{quarkc.ast.Method} instance.
        """
        resolved_method = method.resolved.type

        def get_params(method, extra_bindings):
            # The Method should already be the resolved version.
            result = []
            for param in method.params:
                resolved_param = texpr(param.resolved.type, param.resolved.bindings, extra_bindings)
                result.append(resolved_param.id)
            return result

        def get_return_type(method, extra_bindings):
            # The Method should already be the resolved version.
            return texpr(method.type.resolved.type, method.type.resolved.bindings,
                         extra_bindings).id

        def signature(method, return_type, params):
            return "%s %s(%s)" % (return_type, method.name.text, ", ".join(params))

        # Ensure the method has the same signature as matching methods on parent
        # interfaces:
        interfaces = list(t for t in method.clazz.bases if isinstance(t.resolved.type, Interface))
        for interface in interfaces:
            interfaceTypeExpr = interface.resolved
            for definition in interfaceTypeExpr.type.definitions:
                if definition.name.text == method.name.text:
                    resolved_definition = definition.resolved.type
                    method_params = get_params(resolved_method, method.clazz.resolved.bindings)
                    definition_params = get_params(resolved_definition, interfaceTypeExpr.bindings)
                    method_return = get_return_type(resolved_method, method.clazz.resolved.bindings)
                    definition_return = get_return_type(resolved_definition, interfaceTypeExpr.bindings)

                    if method_params != definition_params or method_return != definition_return:
                        self.errors.append(
                            "%s: method signature '%s' on %s does not match method '%s' on interface %s" % (
                                lineinfo(method), signature(resolved_method, method_return, method_params),
                                method.clazz.resolved.type.id,
                                signature(resolved_definition, definition_return, definition_params),
                                interface.resolved.type.id))


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
    ann = [a for a in node.annotations if a.name.text == "delegate"][0]
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

ARCHIVE_END = "ARCHIVE_END"

class Compiler(object):

    def __init__(self, include_stdlib=False):
        """
        :param include_stdlib: If False, the quark.q stdlib is added with a 'use'
            statement. If True then 'include' is used. The former means the stdlib
            is external dependency, the latter that it will be included in the
            generated distribution unit (e.g. gem).
        """
        self.include_stdlib = include_stdlib
        self.version_warning = False
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
        except GParseError as e:
            location = '%s:%s:%s: ' % (name, e.line(), e.column())
            version_string = parse_strict_compiler_version_spec(text)
            if version_string:
                messages = version_spec_string_messages(version_string,
                                                        location)
                if self.version_warning:
                    messages = (
                        [Warning('`--version-warning` is enabled\n')] +
                        map(Warning, messages)
                    )
                issue_all(messages)
            raise ParseError("%s%s" % (location, e))

        imp = Import([Name(BUILTIN)])
        imp.line = -1
        imp.column = -1
        imp._silent = True
        # We want to insert an Import(quark) in a files, and
        # Use(quark.q)/Include(quark.q) in the main one right after the
        # CompilerVersionSpec if any.
        insert_builtin_index = 0
        if file.definitions and isinstance(file.definitions[0], CompilerVersionSpec):
            insert_builtin_index = 1
        file.definitions.insert(insert_builtin_index, imp)
        if not self.root.files and not name.endswith(BUILTIN_FILE):  # First file
            if self.include_stdlib:
                stdlib = Include(BUILTIN_FILE)
            else:
                stdlib = AstUse(BUILTIN_FILE)
            stdlib._silent = True
            file.definitions.insert(insert_builtin_index, stdlib)
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
        """
        Parse a quark file and, optionally, its recursive dependencies.

        A quark file (main.q) is loaded via urlparse() can have two kinds of
        dependencies, `use a.q` or `include b.q`. For the `use` case each file
        is added as a separate top-level root to self.roots. For the `include`
        case the file is added to the *current* root that is including it, so
        it's added as a child of `self.root`.

        There are  two forms  of caching:  CACHE is  a shared  dictionary across
        class instances of parsed roots.  Additionally .qc file are written with
        pickled versions of  loaded roots. Given that both of  them store a root
        these forms  of caching are only  relevant to top-level quark  files and
        files referenced using `use`. Files  loaded with `include` should bypass
        the  caching mechanism  since they  need to  be loaded  as child  of the
        parent root.
        """
        if os.path.exists(url):
            url = os.path.abspath(url)

        urlc = compiled_quark(url)
        if not include and url in self.CACHE:
            self.log.debug("loading from cache: %s", url)
            root = self.CACHE[url]
            self.roots.add(root)
            if recurse:
                for u in root.uses:
                    assert u in self.CACHE, (url, u, self.CACHE.keys())
                    self.roots.add(self.CACHE[u])
            if not include: self.entries[url] = root.files[0]
            return root.files[0]
        elif not include and recurse and os.path.exists(url) and is_newer(urlc, url, __file__):
            self.log.debug("loading from: %sc", url)
            with open(urlc) as fd:
                try:
                    unp = pickle.Unpickler(fd)
                    deps = unp.load()
                    if is_newer(urlc, *deps):
                        roots = unp.load()
                        # Check for the end record in case we
                        # encounter a partially written file.
                        end = unp.load()
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
                if not include:
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

    def raise_errors(self, errors):
        warnings = [e for e in errors if isinstance(e, CompileWarning)]
        if len(warnings) != len(errors):
            raise CompileError("")

    def icompile(self, ast):

        if isinstance(ast, Root):
            messages = tuple(compiler_version_spec_messages(ast.files))
            if self.version_warning:
                messages = (
                    [Warning('`--version-warning` is enabled\n')] +
                    map(Warning, messages)
                )
            issue_all(messages)

        errors = []

        try:
            def_ = Def(errors)
            ast.traverse(def_)
            self.raise_errors(errors)

            use = Use(errors)
            ast.traverse(use)
            if use.unresolved:
                use.errors.extend(["%s: unresolved variable: %s" % (lineinfo(node), name)
                        for node, name in use.unresolved])
            self.raise_errors(errors)

            res = Resolver(errors)
            ast.traverse(res)
            self.raise_errors(errors)

            check = Check(errors)
            ast.traverse(check)
            self.raise_errors(errors)

        except CompileError as ce:
            if ce.args[0]:
                errors.append(ce.args[0])
            raise CompileError("\n".join(map(str,list(errors))))

        if errors:
            # there were only warnings
            sys.stderr.write("\n%s\n" % "\n".join(map(str, errors)))

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
        return n1

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
            root._compiled = True

        modified = []
        for url, file in self.entries.items():
            if not os.path.exists(url): continue
            urlc = compiled_quark(url)
            trans_roots = tuple(self.trans_roots(file.root))
            deps = tuple(self.deps(trans_roots))
            if not is_newer(urlc, __file__, *deps):
                self.log.info("Writing %s" % urlc)
                with open(urlc, "w") as fd:
                    pickler = pickle.Pickler(fd, -1)
                    pickler.dump(deps)
                    pickler.dump(trans_roots)
                    # Write out an object to mark the archive end so
                    # we can detect partial writes.
                    pickler.dump(ARCHIVE_END)
                modified.append(file.root)
        # We compute the modified flag here so it never gets saved to disk.
        for r in modified:
            r._modified = True

def install(c, url, offline=False, *backends):
    c.log.info("Parsing: %s", url)
    c.urlparse(url)
    c.compile()

    for root in c.roots.sorted():
        for backend in backends:
            b = backend(c.include_stdlib)
            b.roots = c.roots
            root.traverse(b)
            b.install(offline)

def compile(c, url, target, *backends):
    c.log.info("Parsing: %s", url)
    c.urlparse(url)
    c.compile()

    dirs = []

    for root in c.roots.sorted():
        dir = os.path.splitext(os.path.basename(root.url))[0]
        if dir not in dirs:
            dirs.append(dir)
        for backend in backends:
            b = backend(c.include_stdlib)
            b.roots = c.roots
            root.traverse(b)
            out = os.path.join(os.path.join(target, b.ext), dir)
            b.write(out)

    return dirs

def run(c, url, args, *backends):
    file = c.urlparse(url, recurse=False)
    name, ver = namever(file)
    for backend in backends:
        b = backend()
        tgt = b._install_target(name, ver)
        if tgt is None:
            raise CompileError("Cannot find the target to run. Did you forget to\n\n    quark install %s %s\n" % (b.argswitch, sh_quote(url)))
        b.run(name, ver, args)


def make_docs(c, url, target, inc_private):
    # FIXME: Lots of boilderplate here...
    c.log.info("Parsing: %s", url)
    c.urlparse(url)
    c.compile()

    for root in c.roots.sorted():
        dest = os.path.join(target, os.path.splitext(os.path.basename(root.url))[0])
        if os.path.exists(dest):
            shutil.rmtree(dest)
        os.makedirs(dest)
        st = docmaker.make_docs_json(root, os.path.join(dest, "api.json"))
        docrenderer.render(st, dest, inc_private)
