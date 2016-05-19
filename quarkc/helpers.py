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

import _metadata
from collections import OrderedDict
from .dispatch import dispatch
from .ast import *

try:  # py3
    from shlex import quote as sh_quote
except ImportError:  # py2
    from pipes import quote as sh_quote


DEFAULT = object()

@dispatch(Class, Field)
def get_field(cls, field, default=DEFAULT):
    return get_field(cls, field.name, default)

@dispatch(Class, Name)
def get_field(cls, name, default=DEFAULT):
    return get_field(cls, name.text, default)

@dispatch(Class, basestring)
def get_field(cls, name, default=DEFAULT):
    if name in cls.env:
        return cls.env[name]
    else:
        for type in cls.bases:
            if type.resolved.type:
                result = get_field(type.resolved.type, name, None)
                if result: return result
        else:
            if default is DEFAULT:
                raise KeyError(name)
            else:
                return default

@dispatch(Field)
def is_meta(f):
    return f.name.text.endswith("_ref") and f.type.code() == "reflect.Class"

@dispatch(File)
def is_meta(f):
    return f.name == "reflector"

def get_fields_r(cls, result):
    for b in cls.bases:
        get_fields_r(b.resolved.type, result)
    for d in cls.definitions:
        if isinstance(d, Field):
            if is_meta(d): continue
            result.append(d)
    return result

def get_fields(cls):
    result = []
    get_fields_r(cls, result)
    return result

@dispatch(Callable)
def has_return(fun):
    return has_return(fun.body)

@dispatch(Local)
def has_return(l): False

@dispatch(If)
def has_return(iff):
    return has_return(iff.consequence) and has_return(iff.alternative)

@dispatch(Block)
def has_return(b):
    return has_return(b.statements)

@dispatch(list)
def has_return(stmts):
    for stmt in stmts:
        if has_return(stmt):
            return True
    return False

@dispatch(Assign)
def has_return(assgn): return False

@dispatch(While)
def has_return(wh): return False

@dispatch(Return)
def has_return(r): return True

@dispatch(ExprStmt)
def has_return(e): return False

@dispatch(type(None))
def has_return(e): return False

@dispatch(Native)
def has_return(e): return False

def has_super(fun):
    for stmt in fun.body.statements:
        if is_super(stmt):
            return True
    return False

@dispatch(Statement)
def is_super(stmt):
    return False

@dispatch(ExprStmt)
def is_super(stmt):
    return is_super(stmt.expr)

@dispatch(Expression)
def is_super(expr):
    return False

@dispatch(Call)
def is_super(call):
    return isinstance(call.expr, Super)

def is_abstract(cls):
    for d in cls.definitions:
        if isinstance(d, Method) and d.body is None:
            return True
    return False

def constructor(cls):
    cons = constructors(cls)
    if not cons:
        cons = base_constructors(cls)
    if cons:
        assert len(cons) == 1
        return cons[0]

def constructors(cls):
    return [d for d in cls.definitions if isinstance(d, Callable) and d.type is None]

def base_type(cls):
    for b in cls.bases:
        if is_extendable(b.resolved.type):
            return b

def base_constructors(cls):
    base = base_type(cls)
    cons = []
    while base:
        cons = constructors(base.resolved.type)
        if cons:
            break
        else:
            base = base_type(base.resolved.type)
    return cons

def base_bindings(cls):
    bindings = OrderedDict()
    for b in cls.bases:
        bindings.update(b.resolved.bindings)
        bb = base_bindings(b.resolved.type)
        bindings.update(bb)
    return bindings

@dispatch(String)
def literal_to_str(lit):
    return str(lit)[1:-1]

@dispatch(Number)
def literal_to_str(lit):
    return str(lit)

def get_package_version(pkg):
    for ann in pkg.annotations:
        if ann.name.text == "version":
            assert len(ann.arguments) == 1
            return literal_to_str(ann.arguments[0])
    return "0.0.1"

def sanitize(name):
    return name.replace('-', '_').replace('.', '_')

def filebase(name):
    return os.path.splitext(os.path.basename(name))[0]

def namever(obj):
    root = obj.root
    for file in obj.root.files:
        if file.dist: return file.dist.name.text, file.dist.version
    if isinstance(obj, File):
        file = obj
    else:
        file = obj.file
    name = sanitize(filebase(file.name))
    packages = [d for d in file.definitions if isinstance(d, Package)]
    if packages:
        firstPackage = packages[0]
        version = get_package_version(firstPackage)
    else:
        version = "0.0.1"
    return name, version

