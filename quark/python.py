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
from .helpers import *
from ._metadata import __py_runtime_version__
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
        SubstitutionNamer.__init__(self, {"print": "print_"})

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

    def class_initializer(self, cls):
        fields = "\n".join([f.match(self.fieldr) for f in cls.definitions if isinstance(f, Field)])
        btype = base_type(cls)
        if btype:
            fields = "%s._init(self)\n%s" % (self.stmtr.exprr.type(btype), fields)
        return "def _init(self):%s" % (indent(fields) or " pass")

    def default_constructors(self, cls):
        btype = base_type(cls)
        if not btype:
            return ["def __init__(self): self._init()"]
        else:
            return []

    def default_super(self, class_name):
        return "super(%s, self).__init__()" % class_name

    def invoke_init(self):
        return "self._init()"

    def match_Class(self, c):
        name = c.name.match(self.namer)
        btype = base_type(c)
        base = self.stmtr.exprr.type(btype) if btype else "object"
        body = indent("\n".join(self.class_body(c)))
        bases = "(%s)" % base if base else ""
        doc = indent(self.doc(c.annotations)).rstrip()
        return "class %s%s:%s%s" % (name, bases, doc, body or " pass")

    def match_Function(self, fun, defaulting=False):
        doc = indent(self.doc(fun.annotations)).rstrip()
        if fun.type:
            name = fun.name.match(self.namer)
            init = None
        else:
            name = "__init__"
            init = self.constructor_header(fun)
        params = [p.match(self) for p in fun.params]
        if isinstance(fun, Method):
            params = ["self"] + params
        elif name == "main":
                assert fun.parent.__class__ in (File, Package), fun.parent.pprint()
                fun.parent.has_main = True
        body = fun.body.match(self.stmtr, header=init) if fun.body else ": assert False"
        body_with_doc = ":" + doc + body[1:]
        return "\ndef %s(%s)%s" % (name, ", ".join(params), body_with_doc)

    def match_Field(self, f):
        return ""

class PythonStatementRenderer(StatementRenderer):

    def __init__(self, namer):
        self.namer = namer
        self.exprr = PythonExprRenderer(self.namer)

    def match_Declaration(self, d):
        name = d.name.match(self.namer)
        if d.value:
            return "%s = %s" % (name, self.exprr.coerce(d.value))
        else:
            # XXX: will probably need to adjust this to deal with
            #      different declaration cases in python
            if isinstance(d, Param):
                return name
            else:
                return "%s = None" % name

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
        return "%s = %s" % (ass.lhs.match(self.exprr), self.exprr.coerce(ass.rhs))

    def match_Return(self, r):
        if r.expr:
            return "return %s" % r.expr.match(self.exprr)
        else:
            return "return"

class PythonExprRenderer(ExprRenderer):

    @property
    def lang(self):
        return "py"

    @property
    def selfie(self):
        return "self"

    def maybe_cast(self, type, expr):
        return expr.match(self)

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
    def get(self, cls, type, expr, attr):
        return "(%s).%s" % (expr.match(self), attr.text)

    @overload(Class, Super)
    def invoke(self, cls, expr, args):
        return "%s.__init__(%s)" % (expr.match(self), ", ".join(args))

    @overload(Class)
    def invoke(self, cls, expr, args):
        cons = constructors(cls)
        con = cons[0] if cons else None
        if isinstance(con, Macro):
            return self.apply_macro(con, expr, args)
        else:
            return "%s(%s)" % (expr.match(self), ", ".join(args))

    def invoke_super_method(self, method, expr, args):
        return "%s(%s)" % (expr.match(self), ", ".join(args))

    def match_List(self, l):
        return "_List([%s])" % ", ".join([e.match(self) for e in l.elements])

    def match_Map(self, m):
        return "{%s}" % \
            (", ".join(["%s: %s" % (e.key.match(self), e.value.match(self))
                        for e in m.entries]))

    def match_Bool(self, b):
        return b.text.capitalize()

    def match_Null(self, n):
        return "None"

    def match_String(self, s):
        return "u" + s.text

    def match_Super(self, s):
        return "super(%s, self)" % s.clazz.name.match(self.namer)

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

