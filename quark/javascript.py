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
from collections import OrderedDict

# XXX: danger!!! circular import reference hack
import ast
import backend
import java
from .dispatch import overload
from .helpers import *
from ._metadata import __js_runtime_version__


class JavaScript(backend.Backend):

    def __init__(self):
        backend.Backend.__init__(self, "js")
        self.dfnr = JSDefinitionRenderer()
        self.header = """var _qrt = require("datawire-quark-core");\n"""
        self.packages = OrderedDict()  # Collect packages for package.json et al

    def write(self, target):
        if not os.path.exists(target):
            os.makedirs(target)
        for pname, pkgList in self.packages.items():
            pkg = pkgList[0]
            ppath = pname.replace(".", "/")
            self.files["%s/README.md" % ppath] = pkg.readme
            self.files["%s/package.json" % ppath] = """
{
    "name":"%s",
    "version":"%s",
    "dependencies": {
        "datawire-quark-core": "%s"
    }
}
            """ % (pname, pkg.version, __js_runtime_version__)
        for name, content in self.files.items():
            path = os.path.join(target, name)
            dir = os.path.dirname(path)
            if not os.path.exists(dir):
                os.makedirs(dir)
            open(path, "wb").write(content)
            print "quark (compiler): wrote", path

    def imports(self, packages, origin=None):
        if origin:
            origin_name = self.dfnr.namer.package(origin)
        else:
            origin_name = ""

        result = ""

        for pkg in packages.keys():
            path = pkg.split(".")
            if origin and path[0] in origin.env and isinstance(origin.env[path[0]], Package):
                subpackage = True
            elif origin:
                subpackage = False
            else:
                subpackage = True

            if subpackage:
                prefix = "./"
            else:
                prefix = "../"*len(origin_name.split("."))

            result += "var %s = require('%s%s');\n" % (path[0], prefix, path[0])
            if subpackage:
                result += "exports.%s = %s;\n" % (pkg, pkg)

        if result:
            result += "\n"

        return result

    def visit_Package(self, pkg):
        pkg.imports = OrderedDict()
        pkg.has_main = False
        pkg.readme = ""
        content = "\n".join([d.match(self.dfnr) for d in pkg.definitions])
        pname = self.dfnr.namer.package(pkg)
        if pkg.package is None:  # Grab a list of top-level packages
            self.packages.setdefault(pname, []).append(pkg)
        pkg.version = get_package_version(pkg)
        pkg.readme = "# %s %s\n\n" % (pname, pkg.version) + pkg.readme
        fname = "%s/index.js" % pname.replace(".", "/")
        if pkg.has_main:
            content += "\n\nmain();"
        content = content.rstrip() + "\n"
        if fname in self.files:
            self.files[fname] = self.files[fname].strip() + "\n\n" + self.imports(pkg.imports, pkg) + content
        else:
            self.files[fname] = self.header + self.imports(pkg.imports, pkg) + content

    def visit_File(self, file):
        file.imports = OrderedDict()
        file.has_main = False
        content = "\n".join([d.match(self.dfnr) for d in file.definitions])
        if file.has_main:
            content = content.rstrip() + "\n\nmain();"
        content = content.rstrip() + "\n"
        if content.strip() != "":
            fname = "%s.js" % os.path.splitext(os.path.basename(file.name))[0]
            self.files[fname] = self.header + self.imports(file.imports) + content

    def visit_Primitive(self, p):
        pass


class JSDefinitionRenderer(java.DefinitionRenderer):

    def __init__(self):
        self.namer = JSNamer()
        self.stmtr = JSStatementRenderer(self.namer)
        self.fieldr = JSFieldRenderer(self.namer, self.stmtr.exprr)

    def match_Package(self, p):
        if isinstance(p.parent, ast.Package):
            p.parent.imports[p.name.match(self.namer)] = True
        return ""

    def match_Field(self, f):
        doc = self.doc(f.annotations)
        return "%s%s;" % (doc, f.match(self.stmtr))

    def default_super(self, class_name):
        return "%s.super_.call(this);" % class_name

    def invoke_init(self):
        return "this.__init_fields__();"

    def match_Class(self, c):
        name = c.name.match(self.namer)
        fields = []
        methods = []
        constructor = None
        doc = self.doc(c.annotations)

        btype = base_type(c)
        if btype:
            base_class = self.stmtr.exprr.type(btype)
            fields.append(base_class + ".prototype.__init_fields__.call(this);")
        else:
            base_class = None

        if c.package:
            c.package.readme += "## %s\n" % name
            c.package.readme += self.doc(c.annotations, head="", prefix="", tail="")

        for definition in c.definitions:
            if isinstance(definition, ast.Field):
                field_doc = self.doc(definition.annotations)
                fields.append(field_doc + definition.match(self.fieldr))
            elif not definition.type:
                assert constructor is None
                constructor = definition
            else:
                methods.append(definition.match(self, class_name=name))

        for definition in get_defaulted_methods(c).values():
            methods.append(definition.match(self, class_name=name))

        res = "\n// CLASS %s\n" % name + doc
        if constructor:
            res += constructor.match(self, class_name=name)
        else:
            if btype:
                cons = base_constructors(c)
                params = []
                args = ["this"]
                if cons:
                    assert len(cons) == 1
                    params = [p.match(self) for p in cons[0].params]
                    args.extend([p.name.match(self.namer) for p in cons[0].params])
                res += "function %s(%s) {\n    %s.super_.call(%s);\n}\n" % \
                       (name, ", ".join(params), name, ", ".join(args))
            else:
                res += "function %s() {\n    this.__init_fields__();\n}\n" % name
        res += "exports.%s = %s;\n" % (name, name)
        if base_class:
            res += "_qrt.util.inherits(%s, %s);\n" % (name, base_class)

        res += "\nfunction %s__init_fields__() {" % name + java.indent("\n".join(fields)) + "}\n"
        res += "%s.prototype.__init_fields__ = %s__init_fields__;\n" % (name, name)

        res += "\n".join(methods)

        return res

    def match_Function(self, m, class_name=None):
        doc = self.doc(m.annotations)
        name = m.name.match(self.namer)
        params = ", ".join([p.match(self) for p in m.params])
        header = []

        if isinstance(m, ast.Method):
            if m.type:
                # Method
                new_name = "%s_%s" % (class_name, name)
                trailer = "%s.prototype.%s = %s;" % (class_name, name, new_name)
                if m.package:
                    m.package.readme += "### %s.%s(%s)\n" % (class_name, name, params)
                    m.package.readme += self.doc(m.annotations, head="", prefix="", tail="")
                name = new_name
            else:
                # Constructor
                header.extend(self.constructor_header(m))
                trailer = ""
                if m.package:
                    m.package.readme += "### %s(%s) (constructor)\n" % (name, params)
                    m.package.readme += self.doc(m.annotations, head="", prefix="", tail="")

        else:
            # Function
            trailer = "exports.%s = %s;" % (name, name)
            if name == "main":
                assert m.parent.__class__ in (ast.File, ast.Package), m.parent.pprint()
                m.parent.has_main = True
            if m.package:
                m.package.readme += "## %s(%s)\n" % (name, params)
                m.package.readme += self.doc(m.annotations, head="", prefix="", tail="")
        if m.body is None:
            if isinstance(m.clazz, ast.Interface):
                body = " { /* interface */ }"
            else:
                body = " { /* abstract */ }"
        else:
            body = " %s" % m.body.match(self.stmtr, header=header)
        return "\n%sfunction %s(%s)%s\n" % (doc, name, params, body) + trailer

    def match_Macro(self, m, class_name=None):
        return ""

    def match_MethodMacro(self, mm, class_name=None):
        return ""

    def match_Primitive(self, p):
        return ""