def mdroot(file):
    name, _ = namever(file)
    return name + "_md"

def is_extendable(node):
    return isinstance(node.resolved.type, Class) and \
        not isinstance(node.resolved.type, (Primitive, Interface))

@dispatch(Class, dict)
def get_methods(cls, result, predicate, omitInterface):
    for dfn in cls.definitions:
        if isinstance(dfn, Callable) and dfn.type and predicate(dfn):
            name = dfn.name.text
            if name not in result:
                result[name] = dfn
    for base in cls.bases:
        if not isinstance(base.resolved.type, (Primitive, Interface)[:omitInterface and 2 or 1]):
            get_methods(base.resolved.type, result, predicate, omitInterface)

@dispatch(Class)
def get_methods(cls, predicate, omitInterface):
    result = OrderedDict()
    get_methods(cls, result, predicate, omitInterface)
    return result

@dispatch(Class)
def get_methods(cls, omitInterface):
    return get_methods(cls, lambda x: True, omitInterface)

@dispatch(Class, dict, dict, dict)
def get_defaulted_methods(cls, result, derived, bindings):
    if isinstance(cls, (Interface, Primitive)):
        get_methods(cls, result, lambda dfn: dfn.body and dfn.name.text not in derived, True)
    for base in cls.bases:
        bindings.update(base.resolved.bindings)
        get_defaulted_methods(base.resolved.type, result, derived, bindings)

@dispatch(Class)
def get_defaulted_methods(cls):
    result = OrderedDict()
    derived = get_methods(cls, True)
    bindings = OrderedDict()
    get_defaulted_methods(cls, result, derived, bindings)
    return result, bindings

def indent(st, level=4, leading_nl=True):
    if st:
        if isinstance(st, (tuple, list)):
            st = "\n".join(st)
        spaces = " "*level
        pst = ""
        while pst != st:
            pst = st
            st = st.replace("\n\n\n","\n\n")
        st = ("\n" + st).replace("\n", "\n%s" % spaces) + "\n"
        while pst != st:
            pst = st
            st = st.replace("\n%s\n" % spaces, "\n\n")
        if not leading_nl:
            st = st[1:]
        return st
    else:
        return ""

class Code:

    identifier = None

    def __init__(self, comment, body="", head="", tail=""):
        if Code.identifier is not None and comment is not None:
            head = comment(Code.identifier) + head

        self.body = body
        self.head = head
        self.tail = tail

    def __add__(self, code):
        return Code(None, self.body + code, self.head, self.tail)

    def __str__(self):
        return "%s%s%s" % (self.head, self.body, self.tail)

def doc(obj):
    lines = []
    for a in obj.annotations:
        if a.name.text == "doc":
            doc_eval(a, lines)
    return lines

@dispatch(Annotation)
def doc_eval(ann, lines):
    for arg in ann.arguments:
        doc_eval(arg, lines)

@dispatch(String)
def doc_eval(st, lines):
    # XXX: need to properly process string literal
    lines.append(st.text[1:-1])

def doc_helper(lines, head="", prefix="", tail=""):
    if lines:
        result = [head]
        result.extend([("%s%s" % (prefix, l)).rstrip() for l in lines])
        result.append(tail)
        result.append("")
        return "\n".join(result)
    else:
        return ""

@dispatch(Package)
def readme(pkg, lines):
    for d in pkg.definitions:
        readme(d, lines)

@dispatch(Function)
def readme(fun, lines):
    lines.append("## %s(%s)" % (fun.name, fun.params))
    lines.append(doc_helper(doc(fun)))

@dispatch(Macro)
def readme(fun, lines):
    lines.append("## %s(%s)" % (fun.name, fun.params))
    lines.append(doc_helper(doc(fun)))

@dispatch(Method)
def readme(m, lines):
    lines.append("### %s.%s(%s)" % (m.clazz.name, m.name, m.params))
    lines.append(doc_helper(doc(m)))

@dispatch(Class)
def readme(cls, lines):
    lines.append("## %s" % cls.name)
    lines.append(doc_helper(doc(cls)))

def is_newer(target, *deps):
    if target is None: return False
    if not os.path.exists(target): return False
    ctime = os.stat(target).st_mtime
    for d in deps:
        if d is None: return True
        if not os.path.exists(d): return True
        diff = ctime - os.stat(d).st_mtime
        if diff <= 0:
            return False
    return True

def compiled_quark(url):
    return "%sc" % url
