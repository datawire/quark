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

from collections import OrderedDict
from textwrap import dedent

from .compiler import BUILTIN
from .helpers import doc_helper, indent, Code


not_implemented_template = """\
throw TypeError, '`{clazz}.{name}` is an abstract method';""".format

## Packaging

def package(name, version, packages, srcs, deps):
    files = OrderedDict()
    files.update(srcs)

    dependencies = ",\n        ".join(['"%s": "%s"' % d[1:] for d in deps])

    for path, readme in packages.items():
        files["%s/README.md" % "/".join(path)] = readme

    files["index.js"] = str(Code(comment, "%s\n" % "\n".join([import_(path, (), None) for path in packages])))

    files["package.json"] = """
{
    "name": "%s",
    "version": "%s",
    "main": "index.js",
    "dependencies": {
        %s
    }
}
        """ % (name, version, dependencies)
    return files

def class_file(path, name, fname):
    if path:
        return "/".join(path + ["index.js"])
    else:
        return "%s.js" % fname

def function_file(path, name, fname):
    return class_file(path, name, fname)

def package_file(path, name, fname):
    return "/".join(path + [name, "index.js"])

def make_class_file(path, name, rtloc=BUILTIN, why="class"):
    what = "/".join(list(path) + [name])
    head=dedent('''\
        var _qrt = require("%s/quark_runtime.js");
        _qrt.plugImports("%s");
    ''' % (rtloc, what))
    tail=dedent('''\n\
        _qrt.pumpImports("%s");
    ''' % (what))
    return Code(comment, head=head, tail=tail)

def make_function_file(path, name, mdpkg, rtloc=BUILTIN):
    return make_class_file(path, name, rtloc=rtloc, why="function")

def make_package_file(path, name, rtloc=BUILTIN):
    return make_class_file(path, name, rtloc=rtloc, why="package")

def main_file(name):
    return "%s.js" % name

def make_main_file(name):
    return Code(comment)

def main_prolog():
    return "exports.call_main = function () { main(process.argv.slice(1)); }"

def main(path, name):
    return invoke_function(path, name, ()) + ";"

## Naming and imports

SUBS = {"self": "this", "super": "super_"}
def name(n):
    return SUBS.get(n, n)

def type(path, name, parameters):
    return ".".join(path + [name])

def import_(path, origin, dep, seen=None, lazy=False):
    qual = qualify(path, origin)
    if seen is not None:
        if qual[0] in seen:
            return ""
        seen.add(qual[0])
    extra = ""
    if dep:
        req = dep
        extra = ".%s" % qual[0]
    else:
        if tuple(origin) + tuple(qual) == tuple(path):
            prefix = "./"
        else:
            prefix = "../"*len(origin)
        req = prefix + qual[0] + "/index.js"
    if lazy:
        return dedent(
            """\
            var %s; _qrt.lazyImport('%s', function(){
                %s = require('%s')%s;
                exports.%s = %s;
            });
            """) % (qual[0], req,
                    qual[0], req, extra,
                    qual[0], qual[0])
    else:
        return "var %s = require('%s')%s;\nexports.%s = %s;" % (
            qual[0], req, extra, qual[0], qual[0])

def qualify(package, origin):
    if package == origin: return []
    if not package: return []
    if not origin:
        return package
    elif package[:len(origin)] == origin:
        return package[len(origin):]
    else:
        return package

def native_include(path, du_name):
    assert path.endswith(".js"), path
    assert "/" not in path, (path, "Subpackage native inclusion not implemented for JS")
    return """var %s = require("%s/%s");\n""" % (path[:-3], du_name, path)

## Documentation

def doc(lines):
    return doc_helper(lines, "/**", " * ", " */")

def add_doc(doc, lines):
    if doc:
        docl = doc.splitlines()
    else:
        #docl = ["/**", " */"]  # Use this if we want to output for undocumented items
        return ""               # Using this because we don't want that noise

    # Allow calling with a (presumably one-line) string instead of a list
    if str(lines) == lines:
        lines = [lines]

    for line in lines:
        docl[-1:-1] = [" * " + line]

    return "\n".join(docl) + "\n"

def add_param_doc(doc, params):
    return add_doc(doc, ["@param {*} %s" % param for param in params])

## Comments

def comment(stuff):
    return "/* %s */\n" % stuff

## Class definition

def clazz(doc, abstract, clazz, parameters, base, interfaces, static_fields, fields, constructors, methods):
    if base: fields = [base + ".prototype.__init_fields__.call(this);"] + fields

    doc = add_doc(doc, "@class %s" % clazz)
    result = "\n// CLASS %s\n" % clazz + doc
    result += "\n".join(constructors)
    if base:
        result += "_qrt.util.inherits(%s, %s);\n" % (clazz, base)

    result += "\nfunction %s__init_fields__() {" % clazz + indent("\n".join(fields)) + "}\n"
    result += "%s.prototype.__init_fields__ = %s__init_fields__;\n" % (clazz, clazz)

    result += "\n".join("_qrt.lazyStatic(function(){%s});" % x for x in static_fields)

    result += "\n".join(methods)

    return result

def static_field(doc, clazz, type, name, value):
    doc = add_doc(doc, "@static")
    return "%s%s.%s = %s;" % (doc, clazz, name, value or "null")

def field(doc, clazz, type, name, value):
    return "%sthis.%s = %s;" % (doc, name, value or "null")

def field_init():
    return "this.__init_fields__();"

