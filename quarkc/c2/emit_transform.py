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

from itertools import chain
from .match import match, many
from .tree import Query, isa, split
from .ir import (IR, Root, Package, Namespace,
                 Name, Definition,
                 Check, Function, Class, Check, Void)

from .emit_target import Target, Python, Ruby, Java, Go, Snowflake
from .emit_ir import TestMethod, StaticMethod, TestClass

@match(Root, Target)
def transmogrify(root, target):
    """ Convert the generic IR into target specific IR """
    return transmogrify(root, target, Query(root))

@match(IR, Target, Query)
def transmogrify(node, target, q):
    return node

@match(Root, Target, Query)
def transmogrify(root, target, q):
    return Root(*[transmogrify(pkg, target, q) for pkg in root.children])

@match(Package, Target, Query)
def transmogrify(pkg, target, q):
    return Package(*[transmogrify(ns, target, q) for ns in pkg.children])

@match(Namespace, Target, Query)
def transmogrify(ns, target, q):
    return Namespace(*[transmogrify(nss, target, q) for nss in ns.children])

@match(Namespace, Java, Query)
def transmogrify(ns, target, q):
    funs, checks, rest = split(ns.definitions, isa(Function), isa(Check))
    funs = transmogrify(ns, funs, target, q)
    checks = transmogrify(ns, checks, target, q)
    return Namespace(ns.name, *[
        transmogrify(ch, target, q) for ch in chain(funs, checks, rest)])


@match(Namespace, (many(Definition),), Target, Query)
def transmogrify(ns, defs, target, q):
    return defs

@match(Namespace, (many(Function, min=1),), Java, Query)
def transmogrify(ns, funs, target, q):
    return tuple((
        Class(Name.join(ns.name, Snowflake("Functions")),
              *[StaticMethod(fn.name.path[-1], fn.type, *(fn.params + (fn.body, )))
                for fn in funs]), ))


@match(Namespace, (many(Check, min=1),), Java, Query)
def transmogrify(ns, checks, target, q):
    return tuple((
        TestClass(Name.join(ns.name, Snowflake("Tests")),
              *[TestMethod(fn.name.path[-1], Void(), fn.body)
                for fn in checks]), ))
