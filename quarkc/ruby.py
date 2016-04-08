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

import itertools
from collections import OrderedDict
from .helpers import *

lower = lambda name: name[0].lower() + name[1:]
upper = lambda name: name[0].upper() + name[1:]

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
  spec.summary     = 'Quark generated {name}'
  # spec.description = ''
  spec.author      = 'Quark compiled code'
  # spec.email       = ''
  # spec.license     = ''
  spec.files       = ['{files}']
  # spec.homepage    = ''
{runtime_deps}
end
""".format

    runtime_dep = """\
  spec.add_runtime_dependency '{module}', '= {version}'\
""".format

    class_ = """\
def self.{alias}; {name}; end
class {name} < {base}
{prologue}

{constructors}

{methods}
end
{postscript}\
""".format

## Packaging

def package(name, version, packages, srcs, deps):
    # TODO handle deps
    files = OrderedDict()
    files.update(("lib/%s" % k, v) for k, v in srcs.iteritems())
    paths = files.keys()
    for path, readme in packages.items():
        files['lib/%s/README.md' % '/'.join(path)] = readme
    gemspec = Templates.gemspec(
        name=name,
        version=version,
        runtime_version='TODO',
        files="', '".join(paths),
        runtime_deps="\n".join(Templates.runtime_dep(module=d[1],version=d[2])
                                for d in deps)
    )
    files['%s.gemspec' % (name)] = gemspec
    return files

def class_file(path, name, fname):
    assert path
    return '/'.join(path) + '.rb'

def function_file(path, name, fname):
    return class_file(path, name, fname)

def package_file(path, name, fname):
    return '/'.join(path + [name]) + '.rb'

def _make_file(path):
    epilogue = 'def self.{alias}; {name}; end\nmodule {name}\n'.format
    prologue = 'end # module {name}\n'.format
    names = [name.replace('-', '_') for name in path]
    head = ''
    # head += 'puts "begin loading module %s"\n' % ".".join(path)
    if tuple(path) == ('quark',):
        head += 'require_relative "datawire-quark-core"\n'
    elif path[0] != 'quark' and not path[0].endswith("_md"):
        head += 'require "quark"\n'
    head += ''.join(epilogue(name=_to_camel_case(name), alias=name) for name in names)
    tail = ''.join(prologue(name=_to_camel_case(name)) for name in reversed(names))
    # tail += 'puts "end loading module %s"\n' % ".".join(path)
    return Code(comment, head='module Quark\n' + head, tail=tail + 'end # module Quark')

def make_class_file(path, name):
    return _make_file(path)

def make_function_file(path, name, mdpkg):
    return _make_file(path)

def main_file(name):
    return "%s.rb" % name

def make_package_file(path, name):
    return _make_file(path + [name])

def main_prolog():
    return Templates.method(
        name='self.call_main',
        parameters='',
        body='self.main(::DatawireQuarkCore::List.new(ARGV))',
    )

def main(path, name):
    expr = invoke_function(path, "call_main", ())
    return '\nif __FILE__ == $0 then %s end\n\n' % expr

## Naming and imports

SUBS = {'Class': 'QuarkClass', 'end': 'end_', 'next': 'next_'}
def name(n):
    return SUBS.get(n, n).replace('-', '_')

def type(path, name, parameters):
    return ".".join(path + [name])

def import_(path, origin, dep, cache={}):
    if dep is None:
        # common 'directories'
        common = len(tuple(itertools.takewhile(
            lambda p: p[0]==p[1], zip(path[:-1], origin[:-1]))))
        # uncommon path directories
        lpath = path[common:-1]
        # uncommon origin directories
        lorigin = origin[common:-1]
        # go up and down and load the file
        rpath = "/".join(('..',) * len(lorigin) + lpath + path[-1:])
        require = "require_relative '%s' # %s %s %s" % (rpath, common, lpath, lorigin)
        if origin == ('quark_md',) and path != ('quark', 'reflect', ):
            # XXX: why does quark think that quark_md depends on quark.concurrent and quark.behavior ???
            require = "# for quark_md: %s" % (require, )
        elif len(origin) == 1 and origin[0].endswith("_md") and origin[0] != 'quark_md':
            require = "# for %s: %s" % (origin, require, )
        return require
    else:
        if len(origin) == 1:
            if len(path) == 1:
                return "require '%s' " % path[0]
            else:
                return "require '%s' # .../%s" % (path[0], "/".join(path[1:]))
        else:
            return "require '%s' # .../%s %s" % (path[0], "/".join(path[1:]), "/".join(origin))

def qualify(package, origin):
    # Always fully-qualify names, because Ruby is not fully lexically-scoped.
    return package

## Documentation

def doc(lines):
    return doc_helper(lines, '#  ', '#  ', '#  ')

## Comments

def comment(stuff):
    return '# %s\n' % stuff


def _to_camel_case(string):
    return ''.join(p[0:1].upper() + p[1:] for p in string.split('_'))

## Class definition

def clazz(doc, abstract, name, parameters, base, interfaces, static_fields, fields, constructors, methods):
    camel_case_name = _to_camel_case(name)
    prologue = []
    if fields:
        prologue.extend(['attr_accessor %s' % ', '.join(':' + name for name, value in fields)])
    postscript = []
    if static_fields:
        prologue.extend(['extend ::DatawireQuarkCore::Static', ''])
        prologue.extend(static_fields)
        postscript.append('%s.unlazy_statics' % camel_case_name)

    init_body = []
    if base:
        init_body.append('super')
    init_body.extend('self.%s = %s' % pairs for pairs in fields)
    init_fields = Templates.method(
        name='__init_fields__',
        parameters='',
        body=indent(init_body),
    )
    source = Templates.class_(
        name=camel_case_name,
        alias=name,
        base=('::Quark.' + base) if base else '::DatawireQuarkCore::QuarkObject',
        prologue=indent(prologue, leading_nl=False),
        constructors=indent(constructors),
        methods=indent(methods + [init_fields]),
        postscript=indent(postscript, level=0, leading_nl=False),
    )
    return source

def static_field(doc, clazz, type, name, value):
    return "static {name}: -> {{ {value} }}".format(name=name, value=value or 'nil')

def field(doc, clazz, type, name, value):
    return (name, value or null())

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

def static_method(doc, clazz, type, name, parameters, body):
    return Templates.method(
        name='self.' + name,
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

def interface(doc, iface, parameters, bases, static_fields, methods):
    return clazz(doc, False, iface, parameters, None, [], static_fields, [], [default_constructor(iface)], methods)

def interface_method(doc, iface, type, name, parameters, body):
    return Templates.method(
        name=name,
        parameters=', '.join(parameters),
        body=body or 'raise NotImplementedError, "this is an abstract method"',
    )

## Function definition

def function(doc, type, name, parameters, body):
    return Templates.method(
        name='self.' + name,
        parameters=', '.join(parameters),
        body=body,
    )

## Parameters for methods and functions

def param(type, name, value):
    if value is None:
        return name
    else:
        return '{}={}'.format(name, value)

## Blocks

def block(statements):
    return indent(statements or null())

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
    # assert v
    return v

def invoke_function(path, name, args):
    return Templates.method_call(receiver=full_ruby_name(path),
                                 method=name,
                                 args=', '.join(args))

def full_ruby_name(name):
    if isinstance(name, (tuple, list)):
        name = ".".join(name)
    name = name.replace('-', '_')
    if not name.startswith('::'):
        name = '::Quark.' + name
    return name

def construct(class_, args):
    return Templates.method_call(receiver=full_ruby_name(class_),
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

def invoke_static_method(path, clazz, method, args):
    return Templates.method_call(receiver=full_ruby_name(path + [clazz]),
                                 method=method,
                                 args=', '.join(args))

def get_field(expr, field):
    return "({receiver}).{name}".format(receiver=expr, name=field)

def get_static_field(path, clazz, field):
    return full_ruby_name(path + [clazz]) + '.' + field

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
    if n.text[-1:] == "L":
        return n.text[:-1]
    else:
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

def list_(elements):
    return '::DatawireQuarkCore::List.new([%s])' % ', '.join(elements)

def map(entries):
    pair = '{} => {}'.format
    return '{%s}' % (', '.join(pair(key, value) for key, value in entries))
