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
from .compiler import TypeExpr
from .dispatch import overload
from .helpers import *
from ._metadata import __java_runtime_version__
from collections import OrderedDict

if __java_runtime_version__.endswith("-SNAPSHOT"):
    repository = """
  <repositories>
      <repository>
          <releases>
            <enabled>false</enabled>
            <checksumPolicy>warn</checksumPolicy>
          </releases>
          <snapshots>
            <enabled>true</enabled>
            <checksumPolicy>fail</checksumPolicy>
          </snapshots>
          <id>datawire-snapshots</id>
          <name>Sonatype snapshot repo for datawire runtime</name>
          <url>https://oss.sonatype.org/content/repositories/snapshots/</url>
      </repository>
  </repositories>
"""
else:
    repository = ""

pom_xml = """<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>%(name)s</groupId>
  <artifactId>%(name)s</artifactId>
  <version>%(version)s</version>
  <name>%(name)s</name>
  <build>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-compiler-plugin</artifactId>
        <version>3.3</version>
        <configuration>
          <source>1.7</source>
          <target>1.7</target>
        </configuration>
      </plugin>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-javadoc-plugin</artifactId>
        <version>2.10.3</version>
        <configuration>
          <excludePackageNames>io.datawire:*.Functions</excludePackageNames>
        </configuration>
      </plugin>
    </plugins>
  </build>
  <dependencies>
    <dependency>
      <groupId>io.datawire.quark</groupId>
      <artifactId>quark-core</artifactId>
      <version>%(runtime_version)s</version>
      <scope>compile</scope>
    </dependency>
  </dependencies>
  %(repository)s
</project>
"""

# XXX: danger!!! circular import reference hack
import backend
class Java(backend.Backend):

    def __init__(self):
        backend.Backend.__init__(self, "java")
        self.dfnr = DefinitionRenderer()
        self.functions = []
        self.packages = OrderedDict()  # Collect packages for package.json et al

    def write(self, target):
        src = os.path.join(target, "src/main/java")
        if not os.path.exists(src):
            os.makedirs(src)
        for name, content in self.files.items():
            path = os.path.join(src, name)
            dir = os.path.dirname(path)
            if not os.path.exists(dir):
                os.makedirs(dir)
            open(path, "wb").write(content)
            print "quark (compiler): wrote", path
        name, version = namever(self.packages)
        fmt_dict = {"name": name,
                    "version": version,
                    "pkg_list": repr(list(self.packages.keys())),
                    "runtime_version": __java_runtime_version__,
                    "repository": repository,
                    }
        open(os.path.join(target, "pom.xml"), "wb").write(pom_xml % fmt_dict)

    def visit_Class(self, c):
        pkg = self.dfnr.namer.package(c)
        if pkg:
            self.files["%s/%s.java" % (pkg.replace(".", "/"), c.name.text)] = c.match(self.dfnr)
        else:
            self.files["%s.java" % c.name.text] = c.match(self.dfnr)

    def visit_Function(self, f):
        if not isinstance(f, Method):
            self.functions.append(f)

    def leave_Root(self, r):
        if self.functions:
            packages = OrderedDict()
            for f in self.functions:
                pkg = self.dfnr.namer.package(f)
                if pkg in packages:
                    functions = packages[pkg]
                else:
                    functions = []
                    packages[pkg] = functions
                functions.append(f.match(self.dfnr))
                if f.name.text == "main":
                    functions.append("public static void main(String[] args) {\n    main();\n}")
            for pkg, functions in packages.items():
                cls = "public class Functions {%s}" % indent("\n".join(functions))
                if pkg:
                    self.files["%s/Functions.java" % pkg.replace(".", "/")] = "package %s;\n\n%s" % (pkg, cls)
                else:
                    self.files["Functions.java"] = cls

    def visit_Package(self, pkg):
        pname = self.dfnr.namer.package(pkg)
        if pkg.package is None:  # Grab a list of top-level packages
            self.packages.setdefault(pname, []).append(pkg)
            pkg.version = get_package_version(pkg)

    def visit_Primitive(self, p):
        pass

def indent(st, level=4):
    if st:
        spaces = " "*level
        pst = ""
        while pst != st:
            pst = st
            st = st.replace("\n\n\n","\n\n")
        st = ("\n" + st).replace("\n", "\n%s" % spaces) + "\n"
        st = st.replace("\n%s\n" % spaces, "\n\n")
        return st
    else:
        return ""

