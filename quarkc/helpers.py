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

from .ast import (
    Class, Field, File, Name, Callable, Local, If, Block, Assign, While,
    Return, ExprStmt, Native, Statement, Expression, Call, Super, Method,
    String, Number, Package, Primitive, Interface, Annotation, Macro,
    Function, CompilerVersionSpec, AST,
)
from .c2.match import *
from .exceptions import CompileError

DEFAULT = object()

@match(Callable)
def has_return(fun):
    return has_return(fun.body)

@match(Local)
def has_return(l):
    return False

@match(If)
def has_return(iff):
    return has_return(iff.consequence) and has_return(iff.alternative)

@match(Block)
def has_return(b):
    return has_return(b.statements)

@match(list)
def has_return(stmts):
    for stmt in stmts:
        if has_return(stmt):
            return True
    return False

@match(Assign)
def has_return(assgn): return False

@match(While)
def has_return(wh): return False

@match(Return)
def has_return(r): return True

@match(ExprStmt)
def has_return(e): return False

@match(type(None))
def has_return(e): return False

@match(Native)
def has_return(e): return False

@match(Callable)
def has_super(fun):
    for stmt in fun.body.statements:
        if is_super(stmt):
            return True
    return False

@match(Statement)
def is_super(stmt):
    return False

@match(ExprStmt)
def is_super(stmt):
    return is_super(stmt.expr)

@match(Expression)
def is_super(expr):
    return False

@match(Call)
def is_super(call):
    return isinstance(call.expr, Super)

def sanitize(name):
    return name.replace('-', '_').replace('.', '_')

def filebase(name):
    return os.path.splitext(os.path.basename(name))[0]

class is_newer(object):
    def __init__(self, target, *deps):
        self.target = target
        self.deps = deps
        self._init()
    
    def _init(self):
        def resolve(result, explanation):
            self.explanation = explanation
            self.result = result
        if self.target is None:
            return resolve(False, "target is None")
        if not os.path.exists(self.target):
            return resolve(False, "target does not exist")
        ctime = os.stat(self.target).st_mtime
        for d in self.deps:
            if d is None:
                return resolve(True, "a dependency is None")
            if not os.path.exists(d):
                return resolve(True, "dependency does not exist %s" % d)
            diff = ctime - os.stat(d).st_mtime
            if diff <= 0:
                return resolve(False, "dependency %s is younger by %s" % (d, diff))
        return resolve(True, "OK")

    def __bool__(self):
        return self.result
    __nonzero__ = __bool__

    def __str__(self):
        return "is_newer(%s (%s, %s) -> %s)" % (
            self.result, self.target, self.deps, self.explanation)