def default_constructor(clazz):
    return "function %s() {\n    this.__init_fields__();\n}\nexports.%s = %s;\n" % \
        (clazz, clazz, clazz)

def constructor(doc, name, parameters, body):
    return "\n%sfunction %s(%s)%s\nexports.%s = %s;\n" % \
        (doc, name, ", ".join(parameters), body, name, name)

def method(doc, clazz, type, name, parameters, body):
    doc = add_doc(doc, ["@method %s" % name, "@memberof %s" % clazz, "@instance"])
    doc = add_param_doc(doc, parameters)
    params = ", ".join(parameters)
    full_name = "%s_%s" % (clazz, name)
    trailer = "%s.prototype.%s = %s;" % (clazz, name, full_name)
    return "\n%sfunction %s(%s)%s\n" % (doc, full_name, params, body) + trailer

def static_method(doc, clazz, type, name, parameters, body):
    doc = add_doc(doc, ["@memberof %s" % clazz, "@static"])
    doc = add_param_doc(doc, parameters)
    params = ", ".join(parameters)
    full_name = "%s_%s" % (clazz, name)
    trailer = "%s.%s = %s;" % (clazz, name, full_name)
    return "\n%sfunction %s(%s)%s\n" % (doc, full_name, params, body) + trailer

def abstract_method(doc, clazz, type, name, parameters):
    doc = add_doc(doc, ["@abstract", "@memberof %s" % clazz, "@instance"])
    doc = add_param_doc(doc, parameters)
    params = ", ".join(parameters)
    full_name = "%s_%s" % (clazz, name)
    trailer = "%s.prototype.%s = %s;" % (clazz, name, full_name)
    body = not_implemented_template(clazz=clazz, name=name)
    return "\n%sfunction %s(%s) { %s }\n" % (doc, full_name, params, body) + trailer

## Interface definition

def interface(doc, iface, parameters, bases, static_fields, methods):
    doc = add_doc(doc, "@interface")
    return clazz(doc, False, iface, parameters, None, [], static_fields, [], [default_constructor(iface)], methods)

def interface_method(doc, iface, type, name, parameters, body):
    params = ", ".join(parameters)
    full_name = "%s_%s" % (iface, name)
    trailer = "%s.prototype.%s = %s;" % (iface, name, full_name)
    doc = add_doc(doc, ["@method %s" % name, "@memberof %s" % iface, "@instance"])
    if body is None:
        body = " { %s }" % not_implemented_template(clazz=iface, name=name)
        add_doc(doc, "@abstract")
    doc = add_param_doc(doc, parameters)

    return "\n%sfunction %s(%s)%s\n" % (doc, full_name, params, body) + trailer

## Function definition

def function(doc, type, name, parameters, body):
    trailer = "exports.%s = %s;" % (name, name)
    doc = add_doc(doc, "@function")
    doc = add_param_doc(doc, parameters)
    return "\n%sfunction %s(%s)%s\n" % (doc, name, ", ".join(parameters), body) + trailer

## Parameters for methods and functions

def param(type, name, value):
    if value is None:
        return "%s" % name
    else:
        return "%s = %s" % (name, value)

## Blocks

def block(statements):
    return " {%s}" % indent("\n".join(statements))

## Statements

def local(type, name, value):
    return "var %s = %s;" % (name, value or "null")

def expr_stmt(e):
    return "%s;" % e

def assign(lhs, rhs):
    return "%s = %s;" % (lhs, rhs)

def if_(pred, cons, alt):
    result = "if (%s)%s" % (pred, cons)
    if alt:
        result += " else%s" % alt
    return result

def while_(cond, body):
    return "while (%s)%s" % (cond, body)

def break_():
    return "break;"

def continue_():
    return "continue;"

def return_(expr):
    if expr:
        return "return %s;" % expr
    else:
        return "return;"

## Expressions

def class_ref(v):
    return v

def method_ref(v):
    return "this.%s" % v

def field_ref(v):
    return "this.%s" % v

def local_ref(v):
    return v

def invoke_function(path, name, args):
    return "%s(%s)" % (".".join(path + [name]), ", ".join(args))

def construct(clazz, args):
    return "new %s(%s)" % (clazz, ", ".join(args))

def invoke_super(clazz, base, args):
    return "%s.super_.call(%s)" % (clazz, ", ".join(["this"] + args))

def invoke_method(expr, method, args):
    return "(%s).%s(%s)" % (expr, method, ", ".join(args))

def invoke_method_implicit(method, args):
    return "this.%s(%s)" % (method, ", ".join(args))

def invoke_super_method(clazz, base, method, args):
    return "this.constructor.super_.prototype.%s.call(%s)" % (method, ", ".join(["this"] + args))

def invoke_static_method(path, clazz, method, args):
    return "%s.%s(%s)" % (".".join(path + [clazz]), method, ", ".join(args))

def get_static_field(path, clazz, field):
    return "%s.%s" % (".".join(path + [clazz]), field)

def get_field(expr, field):
    return "(%s).%s" % (expr, field)

def cast(type, expr):
    if type == '':  # TODO why does this happen?
        return expr
    assert expr
    template = '_qrt.cast({expr}, function () {{ return {type}; }})'.format
    return template(expr=expr, type=type)

## Literals

def null():
    return "null"

def bool_(b):
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
    return result

def list_(elements):
    return "[%s]" % ", ".join(elements)

def map(entries):
    return "new Map([%s])" % (", ".join(["[%s, %s]" % e for e in entries]))