class DocEvaluator:

    def __init__(self):
        self.lines = []

    def doc(self, head, prefix, tail):
        if self.lines:
            lines = [head]
            lines.extend([("%s%s" % (prefix, l)).rstrip() for l in self.lines])
            lines.append(tail)
            lines.append("")
            return "\n".join(lines)
        else:
            return ""

    def match_Annotation(self, a):
        for e in a.arguments:
            e.match(self)

    def match_String(self, s):
        # XXX: need to properly process string literal
        self.lines.append(s.text[1:-1])

class DefinitionRenderer(object):

    def __init__(self):
        self.namer = SubstitutionNamer({"self": "this"})
        self.stmtr = StatementRenderer(self.namer)

    def doc(self, annotations, head="/**", prefix=" * ", tail=" */"):
        doc_eval = DocEvaluator()
        for a in annotations:
            if a.name.text == "doc":
                a.match(doc_eval)
        return doc_eval.doc(head, prefix, tail)

    def abstract(self, cls):
        for d in cls.definitions:
            if isinstance(d, Method) and d.body is None:
                return True
        return False

    def constructors(self, cls):
        return [d for d in cls.definitions if isinstance(d, Method) and d.type is None]

    def class_initializer(self, cls):
        pass

    def default_constructors(self, cls):
        cons = base_constructors(cls)
        result = []
        for con in cons:
            name = cls.name.match(self.namer)
            params = [p.match(self) for p in con.params]
            args = [p.name.match(self.namer) for p in con.params]
            result.append("public %s(%s) { super(%s); }" % (name, ", ".join(params), ", ".join(args)))
        return result

    def class_body(self, cls):
        result = []
        init = self.class_initializer(cls)
        if init:
            result.append(init)
        if not self.constructors(cls):
            result.extend(self.default_constructors(cls))
        result.extend([d.match(self) for d in cls.definitions])
        result.extend([d.match(self, True) for d in get_defaulted_methods(cls).values()])
        return result

    def constructor_header(self, fun):
        if base_type(fun.parent):
            if not has_super(fun):
                name = fun.parent.name.match(self.namer)
                return [self.default_super(name)]
            else:
                return []
        else:
            return [self.invoke_init()]

    def match_Class(self, c):
        name = c.name.match(self.namer)
        params = ""
        if c.parameters:
            params = "<%s>" % (", ".join([p.match(self) for p in c.parameters]))
        extends = ""
        bt = base_type(c)
        if bt:
            extends += " extends %s" % self.stmtr.exprr.type(bt)
        else:
            extends = ""
        implements = ""
        for base in c.bases:
            if isinstance(base.resolved.type, (Interface, Primitive)):
                if not implements:
                    if isinstance(c, Interface):
                        implements += " extends "
                    else:
                        implements += " implements "
                else:
                    implements += ", "
                implements += self.stmtr.exprr.type(base)
        body = "\n".join(self.class_body(c))
        kw = "interface" if isinstance(c, Interface) else "class"
        doc = self.doc(c.annotations)
        if not isinstance(c, Interface) and self.abstract(c):
            kw = "abstract " + kw
        cls = "%spublic %s %s%s%s%s {%s}" % (doc, kw, name, params, extends, implements, indent(body))
        pkg = self.namer.package(c)
        if pkg:
            return "package %s;\n\n%s" % (pkg, cls)
        else:
            return cls

    def match_TypeParam(self, p):
        return p.name.match(self.namer)

    def match_Function(self, m, defaulting=False):
        doc = self.doc(m.annotations)
        type = "%s " % self.stmtr.exprr.type(m.type.resolved, m.type) if m.type else ""
        name = m.name.match(self.namer)
        params = ", ".join([p.match(self) for p in m.params])
        if isinstance(m.clazz, Interface) and not defaulting:
            body = ";"
        else:
            body = " %s" % m.body.match(self.stmtr) if m.body else ";"
        if isinstance(m, Method):
            mods = "public"
        else:
            mods = "public static"
        if m.body is None and not isinstance(m.clazz, Interface):
            mods = mods + " abstract"
        return "%s%s %s%s(%s)%s" % (doc, mods, type, name, params, body)

    def match_MethodMacro(self, mm):
        return ""

    def match_Field(self, f):
        doc = self.doc(f.annotations)
        return "%spublic %s;" % (doc, f.match(self.stmtr))

    def match_Param(self, p):
        return p.match(self.stmtr)

