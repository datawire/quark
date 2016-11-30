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

from .match import match, choice
from .ir import (
    Type, ClassType, Name, Ref, AbstractType,
    Param, Var, This, Call, Invoke, Send, Construct, Get,
    Void, Null,
    Int, IntLit, Float, FloatLit, String, StringLit, Bool, BoolLit,
    Map, List, Primitive, Boxed, And, Or, Any, Scalar, Cast
)

from .emit_target import Target, Python, Java, Go, Ruby, Javascript


@match(Type, choice(Java, Ruby, Python, Javascript))
def expr(type, target):
    return target.nameof(type.name)

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

## Bool

@match(Bool, Target)
def expr(intt, target):
    return ""

@match(Bool, Go)
def expr(intt, target):
    return "bool"

@match(Bool, Java)
def expr(intt, target):
    return "boolean"

## Int

@match(Int, Target)
def expr(intt, target):
    return ""

@match(Int, choice(Java, Go))
def expr(intt, target):
    # XXX: int or long ?
    return "int"

## Any

@match(Any, Go)
def expr(any, target):
    return "interface{}"

@match(Any, Java)
def expr(any, target):
    return "Object"

## Scalar

@match(Scalar, Go)
def expr(scalar, target):
    return "interface{}"

@match(Scalar, Java)
def expr(scalar, target):
    return "Object"

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
def expr(stringt, target):
    return ""

@match(String, Java)
def expr(stringt, target):
    return "String"

@match(String, Go)
def expr(stringt, target):
    return "string"

## Map

@match(Map, Target)
def expr(mapt, target):
    return ""

@match(Map, Java)
def expr(mapt, target):
    return "java.util.Map<{key},{value}>".format(
        key=expr(mapt, mapt.key, target),
        value=expr(mapt, mapt.value, target))

@match(Map, AbstractType, Java)
def expr(mapt, type, target):
    return expr(type, target)

@match(Map, Int, Java)
def expr(mapt, type, target):
    return "Integer"

@match(Map, Go)
def expr(mapt, target):
    return "map[{key}] {value}".format(
        key=expr(mapt.key, target),
        value=expr(mapt.value, target))

## List

@match(List, Target)
def expr(listt, target):
    return ""

@match(List, Java)
def expr(listt, target):
    return "java.util.List<{value}>".format(
        value=expr(listt, listt.value, target))

@match(List, AbstractType, Java)
def expr(listt, type, target):
    return expr(type, target)

@match(List, Int, Java)
def expr(listt, type, target):
    return "Integer"

@match(List, Go)
def expr(listt, target):
    return "*[]{value}".format(
        value=expr(listt.value, target))

@match(Primitive, Target)
def expr(prim, target):
    tgt = target.__class__.__name__.lower()
    for block in prim.blocks:
        context = dict((k,expr(v,target)) for k,v in block.context.mappings)
        for text in block.cases:
            if text.target.lower() == tgt:
                return text.template.format(**context)
    assert False, "yay balmers peak!!! %r" % prim

## Boxed

@match(Boxed, Target)
def expr(boxed, target):
    return ""

@match(Boxed, Java)
def expr(boxed, target):
    return expr(boxed, boxed.type, target)

@match(Boxed, AbstractType, Java)
def expr(boxed, type, target):
    return expr(type, target)

@match(Boxed, Int, Java)
def expr(boxed, type, target):
    return "Integer"

@match(Boxed, Go)
def expr(boxed, target):
    return expr(boxed.type, target)

## Param

@match(Param, choice(Python, Ruby, Javascript))
def expr(param, target):
    return target.varname(param.name)

@match(Param, Java)
def expr(param, target):
    return "{type} {name}".format(
        type=expr(param.type, target),
        name=target.varname(param.name))

@match(Param, Go)
def expr(param, target):
    return "{name} {type}".format(
        type=expr(param.type, target),
        name=target.varname(param.name))

## Names

@match(Name, Java)
def expr(name, target):
    return target.nameof(name)


@match(Ref, Target)
def expr(name, target):
    return target.nameof(name)

## Variables

@match(Var, Target)
def expr(var, target):
    return target.varname(var.name)

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

@match(StringLit, Python)
def expr(lit, target):
    # XXX: this is potenitally good enough
    return 'u"' + lit.value.encode('unicode_escape').replace('"','\\"') + '"'

## StringLit

@match(BoolLit, choice(Ruby, Java, Go, Javascript))
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
        name=expr(cons.name, target),
        args = ", ".join(expr(a, target) for a in cons.args)
    )

@match(Construct, Python)
def expr(cons, target):
    return "{name}({args})".format(
        name=expr(cons.name, target),
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

@match(Construct, Javascript)
def expr(cons, target):
    return "new {name}({args})".format(
        name=expr(cons.name, target),
        args = ", ".join(expr(a, target) for a in cons.args)
    )


## Cast

@match(Cast, Go)
def expr(cast, target):
    return "((interface {{}})({expr})).({type})".format(
        expr=expr(cast.expr, target),
        type=expr(cast.type, target)
    )

@match(Cast, Java)
def expr(cast, target):
    return "(({type}) ({expr}))".format(
        type=expr(cast.type, target),
        expr=expr(cast.expr, target)
    )

@match(Cast, choice(Python, Ruby, Javascript))
def expr(cast, target):
    return expr(cast.expr, target)

## And

@match(And, choice(Go, Javascript, Java))
def expr(and_, target):
    return " && ".join("({expr})".format(
        expr=expr(exp, target)) for exp in and_.exprs)

@match(And, choice(Python, Ruby))
def expr(and_, target):
    return " and ".join("({expr})".format(
        expr=expr(exp, target)) for exp in and_.exprs)

## Or

@match(Or, choice(Go, Javascript, Java))
def expr(or_, target):
    return " || ".join("({expr})".format(
        expr=expr(exp, target)) for exp in or_.exprs)

@match(Or, choice(Python, Ruby))
def expr(or_, target):
    return " or ".join("({expr})".format(
        expr=expr(exp, target)) for exp in or_.exprs)

## Get

@match(Get, Go)
def expr(fget, target):
    return "{target}.{field}".format(
        target=expr(fget.expr, target),
        field=target.upcase(fget.name))

@match(Get, choice(Python, Java, Javascript))
def expr(fget, target):
    return "{target}.{field}".format(
        target=expr(fget.expr, target),
        field=fget.name)

@match(Get, Ruby)
def expr(fget, target):
    return "{target}.{field}".format(
        target=expr(fget.expr, target),
        field=fget.name)
