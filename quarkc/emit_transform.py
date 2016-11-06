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
from .match import match, many, choice
from .tree import isa, split, walk_dfs
from .ir import (IR, Root, Package, Namespace, NamespaceName,
                 Name, Definition, ExternalFunction,
                 Check, Function, Check, Void)

from .emit_target import Target, Python, Ruby, Java, Go, Javascript
from .emit_ir import TestMethod, TestClass, Snowflake

@match(IR, Target)
def transform(node, target):
    """ Rewrite top of IR tree into target-specific structure """
    return node

@match(Root, Target)
def transform(root, target):
    return Root(*[transform(pkg, target) for pkg in root.children])

@match(Package, Target)
def transform(pkg, target):
    return pkg.__class__(*[transform(ns, target) for ns in pkg.children])

@match(Namespace, Target)
def transform(ns, target):
    funs, checks, nss, rest = split(ns.definitions, isa(Function, ExternalFunction), isa(Check), isa(Namespace))
    funs = transform(ns, funs, target)
    checks = transform(ns, checks, target)
    nss = transform(ns, nss, target)
    rest = transform(ns, rest, target)
    return Namespace(transform(ns.name, target), *tuple(chain(nss, funs, checks, rest)))


@match(Namespace, Go)
def transform(ns, target):
    """ Flatten the go namespace to toplevel for all Definitions, and test namespace for all Checks """
    checks, defs, _ = split(walk_dfs(ns), isa(Check), isa(Definition))
    checks = transform(ns, checks, target)
    defs = transform(ns, defs, target)
    if checks:
        checks = (Namespace(NamespaceName.join(ns.name, Snowflake("test")), *checks),)
    return Namespace(transform(ns.name, target), *(defs + checks))


@match(Namespace, (choice(many(Definition), many(Namespace)),), Target)
def transform(ns, defs, target):
    return tuple(transform(dfn, target) for dfn in defs)

@match(Namespace, (choice(many(Function, min=1),many(ExternalFunction, min=1)),), Java)
def transform(ns, funs, target):
    """ Inject a special snowflake namespace for java functions """
    return tuple((
        Namespace(NamespaceName.join(ns.name, Snowflake("Functions")), *funs),))


@match(Namespace, (many(Check, min=1),), Java)
def transform(ns, checks, target):
    """ Java uses an annotated class for unit tests """
    return tuple((
        TestClass(Name.join(ns.name, Snowflake("Tests")),
              *[TestMethod(fn.name.path[-1], Void(), fn.body)
                for fn in checks]), ))

@match(Namespace, (many(Check, min=1),), choice(Ruby, Python, Javascript))
def transform(ns, checks, target):
    """ Python and Ruby use an annotated class for unit tests """
    return tuple((
        TestClass(Name.join(ns.name, ns.name.path[-1]),
              *[TestMethod(fn.name.path[-1], Void(), fn.body)
                for fn in checks]), ))
