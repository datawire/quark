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

import os
from collections import OrderedDict
from textwrap import dedent

from .helpers import doc_helper, indent, Code


## Packaging

setup_py = """# Setup file for package %(name)s

from setuptools import setup

setup(name="%(name)s",
      version="%(version)s",
      install_requires=[%(dependencies)s],
      setup_requires=["wheel"],
      py_modules=[%(py_modules)s],
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
=%(underline)s

.. toctree::
   :maxdepth: 2

%(automodules)s

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
"""

automodule_rst = """
%(name)s
%(underline)s

.. automodule:: %(name)s
   :members:
   :undoc-members:
"""

not_implemented_template = """\
raise NotImplementedError('`{clazz}.{name}` is an abstract method')""".format


def package(name, version, packages, srcs, deps):
    automodules = "".join([automodule_rst % dict(name=".".join(package), underline="-" * len(".".join(package)))
                           for package in packages
                           if not package[-1].endswith("_md")])
    fmt_dict = {"name": name,
                "version": version,
                "underline" : "=" * len(name + version),
                "pkg_list": repr([".".join(p) for p in packages]),
                "automodules": automodules,
                "py_modules": ", ".join(repr(name[:-3]) for name in srcs if os.path.basename(name) == name),
                "dependencies": ", ".join(['"wheel"'] + ['"%s==%s"' % d[1:] for d in deps])}
    files = OrderedDict()
    files.update(srcs)
    files["setup.py"] = setup_py % fmt_dict
    files["docs/conf.py"] = conf_py % fmt_dict
    files["docs/index.rst"] = index_rst % fmt_dict
    files["docs/_static/.keep"] = ""
    files["docs/_templates/.keep"] = ""
    return files

def class_file(path, name, fname):
    if path:
        return "/".join(path + ["__init__.py"])
    else:
        fname = fname.replace("-", "_")
        return "%s.py" % SUBS.get(fname, fname)

def function_file(path, name, fname):
    return class_file(path, name, fname)

def package_file(path, name, fname):
    return "/".join(path + [name, "__init__.py"])

PREAMBLE = """\
from __future__ import unicode_literals
from __future__ import division
from __future__ import absolute_import
from __future__ import print_function
from builtins import str as unicode

from quark_runtime import *
_lazyImport.plug("%s")
"""

POSTAMBLE = """\

_lazyImport.pump("%s")
"""

def make_class_file(path, name, rtloc=None):
    what = ".".join(list(path) + [name])
    return Code(comment, head=PREAMBLE % (what), tail=POSTAMBLE % (what))

def make_function_file(path, name, mdpkg):
    return make_class_file(path, name)

def make_package_file(path, name, rtloc=None):
    return make_class_file(path, name)

def main_file(name):
    return "%s.py" % name

def make_main_file(name):
    return Code(comment)

def main_prolog():
    return "def call_main(): import sys; main(_List(sys.argv[1:]))"

def main(path, name):
    expr = invoke_function(path, "call_main", ())
    return 'if __name__ == "__main__":\n    %s' % expr

## Naming and imports

SUBS = {"print": "print_",
        "global": "global_",
        "__get__": "_q__get__",
        "__set__": "_q__set__",
        "__delete__": "_q__delete__"
        }
def name(n):
    return SUBS.get(n, n).replace("-", "_")

def type(path, name, parameters):
    return ".".join(path + [name])

def import_(path, origin, dep, seen=None, lazy=False):
    qual = qualify(path, origin)
    imp = "import %s" % ".".join(qual)
    if lazy:
        lazymeth = "_".join(["","lazy","import"] + list(qual))
        return dedent(
            '''\
            def %s():
                %s
                globals().update(locals())
            _lazyImport("%s", %s)
            ''' % (lazymeth, imp, imp, lazymeth))
    else:
        return imp

def qualify(package, origin):
    if package == origin: return []
    if not package: return []
    if not origin:
        return package
    else:
        return package

def native_include(path, du_name):
    assert path.endswith(".py"), path
    assert "/" not in path, (path, "Subpackage native inclusion not implemented for Python")
    return """import %s\n""" % path[:-3]

## Documentation

def doc(lines):
    return indent(doc_helper(lines, '"""', "", '"""')).rstrip()

## Comments

def comment(stuff):
    # Use triple quotes to be multiline safe.
    if "\n" in stuff:
        return '"""%s"""' % stuff
    else:
        return "# %s\n" % stuff

## Class definition

def clazz(doc, abstract, clazz, parameters, base, interfaces, static_fields, fields, constructors, methods):
    if base: fields = ["%s._init(self)" % base] + fields
    finit = ["def _init(self):%s" % (indent("\n".join(fields)) or "\n    pass")]
    body = indent("\n".join(finit + constructors + methods))
    result = "class %s(%s):%s%s" % (clazz, base or "_QObject", doc, body or "\n    pass")
    result += "\n".join(static_fields)
    return result