setup_py = """# Setup file for package %(name)s

from setuptools import setup

setup(name="%(name)s",
      version="%(version)s",
      install_requires=["datawire-quark-core==%(runtime_version)s"],
      packages=%(pkg_list)s)
"""

conf_py = """# -*- coding: utf-8 -*-
#
# %(name)s documentation build configuration file, created by Quark
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon'
]
templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
project = u'%(name)s'
copyright = u'2015, %(name)s authors'
author = u'%(name)s authors'
version = '%(version)s'
release = '%(version)s'
language = None
exclude_patterns = ['_build']
pygments_style = 'sphinx'
todo_include_todos = False
html_theme = 'alabaster'
html_static_path = ['_static']
htmlhelp_basename = '%(name)sdoc'
latex_elements = {}
latex_documents = [
    (master_doc, '%(name)s.tex', u'%(name)s Documentation',
     u'%(name)s authors', 'manual'),
]
man_pages = [
    (master_doc, '%(name)s', u'%(name)s Documentation',
     [author], 1)
]
texinfo_documents = [
    (master_doc, '%(name)s', u'%(name)s Documentation',
     author, '%(name)s', 'One line description of %(name)s.',
     'Miscellaneous'),
]
"""

index_rst = """
.. %(name)s documentation master file, created by Quark

%(name)s %(version)s
====

Contents:

.. toctree::
   :maxdepth: 2

.. automodule:: %(name)s
   :members:


Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
"""

class Python(backend.Backend):

    def __init__(self):
        backend.Backend.__init__(self, "py")
        self.dfnr = PythonDefinitionRenderer()
        self.header = "from quark_runtime import *\n\n"
        self.packages = OrderedDict()  # Collect top-level packages for setup.py et al

    def write(self, target):
        src = target
        if not os.path.exists(src):
            os.makedirs(src)
        name, version = namever(self.packages)
        fmt_dict = {"name": name,
                    "version": version,
                    "runtime_version": __py_runtime_version__,
                    "pkg_list": repr(list(self.packages.keys()))}
        self.files["setup.py"] = setup_py % fmt_dict
        self.files["docs/conf.py"] = conf_py % fmt_dict
        self.files["docs/index.rst"] = index_rst % fmt_dict
        self.files["docs/_static/.keep"] = ""
        self.files["docs/_templates/.keep"] = ""

        for name, content in self.files.items():
            path = os.path.join(src, name)
            dir = os.path.dirname(path)
            if not os.path.exists(dir):
                os.makedirs(dir)
            open(path, "wb").write(content)
            print "quark (compiler): wrote", path

    def imports(self, packages):
        result = "\n".join(["import %s" % pkg for pkg in packages.keys()])
        if result: result += "\n\n"
        return result

    def visit_Package(self, pkg):
        pkg.imports = OrderedDict()
        pkg.has_main = False
        content = "\n".join([d.match(self.dfnr) for d in pkg.definitions])
        if pkg.has_main:
            content += '\n\nif __name__ == "__main__":\n    main()'
        content = content.rstrip() + "\n"
        pname = self.dfnr.namer.package(pkg)
        fname = "%s/__init__.py" % pname.replace(".", "/")
        if fname in self.files:
            self.files[fname] = self.files[fname].strip() + "\n\n" + self.imports(pkg.imports) + content
        else:
            self.files[fname] = self.header + self.imports(pkg.imports) + content
        self.packages.setdefault(pname, []).append(pkg)
        pkg.version = get_package_version(pkg)

    def visit_File(self, file):
        file.imports = OrderedDict()
        file.has_main = False
        content = "\n".join([d.match(self.dfnr) for d in file.definitions])
        if file.has_main:
            content += '\n\nif __name__ == "__main__":\n    main()'
        content = content.rstrip() + "\n"
        if content.strip() != "":
            fname = os.path.splitext(os.path.basename(file.name))[0]
            self.files["%s.py" % self.dfnr.namer.get(fname)] = \
                self.header + self.imports(file.imports) + content

    def visit_Primitive(self, p):
        pass
