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
from collections import OrderedDict, namedtuple
from textwrap import dedent

from .helpers import doc_helper, indent, Code

PACKAGE_PREFIX_TODO = "TODO/TODO/TODO"


def package(name, version, packages, srcs, deps):
    files = OrderedDict()
    files.update((os.path.join("src",n),v) for n,v in srcs.items())
    return files

def class_file(path, name, fname):
    return "/".join([PACKAGE_PREFIX_TODO] + path + ["%s.go" % name.lower()])

def function_file(path, name, fname):
    return class_file(path, name, fname)

def package_file(path, name, fname):
    return None

def make_class_file(path, name, rtloc=None):
    return Code(comment, head="""package %s\n\nimport "TODO/TODO/TODO/QuarkRuntime"\n""" % path[-1])

def make_function_file(path, name, mdpkg):
    return make_class_file(path, name)

def make_package_file(path, name, rtloc=None):
    assert False

def main_file(name):
    return "%s/%s/%s/main.go" % (PACKAGE_PREFIX_TODO, name, name)

def make_main_file(name):
    return Code(comment, head="""package main\n\n""")

def main_prolog():
    return "func Call_main() { Main([]string{}); }"

def main(path, name):
    expr = invoke_function(path, "Call_main", ())
    return 'func main() {\n%s\n}\n' % expr

## Naming and imports

SUBS = {}

def name(n):
    n = SUBS.get(n, n).replace("-", "_")
    return n[:1].capitalize() + n[1:]

class type(namedtuple('type', 'path, name, parameters')):
    def __str__(self):
        if self.path:
            prefix = "_".join(self.path)
            return ".".join((prefix, self.name))
        elif self.name == '[]':
            return self.name + str(self.parameters[0])
        else:
            return self.name

def import_(path, origin, dep, seen=None, lazy=False):
    qual = qualify(path, origin)
    if lazy: return "// %s" % qual
    imp = 'import %s "%s"' % ("_".join(qual), "/".join([PACKAGE_PREFIX_TODO] + list(qual)))
    return imp

def qualify(package, origin):
    if package == origin: return []
    if not package: return []
    if not origin:
        return package
    else:
        return package

def native_include(path, du_name):
    assert path.endswith(".go"), path
    assert "/" not in path, (path, "Subpackage native inclusion not implemented for Go")
    return """import %s // this is a native include\n""" % path[:-3]

## Documentation

def doc(lines):
    return indent(doc_helper(lines, '', "// ", '')).rstrip()

## Comments

def comment(stuff):
    return "/* %s */\n" % stuff

## Class definition

def clazz(doc, abstract, clazz, parameters, base, interfaces, static_fields, fields, constructors, methods):
    result = "%s\ntype %s struct {\n%s\n}" % (
        doc, clazz, "\n".join(f.struct_defn for f in fields), )
    result += "\nfunc finit(self *%s) {\n %s\n}" % (clazz, "\n".join(f.finit for f in fields))

    # if base: fields = ["%s._init(self)" % base] + fields
    # finit = ["def _init(self):%s" % (indent("\n".join(fields)) or "\n    pass")]
    # body = indent("\n".join(finit + constructors + methods))
    # result = "class %s(%s):%s%s" % (clazz, base or "_QObject", doc, body or "\n    pass")
    # result += "\n".join(static_fields)
    return result

def static_field(doc, clazz, type, name, value):
    return "%s.%s = %s" % (clazz, name, value or "None")

class field(namedtuple('field', 'doc, clazz, type, name, value')):
    @property
    def finit(self):
        if not self.value: return "// %s" % str(self)
        return "self.%s = %s" % (self.name, self.value)

    @property
    def struct_defn(self):
        return "%s *%s" % (self.name, self.type)

def field_init():
    return "self._init()"

def default_constructor(clazz):
    return "def __init__(self): self._init()"

def constructor(doc, name, parameters, body):
    return "def __init__(%s)%s" % (", ".join(["self"] + map(str,parameters)), body)

def method(doc, clazz, type, name, parameters, body):
    if body is None: body = ":\n    assert False"
    body_with_doc = ":" + doc + body[1:]
    return "\ndef %s(%s)%s" % (name, ", ".join(["self"] + map(str,parameters)), body_with_doc)

def static_method(doc, clazz, type, name, parameters, body):
    if body is None: body = ":\n    assert False"
    body_with_doc = ":" + doc + body[1:]
    return "\n@staticmethod\ndef %s(%s)%s" % (name, ", ".join(map(str,parameters)), body_with_doc)

def abstract_method(doc, clazz, type, name, parameters):
    body = "todo abstract method"
    return ("\ndef %s(%s):%s\n    " + body) % (name, ", ".join(["self"] + map(str,parameters)), doc)

## Interface definition

def interface(doc, iface, parameters, bases, static_fields, methods):
    body = indent("\n".join(map(str,methods)))
    result = "%s interface %s {\n%s\n%s\n}" % (doc, iface, "\n".join(map(str,bases)), body or "")
    result += "\n// ".join(['']+map(str,static_fields)) + "\n"
    return result

def interface_method(doc, iface, type, name, parameters, body):
    return ("%s %s(%s) %s" % (doc, name, ", ".join(map(str,parameters)), type)).strip()

def ducktype(name):
    return "interface {}"

## Function definition

def function(doc, type, name, parameters, body):
    body = body if body else ""
    body_with_doc = body[1:]
    return "\nfunc %s(%s) { %s }" % (name, ", ".join(map(str,parameters)), body_with_doc)

## Parameters for methods and functions

class param(namedtuple("param", "type, name, value")):
    def __str__(self):
        if self.value is None:
            return "%s %s" % (self.name, self.type)
        else:
            return "%s = %s" % (self.name, self.value)

## Blocks

def block(statements):
    if statements:
        return ":%s" % indent("\n".join(map(str,statements)))
    else:
        return ":\n    pass"

## Statements

def local(type, name, value):
    return "%s = %s;1" % (name, value or "None")

def expr_stmt(e):
    return "%s" % e

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
    return "%s(%s)" % (".".join(path + [name]), ", ".join(map(str,args)))

def construct(clazz, args):
    return "%s(%s)" % (clazz, ", ".join(map(str,args)))

def invoke_super(clazz, base, args):
    return "super(%s, self).__init__(%s)" % (clazz, ", ".join(map(str,args)))

def invoke_method(expr, method, args):
    return "(%s).%s(%s)" % (expr, method, ", ".join(map(str,args)))

def invoke_method_implicit(method, args):
    return "self.%s(%s)" % (method, ", ".join(map(str,args)))

def invoke_super_method(clazz, base, method, args):
    return "super(%s, self).%s(%s)" % (clazz, method, ", ".join(map(str,args)))

def invoke_static_method(path, clazz, method, args):
    return "%s.%s(%s)" % (".".join(path + [clazz]), method, ", ".join(map(str,args)))

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
    return "null"

def bool_(b):
    return b.text.capitalize()

def number(n):
    if n.text.endswith("l") or n.text.endswith("L"):
        return n.text[:-1]
    return n.text

def string(s):
    return s.text

def list_(elements):
    return "_List([%s])" % ", ".join(map(str,elements))

def map_(entries):
    return "{%s}" % (", ".join(["%s: %s" % e for e in entries]))