def static_field(doc, clazz, type, name, value):
    return "%s.%s = %s" % (clazz, name, value or "None")

def field(doc, clazz, type, name, value):
    return "self.%s = %s" % (name, value or "None")

def field_init():
    return "self._init()"

def default_constructor(clazz):
    return "def __init__(self): self._init()"

def constructor(doc, name, parameters, body):
    return "def __init__(%s)%s" % (", ".join(["self"] + parameters), body)

def method(doc, clazz, type, name, parameters, body):
    if body is None: body = ":\n    assert False"
    body_with_doc = ":" + doc + body[1:]
    return "\ndef %s(%s)%s" % (name, ", ".join(["self"] + parameters), body_with_doc)

def static_method(doc, clazz, type, name, parameters, body):
    if body is None: body = ":\n    assert False"
    body_with_doc = ":" + doc + body[1:]
    return "\n@staticmethod\ndef %s(%s)%s" % (name, ", ".join(parameters), body_with_doc)

def abstract_method(doc, clazz, type, name, parameters):
    body = not_implemented_template(clazz=clazz, name=name)
    return ("\ndef %s(%s):%s\n    " + body) % (name, ", ".join(["self"] + parameters), doc)

## Interface definition

def interface(doc, iface, parameters, bases, static_fields, methods):
    body = indent("\n".join(methods))
    result = "class %s(object):%s%s" % (iface, doc, body or "\n    pass")
    if static_fields:
        result += "\n"
        result += "\n".join(static_fields)
    return result

def interface_method(doc, iface, type, name, parameters, body):
    if body is None:
        body = ":\n    " + not_implemented_template(clazz=iface, name=name)
    body_with_doc = ":" + doc + body[1:]
    return "\ndef %s(%s)%s" % (name, ", ".join(["self"] + parameters), body_with_doc)

## Function definition

def function(doc, type, name, parameters, body):
    body = body if body else ": assert False"
    body_with_doc = ":" + doc + body[1:]
    return "\ndef %s(%s)%s" % (name, ", ".join(parameters), body_with_doc)

## Parameters for methods and functions

def param(type, name, value):
    if value is None:
        return "%s" % name
    else:
        return "%s = %s" % (name, value)

## Blocks

def block(statements):
    if statements:
        return ":%s" % indent("\n".join(statements))
    else:
        return ":\n    pass"

## Statements

def local(type, name, value):
    return "%s = %s;" % (name, value or "None")

def expr_stmt(e):
    return "%s;" % e

def assign(lhs, rhs):
    return "%s = %s" % (lhs, rhs)

def if_(pred, cons, alt):
    result = "if (%s)%s" % (pred, cons)
    if alt:
        result += "else%s" % alt
    return result

def while_(cond, body):
    return "while (%s)%s" % (cond, body)

def break_():
    return "break;"

def continue_():
    return "continue;"

def return_(expr):
    if expr:
        return "return %s" % expr
    else:
        return "return"

## Expressions

def class_ref(v):
    return v

def method_ref(v):
    return "self.%s" % v

def field_ref(v):
    return "self.%s" % v

def local_ref(v):
    return v

def invoke_function(path, name, args):
    return "%s(%s)" % (".".join(path + [name]), ", ".join(args))

def construct(clazz, args):
    return "%s(%s)" % (clazz, ", ".join(args))

def invoke_super(clazz, base, args):
    return "super(%s, self).__init__(%s)" % (clazz, ", ".join(args))

def invoke_method(expr, method, args):
    return "(%s).%s(%s)" % (expr, method, ", ".join(args))

def invoke_method_implicit(method, args):
    return "self.%s(%s)" % (method, ", ".join(args))

def invoke_super_method(clazz, base, method, args):
    return "super(%s, self).%s(%s)" % (clazz, method, ", ".join(args))

def invoke_static_method(path, clazz, method, args):
    return "%s.%s(%s)" % (".".join(path + [clazz]), method, ", ".join(args))

def get_static_field(path, clazz, field):
    return "%s.%s" % (".".join(path + [clazz]), field)

def get_field(expr, field):
    return "(%s).%s" % (expr, field)

def cast(type, expr):
    if type == '':
        return expr
    return '_cast({expr}, lambda: {type})'.format(expr=expr, type=type)

## Literals

def null():
    return "None"

def bool_(b):
    return b.text.capitalize()

def number(n):
    if n.text.endswith("l") or n.text.endswith("L"):
        return n.text[:-1]
    return n.text

def string(s):
    return "u" + s.text

def list_(elements):
    return "_List([%s])" % ", ".join(elements)

def map(entries):
    return "{%s}" % (", ".join(["%s: %s" % e for e in entries]))