class StatementRenderer(object):

    def __init__(self, namer):
        self.namer = namer
        self.exprr = ExprRenderer(self.namer)

    def match_Return(self, r):
        if r.expr:
            return "return %s;" % self.exprr.maybe_cast(r.callable.type, r.expr)
        else:
            return "return;"

    def match_Local(self, stmt):
        return "%s;" % stmt.declaration.match(self)

    def match_Declaration(self, d):
        type = self.exprr.type(d.resolved, d)
        name = d.name.match(self.namer)
        if d.value:
            value = self.exprr.maybe_cast(d.type, d.value)
            return "%s %s = %s" % (type, name, value)
        else:
            return "%s %s" % (type, name)

    def match_ExprStmt(self, stmt):
        return "%s;" % stmt.expr.match(self.exprr)

    def match_Assign(self, a):
        return "%s = %s;" % (a.lhs.match(self), self.exprr.maybe_cast(a.lhs, a.rhs))

    def match_Attr(self, a):
        return "(%s).%s" % (a.expr.match(self.exprr), a.attr.text)

    def match_Var(self, v):
        return v.match(self.namer)

    def match_If(self, i):
        result = "if (%s) %s" % (i.predicate.match(self.exprr),
                                 i.consequence.match(self))
        if i.alternative:
            result += " else %s" % i.alternative.match(self)
        return result

    def match_While(self, w):
        return "while (%s) %s" % (w.condition.match(self.exprr),
                                  w.body.match(self))

    def match_Block(self, b):
        return "{%s}" % indent("\n".join([s.match(self) for s in b.statements]))

    def match_Break(self, b):
        return "break;"

    def match_Continue(self, c):
        return "continue;"