class JSFieldRenderer(object):

    def __init__(self, namer, exprr):
        self.namer = namer
        self.exprr = exprr

    def match_Field(self, field):
        name = field.name.match(self.namer)
        if field.value:
            return "this.%s = %s;" % (name, field.value.match(self.exprr))
        else:
            return "this.%s = null;" % name


class JSStatementRenderer(java.StatementRenderer):

    def __init__(self, namer):
        self.namer = namer
        self.exprr = JSExprRenderer(self.namer)

    def match_Param(self, d):
        name = d.name.match(self.namer)
        if d.value:
            return "%s = %s /* FIXME */" % (name, d.value.match(self.exprr))
        else:
            return name

    def match_Declaration(self, d):
        name = d.name.match(self.namer)
        if d.value:
            return "var %s = %s" % (name, self.exprr.coerce(d.value))
        else:
            return "var %s" % name

    def match_Assign(self, ass):
        return "%s = %s;" % (ass.lhs.match(self.exprr), self.exprr.coerce(ass.rhs))

    def match_Block(self, b, header=None):
        header = header or []
        return "{%s}" % java.indent("\n".join(header + [s.match(self) for s in b.statements]))


class JSExprRenderer(java.ExprRenderer):

    def __init__(self, namer):
        java.ExprRenderer.__init__(self, namer)

    @property
    def lang(self):
        return "js"

    def maybe_cast(self, type, expr):
        return expr.match(self)

    @overload(ast.AST)
    def var(self, dfn, v):
        if isinstance(v.definition, ast.Field):
            return "this.%s" % v.match(self.namer)
        else:
            name = v.match(self.namer)
            if isinstance(v.definition, ast.Package):
                v.file.imports[name] = True
            return name

    @overload(ast.Function)
    def var(self, dfn, v):
        pkg = self.namer.package(dfn)
        if pkg:
            return "%s.%s" % (pkg, v.match(self.namer))
        else:
            return "%s" % v.match(self.namer)

    @overload(ast.Class)
    def get(self, cls, type, expr, attr):
        return "(%s).%s" % (expr.match(self), attr.text)

    @overload(ast.Package)
    def get(self, pkg, type, expr, attr):
        return "%s.%s" % (expr.match(self), attr.text)

    def match_List(self, l):
        return "[%s]" % ", ".join([e.match(self) for e in l.elements])

    def match_Map(self, m):
        return "new Map([%s])" % \
            (", ".join(["[%s, %s]" % (e.key.match(self), e.value.match(self))
                        for e in m.entries]))

    @overload(ast.Class, ast.Super)
    def invoke(self, cls, expr, args):
        return "%s.super_.call(%s)" % (expr.clazz.name.match(self.namer), ", ".join(["this"] + args))

    def invoke_super_method(self, method, expr, args):
        return "this.constructor.super_.prototype.%s.call(%s)" % \
            (method.name.match(self.namer), ", ".join(["this"] + args))

    @overload(Class, dict)
    def type(self, cls, bindings, expr):
        return self.type(cls, expr)

    @overload(Type)
    def type(self, t):
        pkg = self.namer.package(t.resolved.type)
        if pkg:
            if t.package:
                t.package.imports[pkg] = True
            else:
                t.file.imports[pkg] = True
        return self.type(t.resolved, t)

class JSNamer(java.SubstitutionNamer):

    def __init__(self):
        java.SubstitutionNamer.__init__(self, ({"self": "this"}))

    def get(self, name):
        return self.env.get(name, name.replace("-", "_"))
