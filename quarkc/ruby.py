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

    method_call = '{receiver}.{method}({args})'.format

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
    {prologue}

    {constructors}

    {methods}
end
""".format

## Packaging

def package(name, version, packages, srcs):
    files = OrderedDict()
    files.update(srcs)
    for path, readme in packages.items():
        files['%s/README.md' % '/'.join(path)] = readme
        gemspec = Templates.gemspec(
            name=name,
            version=version,
            runtime_version='TODO',
        )
        files['%s/%s.gemspec' % ('/'.join(path), name)] = gemspec
    return files

def class_file(path, name, fname):
    assert path
    return '/'.join(path) + '.rb'

def function_file(path, name, fname):
    return class_file(path, name, fname)

def package_file(path, name, fname):
    return '/'.join(path + [name + '.rb'])

def make_class_file(path, name):
    return Code(head='require "datawire-quark-core"\n')

def make_function_file(path, name):
    return make_class_file(path, name)

def make_package_file(path, name):
    return make_class_file(path, name)

def main(fname, common):
    return Code('require "./%s.rb" \n\nFunctions.main\n' % common)

## Naming and imports

SUBS = {'Class': 'QuarkClass', 'end': 'end_'}
def name(n):
    return SUBS.get(n, n)

def type(path, name, parameters):
    return ".".join(path + [name])

def import_(path, origin):
    qual = qualify(path, origin)
    if tuple(origin) + tuple(qual) == tuple(path):
        prefix = './'
    else:
        prefix = '../' * len(origin)
    return 'require "%s%s"' % (prefix, qual[0])

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
    return doc_helper(lines, '#  ', '#  ', '#  ')

## Comments

def comment(stuff):
    return '# %s\n' % stuff

## Class definition

def clazz(doc, abstract, name, parameters, base, interfaces, fields, constructors, methods):
    upcased_name = name[0].upper() + name[1:]
    prologue = 'attr_accessor ' + ', '.join(':' + name for name, value in fields)
    init_fields = Templates.method(
        name='__init_fields__',
        parameters='',
        body=indent(''.join('\nself.%s = %s' % pairs for pairs in fields)),
    )
    source = Templates.class_(
        name=upcased_name,
        base=base or 'Object',
        prologue=prologue,
        constructors=indent('\n'.join(constructors)),
        methods=indent('\n'.join(methods + [init_fields])),
    )
    if name != upcased_name:
        source += Templates.method(
            name=name,
            parameters='',
            body=return_(upcased_name),
        )
    return source

def field(doc, type, name, value):
    return (name, value or null())
    # return 'self.{} = {}'.format(name, value or null())

def field_init():
    return 'self.__init_fields__'

def default_constructor(clazz):
    return Templates.method(
        name='initialize',
        parameters='',
        body=field_init(),
    )

def constructor(doc, name, parameters, body):
    return Templates.method(
        name='initialize',
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
    return Templates.class_(
        name='Functions',
        base='Object',
        prologue='',
        constructors='',
        methods=indent(Templates.method(
            name='self.' + name,
            parameters=', '.join(parameters),
            body=body,
        )),
    )

## Parameters for methods and functions

def param(type, name, value):
    if value is None:
        return name
    else:
        return '{}={}'.format(name, value)

## Blocks

def block(statements):
    return indent('\n'.join(statements) or null())

## Statements

def local(type, name, value):
    return '{} = {}'.format(name, value or null())

def expr_stmt(e):
    assert e
    return e

def assign(lhs, rhs):
    return '{} = {}'.format(lhs, rhs)

def if_(pred, cons, alt):
    assert pred, pred
    if alt:
        return 'if ({}){}else{}end'.format(pred, cons, alt)
    else:
        return 'if ({}){}end'.format(pred, cons)

def while_(cond, body):
    return 'while ({}) do{}end'.format(cond, body)

def break_():
    return 'break'

def continue_():
    return 'next'

def return_(expr):
    return ('return ' + (expr or '')).strip()

## Expressions

def class_ref(v):
    return v

def method_ref(name):
    return 'self.' + name

def field_ref(name):
    return "@" + name

def local_ref(v):
    assert v
    return v

def invoke_function(path, name, args):
    return Templates.method_call(receiver='Functions',
                                 method='__'.join(path + [name]),
                                 args=', '.join(args))

def construct(class_, args):
    return Templates.method_call(receiver=class_,
                                 method='new',
                                 args=', '.join(args))

def invoke_super(clazz, base, args):
    return 'super({args})'.format(args=', '.join(args))

def invoke_method(expr, method, args):
    return Templates.method_call(receiver=expr,
                                 method=method,
                                 args=', '.join(args))

def invoke_method_implicit(method, args):
    return Templates.method_call(receiver='self',
                                 method=method,
                                 args=', '.join(args))

def invoke_super_method(clazz, base, method, args):
    template = "method(:{method}).super_method.call({args})".format
    return template(method=method, args=', '.join(args))

def get_field(expr, field):
    return "({receiver}).{name}".format(receiver=expr, name=field)

def cast(type, expr):
    assert expr
    return expr

## Literals

def null():
    return 'nil'

def bool_(b):
    assert b.text in ('true', 'false')
    return b.text

def number(n):
    assert n.text
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
    assert result
    return result

def list(elements):
    return 'DatawireQuarkCore::List.new([%s])' % ', '.join(elements)

def map(entries):
    pair = '{} => {}'.format
    return '{%s}' % (', '.join(pair(key, value) for key, value in entries))