class ExprRenderer(object):

    def __init__(self, namer):
        self.namer = namer

    @property
    def lang(self):
        return "java"

    @property
    def selfie(self):
        return "this"

    def maybe_cast(self, type, expr):
        if expr.coersion:
            return self.coerce(expr)
        result = expr.match(self)
        if not type.resolved.assignableFrom(expr.resolved):
            result = "(%s) (%s)" % (self.type(type.resolved, type), result)
        return result

    def match_Bool(self, b):
        return b.text

    def match_Null(self, n):
        return n.text

    def match_Number(self, n):
        return n.text

    def match_String(self, s):
        result = s.text[0]
        idx = 1
        while idx < len(s.text) - 1:
            c = s.text[idx]
            next = s.text[idx + 1]
            if c == "\\" and next == "x":
                result += "\\u00"
                idx += 1
            else:
                result += c
            idx += 1
        result += s.text[-1]
        return result

    def match_List(self, l):
        return "new java.util.ArrayList(java.util.Arrays.asList(new Object[]{%s}))" % \
            (", ".join([e.match(self) for e in l.elements]))

    def match_Map(self, m):
        return "io.datawire.quark.runtime.Builtins.map(new Object[]{%s})" % \
            (", ".join(["%s, %s" % (e.key.match(self), e.value.match(self))
                        for e in m.entries]))

    def match_Cast(self, c):
        return self.maybe_cast(c, c.expr)

    def match_Call(self, c):
        type = c.expr.resolved.type
        return self.invoke(type, c.expr, [self.coerce(a) for a in c.args])

    @overload(Expression)
    def coerce(self, expr):
        if expr.coersion:
            if isinstance(expr.coersion, Macro):
                class FakeExpr: pass
                fake = FakeExpr()
                fake.expr = expr
                return self.apply_macro(expr.coersion, fake, ())
            else:
                return "%s()" % self.get(expr.resolved.type, expr.coersion, expr, expr.coersion.name)
        else:
            return expr.match(self)

    def match_Attr(self, a):
        type = a.expr.resolved.type
        return self.get(type, a.resolved.type, a.expr, a.attr)

    def match_Type(self, t):
        return self.type(t)

    def match_Var(self, v):
        return self.var(v.definition, v)

    @overload(AST)
    def var(self, dfn, v):
        return v.match(self.namer)

    @overload(Function)
    def var(self, dfn, v):
        pkg = self.namer.package(dfn)
        if pkg:
            return "%s.Functions.%s" % (pkg, v.match(self.namer))
        else:
            return "Functions.%s" % v.match(self.namer)

    def match_Native(self, n):
        return "".join([c.match(self) for c in n.cases])

    def match_NativeCase(self, nc):
        if nc.name in (None, self.lang):
            return "".join([c.match(self) for c in nc.children])
        else:
            return ""

    def match_Fixed(self, f):
        return f.text

    @overload(Class, AST)
    def get(self, cls, type, expr, attr):
        return "(%s).%s" % (expr.match(self), attr.text)

    @overload(Package, Function)
    def get(self, pkg, type, expr, attr):
        return "%s.Functions.%s" % (expr.match(self), attr.text)

    @overload(Package, Package)
    def get(self, pkg, type, expr, attr):
        return "%s.%s" % (expr.match(self), attr.text)

    @overload(Class, Super)
    def invoke(self, cls, expr, args):
        return "%s(%s)" % (expr.match(self), ", ".join(args))

    @overload(Class)
    def invoke(self, cls, expr, args):
        cons = constructors(cls)
        con = cons[0] if cons else None
        if isinstance(con, Macro):
            return self.apply_macro(con, expr, args)
        else:
            return "new %s(%s)" % (expr.match(self), ", ".join(args))

    @overload(Function)
    def invoke(self, func, expr, args):
        return "%s(%s)" % (expr.match(self), ", ".join(args))

    @overload(Method, Var)
    def invoke(self, method, expr, args):
        return "(%s).%s(%s)" % (self.selfie, method.name.match(self.namer), ", ".join(args))

    @overload(Method, Attr)
    def invoke(self, method, expr, args):
        if isinstance(expr.expr, Super):
            return self.invoke_super_method(method, expr, args)
        else:
            return "%s(%s)" % (expr.match(self), ", ".join(args))

    def invoke_super_method(self, method, expr, args):
        return "super.%s(%s)" % (method.name.match(self.namer),
                                 ", ".join(args))

    @overload(Macro)
    def invoke(self, macro, expr, args):
        return self.apply_macro(macro, expr, args)

    def apply_macro(self, macro, expr, args):
        env = {}
        if macro.clazz and macro.type:
            # for method macros we use expr to access self
            env["self"] = expr.expr.match(self)
        idx = 0
        for p in macro.params:
            env[p.name.text] = args[idx]
            idx += 1
        return macro.body.match(self.__class__(SubstitutionNamer(env)))

    def match_Super(self, s):
        return "super"

    @overload(TypeExpr)
    def type(self, texpr, expr):
        return self.type(texpr.type, texpr.bindings, expr)

    @overload(Class, dict)
    def type(self, cls, bindings, expr):
        if cls.parameters:
            params = [self.type(bindings[p], expr) for p in cls.parameters]
            return "%s<%s>" % (self.type(cls, expr), ",".join(params))
        else:
            return self.type(cls, expr)

    def qualify(self, cpkg, epkg):
        if self.lang == "java":
            if cpkg and cpkg != epkg:
                return cpkg
            else:
                return None
        else:
            if cpkg is None: return None
            if epkg is None:
                return cpkg
            elif cpkg.startswith(epkg):
                return cpkg[len(epkg)+1:]
            else:
                return cpkg

    @overload(Class)
    def type(self, cls, expr):
        mapping = None
        for a in cls.annotations:
            if a.name.text == "mapping":
                mapping = a
                break
        if mapping is None:
            result = cls.name.match(self.namer)
            cpkg = self.namer.package(cls)
            epkg = self.namer.package(expr)
            pfx = self.qualify(cpkg, epkg)
            if pfx:
                return "%s.%s" % (pfx, result)
            else:
                return result
        else:
            return mapping.arguments[0].match(self)

    @overload(TypeParam)
    def type(self, tparam, bindings, expr):
        if tparam in bindings:
            return self.type(bindings[tparam], expr)
        else:
            return tparam.name.match(self.namer)

    @overload(Type)
    def type(self, t):
        return self.type(t.resolved, t)

class NameRenderer(object):

    def match_Name(self, n):
        return n.text

    def match_Var(self, v):
        return v.name.match(self)

    def package(self, node):
        if isinstance(node, Package):
            me = node.name.match(self)
            parent = self.package(node.parent)
            if parent:
                return "%s.%s" % (parent, me)
            else:
                return me
        elif node.parent:
            return self.package(node.parent)
        else:
            return None

class SubstitutionNamer(NameRenderer):

    def __init__(self, env):
        self.env = env

    def match_Name(self, n):
        if n.text in self.env:
            return self.env[n.text]
        else:
            return n.text
