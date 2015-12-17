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

from collections import OrderedDict
from .helpers import *
# from ._metadata import __js_runtime_version__


class Templates:

    method = """\
def {name}({parameters})
    {body}

    nil
end
""".format

    gemspec = """\
Gem::Specification.new do |spec|
  spec.name        = '{name}'
  spec.version     = '{version}'
  spec.add_runtime_dependency 'datawire-quark-core', '== {runtime_version}'
  # spec.summary     = ''
  # spec.description = ''
  # spec.author      = ''
  # spec.email       = ''
  # spec.license     = ''
  # spec.files       = ['']
  # spec.homepage    = ''
end
""".format

    class_ = """\
class {name} < {base}
    {constructors}

    {methods}
end
""".format


## Packaging

def package(name, version, packages, srcs):
    files = OrderedDict()
    files.update(srcs)
    for path, readme in packages.items():
        files["%s/README.md" % "/".join(path)] = readme
        gemspec = Templates.gemspec(
            name=name,
            version=version,
            runtime_version='TODO',
        )
        files["%s/%s.gemspec" % ("/".join(path), name)] = gemspec
    return files

def class_file(path, name, fname):
    if path:
        return "/".join(path + ["index.rb"])
    else:
        return "%s.rb" % fname

def function_file(path, name, fname):
    return class_file(path, name, fname)

def package_file(path, name, fname):
    return "/".join(path + [name, "index.rb"])

def make_class_file(path, name):
    return Code(head='require "datawire-quark-core"\n')

def make_function_file(path, name):
    return make_class_file(path, name)

def make_package_file(path, name):
    return make_class_file(path, name)

def main(fname, common):
    return Code("require './%s' \n\nCommon::main\n" % common)

## Naming and imports

SUBS = {}
def name(n):
    return SUBS.get(n, n)

def type(path, name, parameters):
    return ".".join(path + [name])

def import_(path, origin):
    qual = qualify(path, origin)
    if tuple(origin) + tuple(qual) == tuple(path):
        prefix = "./"
    else:
        prefix = "../"*len(origin)
    return "require '%s%s'" % (qual[0], prefix)

def qualify(package, origin):
    if package == origin: return []
    if not package: return []
    if not origin:
        return package
    elif package[:len(origin)] == origin:
        return package[len(origin):]
    else:
        return package

## Documentation

def doc(lines):
    return doc_helper(lines, "#  ", "#  ", "#  ")

## Comments

def comment(stuff):
    return "# %s\n" % stuff

## Class definition

def clazz(doc, abstract, clazz, parameters, base, interfaces, fields, constructors, methods):
    return Templates.class_(
        name=clazz,
        base=base or "Object",
        constructors=indent('\n'.join(constructors)),
        methods=indent('\n'.join(methods)),
    )

def field(doc, type, name, value):
    return "self.%s = %s" % (name, value or "nil")

def field_init():
    return "self.__init_fields__"

def default_constructor(clazz):
    return Templates.method(
        name='initialize',
        body='self.__init_fields__',
        parameters='',
    )

def constructor(doc, name, parameters, body):
    return Templates.method(
        name='self.' + name,
        parameters=', '.join(parameters),
        body=body,
    )

def method(doc, clazz, type, name, parameters, body):
    return Templates.method(
        name=name,
        parameters=', '.join(parameters),
        body=body,
    )

def abstract_method(doc, clazz, type, name, parameters):
    return Templates.method(
        name=name,
        parameters=', '.join(parameters),
        body='raise NotImplementedError, "this is an abstract method"',
    )

## Interface definition

def interface(doc, iface, parameters, bases, methods):
    return clazz(doc, False, iface, parameters, None, [], [], [default_constructor(iface)], methods)

def interface_method(doc, iface, type, name, parameters, body):
    return Templates.method(
        name=name,
        parameters=', '.join(parameters),
        body=body or 'raise NotImplementedError, "this is an abstract method"',
    )

## Function definition

def function(doc, type, name, parameters, body):
    template = "def {name}({parameters})\n {body} end".format
    parameters = ", ".join(parameters)
    return template(name=name, parameters=parameters, body=body)

## Parameters for methods and functions

def param(type, name, value):
    if value is None:
        return "%s" % name
    else:
        return "%s=%s" % (name, value)

## Blocks

def block(statements):
    return indent("\n".join(statements))

## Statements

def local(type, name, value):
    return "%s = %s" % (name, value or "nil")

def expr_stmt(e):
    return "%s" % e

def assign(lhs, rhs):
    return "%s = %s" % (lhs, rhs)

def if_(pred, cons, alt):
    if alt:
        return "if (%s)\n %s else %s end" % (pred, cons, alt)
    else:
        return "if (%s)\n %s end" % (pred, cons)

def while_(cond, body):
    return "while %s do %s end" % (cond, body)

def break_():
    return "break"

def continue_():
    return "continue"

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
    return "@%s" % v

def local_ref(v):
    return v

def invoke_function(path, name, args):
    return "%s.call(%s)" % (".".join(path + [name]), ", ".join(args))

def construct(clazz, args):
    return "%s.new(%s)" % (clazz, ", ".join(args))

def invoke_super(clazz, base, args):
    return "super %s" % (", ".join(args))

def invoke_method(expr, method, args):
    return "(%s).%s(%s)" % (expr, method, ", ".join(args))

def invoke_method_implicit(method, args):
    return "self.%s(%s)" % (method, ", ".join(args))

def invoke_super_method(clazz, base, method, args):
    template = "method(:{method}).super_method.call {args}".format
    return template(method=method, args=', '.join(args))

def get_field(expr, field):
    return "(%s).%s" % (expr, field)

def cast(type, expr):
    return expr

## Literals

def null():
    return "nil"

def bool_(b):
    return b.text

def number(n):
    return n.text

def string(s):
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

def list(elements):
    return "[%s]" % ", ".join(elements)

def map(entries):
    return "{ %s }" % (", ".join("%s => %s" % e for e in entries))
