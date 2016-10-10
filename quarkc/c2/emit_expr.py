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

from .match import *
from .ir import *
from .ir import backlink
from . import tr

from .emit_target import *


@match(Type, Java)
def expr(type, target):
    return ".".join(type.name.path)

@match(ClassType, Go)
def expr(type, target):
    return "*" + target.nameof(type.name)

@match(Type, Go)
def expr(type, target):
    return target.nameof(type.name)

## Void

@match(Void, Target)
def expr(void, target):
    return ""

@match(Void, Java)
def expr(void, target):
    return "void"

## Int

@match(Int, Target)
def expr(intt, target):
    return ""

@match(Int, choice(Java, Go))
def expr(intt, target):
    # XXX: int or long ?
    return "int"

## Float

@match(Float, Target)
def expr(floatt, target):
    return ""

@match(Float, Java)
def expr(floatt, target):
    return "double"

@match(Float, Go)
def expr(floatt, target):
    return "float64"

## String

@match(String, Target)
def expr(floatt, target):
    return ""

@match(String, Java)
def expr(floatt, target):
    return "String"

@match(String, Go)
def expr(floatt, target):
    return "string"

## Param

@match(Param, Python)
def expr(param, target):
    return param.name

@match(Param, Ruby)
def expr(param, target):
    return param.name

@match(Param, Java)
def expr(param, target):
    return "{type} {name}".format(
        type=expr(param.type, target),
        name=param.name)

@match(Param, Go)
def expr(param, target):
    return "{name} {type}".format(
        type=expr(param.type, target),
        name=param.name)
## Names

@match(Name, Java)
def expr(name, target):
    return ".".join(name.path)

@match(Ref, Python)
def expr(name, target):
    # need to emit an alias here that has been set up for appropriately in a prior pass, maybe have a header(blah, target) and possibly footer(blah, target) pass that can be invoked around the code(blah, target)
    return "%s_%s" % (name.package, "_".join(name.path))

@match(Ref, Ruby)
def expr(name, target):
    return ".".join(list(map(target.upcase, name.path[:-1])) + [name.path[-1]])

@match(Ref, Go)
def expr(name, target):
    return target.nameof(name)

## Variables

@match(Var, Target)
def expr(var, target):
    return var.name

@match(Var, Python)
def expr(var, target):
    return var.name

## This

@match(This, Target)
def expr(this, target):
    return "this"

@match(This, choice(Ruby, Python))
def expr(var, target):
    return "self"

## Null

@match(Null, Target)
def expr(this, target):
    return "null"

@match(Null, choice(Ruby, Go))
def expr(var, target):
    return "nil"

@match(Null, Python)
def expr(var, target):
    return "None"

## Numbers

@match(choice(IntLit, FloatLit), Target)
def expr(lit, target):
    # XXX: probably good enough
    return str(lit.value)

## StringLit

@match(StringLit, Target)
def expr(lit, target):
    # XXX: this is potenitally good enough
    return '"' + lit.value.encode('unicode_escape').replace('"','\\"') + '"'

## StringLit

@match(BoolLit, choice(Ruby, Java, Go))
def expr(lit, target):
    return lit.value and "true" or "false"

@match(BoolLit, Python)
def expr(lit, target):
    return str(lit.value)

## Call

@match(Call, Target)
def expr(call, target):
    return "{callable}({args})".format(
        callable=expr(call.expr, target),
        args=", ".join([expr(a, target) for a in call.args])
    )

## Invoke

@match(Invoke, Target)
def expr(invoke, target):
    return "{function}({args})".format(
        function=funcall(invoke.name, target),
        args=", ".join([expr(a, target) for a in invoke.args])
    )

@match(Ref, Target)
def funcall(name, target):
    return expr(name, target)

@match(Ref, Python)
def funcall(name, target):
    if target.is_interpackage(name):
        return expr(name, target) + "." + name.path[-1]
    else:
        return name.path[-1]

@match(Ref, Java)
def funcall(name, target):
    return ".".join(name.path[:-1] + ("Functions",) + name.path[-1:])

## Send

@match(Send, Target)
def expr(send, target):
    return "{object}.{method}({args})".format(
        object=expr(send.expr, target),
        method=send.name,
        args=", ".join([expr(a, target) for a in send.args])
    )

@match(Send, Go)
def expr(send, target):
    return "{object}.{method}({args})".format(
        object=expr(send.expr, target),
        method=target.upcase(send.name),
        args=", ".join([expr(a, target) for a in send.args])
    )

## Construct

@match(Construct, Go)
def expr(cons, target):
    return "{name}__Construct({args})".format(
        name=code(cons.name, target),
        args = ", ".join(expr(a, target) for a in cons.args)
    )

@match(Construct, Python)
def expr(cons, target):
    return "{name}({args})".format(
        name=code(cons.name, target),
        args = ", ".join(expr(a, target) for a in cons.args)
    )

@match(Construct, Ruby)
def expr(cons, target):
    return "{name}.new({args})".format(
        name=expr(cons.name, target),
        args = ", ".join(expr(a, target) for a in cons.args)
    )

@match(Construct, Java)
def expr(cons, target):
    return "new {name}({args})".format(
        name=expr(cons.name, target),
        args = ", ".join(expr(a, target) for a in cons.args)
    )


## Get

@match(Get, Go)
def expr(fget, target):
    return "{target}.{field}".format(
        target=expr(fget.expr, target),
        field=target.upcase(fget.name))

@match(Get, choice(Python, Java))
def expr(fget, target):
    return "{target}.{field}".format(
        target=expr(fget.expr, target),
        field=fget.name)

@match(Get, Ruby)
def expr(fget, target):
    return "{target}.{field}".format(
        target=expr(fget.expr, target),
        field=fget.name)

## Set

@match(Set, Go)
def expr(fset, target):
    return "({target}.{field} = {value})".format(
        target=expr(fset.expr, target),
        field=target.upcase(fset.name),
        value=expr(fset.value, target))

@match(Set, choice(Python, Java))
def expr(fset, target):
    return "({target}.{field} = {value})".format(
        target=expr(fset.expr, target),
        field=fset.name,
        value=expr(fset.value, target))

@match(Set, Ruby)
def expr(fset, target):
    return "({target}.{field} = {value})".format(
        target=expr(fset.expr, target),
        field=fset.name,
        value=expr(fset.value, target))

