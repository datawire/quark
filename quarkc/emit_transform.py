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
from .tree import isa, split
from .ir import (IR, Root, Package, Namespace, NamespaceName,
                 Name, Definition, Template, ExternalFunction,
                 Check, Function, NativeFunction, Check, Void,
                 TestMethod, TestClass, FunctionInstantiation)

from .emit_target import Target, Python, Ruby, Java, Go, Javascript
from .emit_ir import Snowflake

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
    funs, checks, nss, rest = split(ns.definitions, isa(Function, ExternalFunction, FunctionInstantiation), isa(Check), isa(Namespace))
    funs = transform(ns, filter_definitions(funs, target), target)
    checks = transform(ns, checks, target)
    nss = transform(ns, nss, target)
    rest = transform(ns, rest, target)
    return Namespace(transform(ns.name, target), *tuple(chain(nss, funs, checks, rest)))

@match((many(Definition),), Target)
def filter_definitions(dfns, target):
    return tuple(d for d in dfns if include_definition(d, target))

@match(Definition, Target)
def include_definition(dfn, target):
    return True

@match(Template, Target)
def include_definition(template, target):
    return include_definition(template.dfn, target)

@match(NativeFunction, Target)
def include_definition(fun, target):
    # XXX: should put this on target
    tgt = target.__class__.__name__.lower()
    for c in fun.body.cases:
        if tgt == c.target.lower():
            return True
    return False

@match(Namespace, Go)
def transform(ns, target):
    """ Flatten the go namespace to toplevel for all Definitions, and test namespace for all Checks """
    checks, defs, _ = split(walk_ns_dfs(ns), isa(Check, TestClass), isa(Definition))
    checks = transform(ns, checks, target)
    defs = transform(ns, filter_definitions(defs, target), target)
    if checks:
        checks = (Namespace(NamespaceName.join(ns.name, Snowflake("test")), *checks),)
    return Namespace(transform(ns.name, target), *(defs + checks))

@match(Namespace)
def walk_ns_dfs(ns):
    nss, defs = split(ns.definitions, isa(Namespace))
    for d in defs:
        yield d
    for n in nss:
        for d in walk_ns_dfs(n):
            yield d

@match(Namespace, (choice(many(Definition), many(Namespace)),), Target)
def transform(ns, defs, target):
    return tuple(transform(dfn, target) for dfn in defs)

@match(Namespace, (many(choice(Function,FunctionInstantiation,ExternalFunction), min=1),), Java)
def transform(ns, funs, target):
    """ Inject a special snowflake namespace for java functions """
    if funs:
        return tuple((
            Namespace(NamespaceName.join(ns.name, Snowflake("Functions")), *funs),))
    else:
        return ()


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
