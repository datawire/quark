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
from .match import match, many, choice
from .ir import (Root, Package, Namespace, Definition,
                 Check, Function, Ref, ExternalPackage, TestClass,
                 NativeImport)
from .tree import walk_dfs, isa, split
from . import tr
from .emit_target import Target, Go, Ruby, Java, Python, Javascript
from .emit_code import code
from .emit_ir import Snowflake


@match(Root, Target)
def generate(root, target):
    """ Generate a stream of tr.Files """
    for p in root.packages:
        for m in generate(p, target):
            yield m

@match(ExternalPackage, Target)
def generate(pkg, target):
    # no output for ExternalPackage
    if False: yield

@match(choice(Package, Namespace), Target)
def generate(pkg, target):
    # generic tree traverse
    for d in pkg.definitions:
        for m in generate(pkg, d, target):
            yield m
        for m in generate(d, target):
            yield m

@match(Package, Namespace, Target)
def generate(pkg, ns, target):
    # default toplevel namespace handler
    if False: yield

@match(Namespace, Namespace, Target)
def generate(parent, ns, target):
    # default nested namespace handler
    if False: yield

@match(Namespace, Definition, Target)
def generate(ns, dfn, Target):
    # Definitions are supposed to be handled by a two-parameter version
    if False: yield

@match(Definition, Target)
def generate(dfn, target):
    assert False, "No transform for %s %s %s" % (dfn.__class__.__name__, dfn.name, target.__class__.__name__)

@match(Namespace, Namespace, Go)
def generate(parent, ns, target):
    "There should be no nested namespaces in go, except the special case for go checks"
    assert ns.name.path[-1] == Snowflake("test")
    yield tr.File(filename(ns, target), header(ns, target),
                  *tuple(code(dfn, target) for dfn in ns.definitions))

@match(Namespace, Namespace, Java)
def generate(parent, ns, target):
    "Convert special snowflake namespace for functions to a java class"
    if ns.name.path[-1] == Snowflake("Functions"):
        yield tr.File(filename(ns, target), header(ns, target),
                      tr.Compound("public class Functions", tr.Block(
                          *tuple(code(dfn, target) for dfn in ns.definitions))))

@match(Package, Namespace, Python)
def generate(parent, ns, target):
    yield tr.File("/".join((target.nameof(ns), "__init__.py",)),
                  tr.Simple("from .__quark_impl__.__quark_namespace__ import *"))
    yield tr.File("/".join((target.nameof(ns), "__quark_impl__", "__init__.py",)))
    yield tr.File(filename(ns, ("__quark_namespace__",), target),
                  tuple(ffi_namespace(ns, target)))

@match(Namespace, Namespace, Python)
def generate(parent, ns, target):
    yield tr.File(filename(ns, ("__init__",), target))
    yield tr.File(filename(ns, ("__quark_namespace__",), target),
                  tuple(ffi_namespace(ns, target)))

@match(Namespace, Python)
def ffi_namespace(ns, target):
    _, dfns, nss, _ = split(ns.children, isa(Check,TestClass), isa(Definition), isa(Namespace))
    for nns in nss:
        ns_name = target.nameof(nns)
        yield tr.Simple("from .{module} import __quark_namespace__ as {name}".format(
            module = ns_name,
            name = ns_name
            ))
    for dfn in dfns:
        dfn_name = target.nameof(dfn)
        yield tr.Simple("from .{module} import {name}".format(
            module = dfn_name,
            name = dfn_name
            ))



@match(Package, Ruby)
def generate(pkg, target):
    for ns in pkg.definitions:
        for m in generate(pkg, ns, target):
            yield m
        for m in generate(ns, target):
            yield m
    yield tr.File("/".join(("lib", pkg.name.package )) + ".rb",
                  tr.Comment("Package entrypoint"),
                  tuple(tr.Simple("require_relative \"{package}/{module}\"".format(
                      package = ns.name.package,
                      module = ns.name.path[0]))
                        for ns in filter(isa(Namespace), pkg.definitions)))
    yield tr.File("/".join(("test", "ts_" + ns.name.package)) + ".rb",
                  tr.Comment("Package testsuite"),
                  tuple(tr.Simple("require_relative \"{module}\"".format(
                      module = "/".join(module_path(tc, target))))
                        for tc in filter(isa(TestClass), walk_dfs(pkg))))

@match(Package, Namespace, Ruby)
def generate(parent, ns, target):
    yield tr.File(filename(ns, ("lib",), target),
                  tr.Comment("toplevel namespace"),
                  tuple(ffi_namespace(ns, target)))

@match(Namespace, Namespace, Ruby)
def generate(parent, ns, target):
    yield tr.File(filename(ns, ("lib",), target),
                  tr.Comment("nested namespace"),
                  tuple(ffi_namespace(ns, target)))

@match(Namespace, Ruby)
def ffi_namespace(ns, target):
    _, dfns, _ = split(ns.children, isa(Check,TestClass), isa(Definition,Namespace))
    for dfn in dfns:
        yield tr.Simple("require_relative \"{module}\"".format(
            module = "/".join(module_path(ns, dfn, target))))


@match(Package, Javascript)
def generate(pkg, target):
    for ns in pkg.definitions:
        for m in generate(pkg, ns, target):
            yield m
        for m in generate(ns, target):
            yield m
    yield tr.File("/".join((pkg.name.package, "index" )) + ".js",
                  tr.Simple("\"use strict\";"),
                  tr.Comment("Package entrypoint"),
                  tuple(
                      tr.Simple("exports.{module} = require('./lib/{module}')".format(
                          package = ns.name.package,
                          module = ns.name.path[0]))
                      for ns in filter(isa(Namespace), pkg.definitions)))
    yield tr.File("/".join((pkg.name.package, "package.json" )),
                  tr.Compound("", tr.Block(
                      tr.Simple("\"name\": \"{package}\",".format(
                          package = ns.name.package)),
                      tr.Simple("\"main\": \"index.js\""))))

@match(Package, Namespace, Javascript)
def generate(parent, ns, target):
    yield tr.File(filename(ns, target),
                  tr.Simple("\"use strict\";"),
                  tr.Comment("toplevel namespace"),
                  tuple(ffi_namespace(ns, target)))

@match(Namespace, Namespace, Javascript)
def generate(parent, ns, target):
    yield tr.File(filename(ns, target),
                  tr.Simple("\"use strict\";"),
                  tr.Comment("nested namespace"),
                  tuple(ffi_namespace(ns, target)))

@match(Namespace, Javascript)
def ffi_namespace(ns, target):
    _, dfns, nss, _ = split(ns.children, isa(Check,TestClass), isa(Definition), isa(Namespace))
    for dfn in dfns:
        yield tr.Simple("exports.{name} = require(\"{module}\").impl".format(
            name = target.nameof(dfn),
            module = "/".join(require_path(ns, dfn, target))))
    for nns in nss:
        yield tr.Simple("exports.{name} = require(\"{module}\")".format(
            name = target.nameof(nns),
            module = "/".join(require_path(ns, nns, target))))

@match(choice(Namespace, Definition), choice(Namespace, Definition), Javascript)
def require_path(dfn, ref_dfn, target):
    ref_module_path = module_path(dfn, ref_dfn, target)
    if ref_module_path[0][0] != ".":
        return (".",) + ref_module_path
    else:
        return ref_module_path

@match(Definition, choice(Go, Python, Java, Javascript))
def generate(dfn, target):
    yield tr.File(filename(dfn, target), header(dfn, target), code(dfn, target))

@match(Definition, Ruby)
def generate(dfn, target):
    yield tr.File(filename(dfn, target), header(dfn, target),
                  generate(dfn, module_ffi_path(dfn, target), target)
    )


@match(TestClass, Javascript)
def generate(dfn, target):
    yield tr.File(filename(dfn, target), header(dfn, target),
                  generate(dfn, module_path(dfn, target), target)
    )

@match(TestClass, (), Javascript)
def generate(dfn, nesting, target):
    return code(dfn, target)

@match(TestClass, (many(basestring, min=1),), Javascript)
def generate(dfn, nesting, target):
    return tr.Compound("describe('{ns}', function()".format(ns=nesting[0]),
                       tr.Block(generate(dfn, nesting[1:], target), extra_close=")"))

@match(Definition, (), Ruby)
def generate(dfn, nesting, target):
    return code(dfn, target)

@match(Definition, (many(basestring, min=1),), Ruby)
def generate(dfn, nesting, target):
    return tr.Compound("module {ns}".format(ns=nesting[0]),
                       tr.Block(generate(dfn, nesting[1:], target)))

@match(choice(Check,TestClass), Go)
def generate(dfn, target):
    """ supress checks, they are transformed in a batch in their namespace """
    if False: yield

@match(Function, Java)
def generate(dfn, target):
    """ supress functions they are tranformed in a batch in their namespace """
    if False: yield

@match(choice(Namespace,Definition), Go)
def filename(dfn, target):
    return "/".join(module_path(dfn, target) + (target.nameof(dfn).lower(),))  + ".go"

@match(Definition, Python)
def filename(dfn, target):
    return filename(dfn, (), target)

@match(TestClass, Python)
def filename(dfn, target):
    return "/".join(("tests",) +
                    module_ffi_path(target.q.parent(dfn), target) +
                    ("test_{module}".format(module=target.nameof(dfn)),)) + ".py"

@match(choice(Namespace,Definition), (many(basestring),), Python)
def filename(ns, module, target):
    return "/".join(module_path(ns, target) + module) + ".py"

@match(choice(Namespace,Definition), Java)
def filename(dfn, target):
    return filename(dfn, ("src","main","java"), target)

@match(TestClass, Java)
def filename(dfn, target):
    return filename(dfn, ("src","test","java"), target)

@match(choice(Namespace,Definition), (many(basestring),), Java)
def filename(dfn, prefix, target):
    return "/".join(prefix + module_path(dfn, target)) + ".java"

@match(Definition, Ruby)
def filename(dfn, target):
    return filename(dfn, ("lib",), target)

@match(TestClass, Ruby)
def filename(dfn, target):
    return "/".join(("test",) + module_path(dfn, target)) + ".rb"

@match(choice(Namespace,Definition), (many(basestring),), Ruby)
def filename(dfn, prefix, target):
    return "/".join(prefix + module_path(dfn, target)) + ".rb"



@match(choice(Namespace,Definition), Javascript)
def filename(dfn, target):
    return "/".join((dfn.name.package, "lib",) + module_path(dfn, target)) + ".js"

@match(TestClass, Javascript)
def filename(dfn, target):
    return "/".join(("test",) + ("_".join(("test",) + module_path(dfn, target)),)) + ".js"



@match(Definition, Go)
def header(dfn, target):
    return tuple((
        tr.Simple("package {name}".format(
            name = target.nameof(target.q.parent(dfn))
            )),)
    ) + tuple(imports(dfn, target))

@match(Namespace, Go)
def header(dfn, target):
    return tuple((
        tr.Simple("package {name}".format(
            name = target.nameof(dfn)
            )),
        tr.Simple("import \"testing\"")
    )) + tuple(imports(dfn, target))

@match(Definition, Python)
def header(dfn, target):
    return tuple((
        tr.Simple("from __future__ import absolute_import"),
        tr.Comment("module {name}".format(
            name = target.nameof(target.q.parent(dfn))
            )),)
    ) + tuple(imports(dfn, target))

@match(choice(Namespace,Definition), Java)
def header(dfn, target):
    return tuple((
        tr.Simple("package {name}".format(
            name = ".".join(module_path(target.q.parent(dfn), target))
            )),)
    ) + tuple(imports(dfn, target))

@match(choice(Namespace,Definition), Ruby)
def header(dfn, target):
    return tuple(imports(dfn, target))

@match(choice(Namespace,Definition), Javascript)
def header(dfn, target):
    return (tr.Simple("\"use strict\";"),) + tuple(imports(dfn, target))

@match(Definition, Go)
def imports(dfn, target):
    """ emit needed import statements """
    imports = OrderedDict()
    define_imports(dfn, target, imports)
    for key, value in imports.items():
        if value.get("alias"):
            imp = "import {alias} \"{module}\""
        else:
            imp = "import \"{module}\""
        yield tr.Simple(imp.format(**value))

@match(Namespace, Go)
def imports(ns, target):
    imports = OrderedDict()
    for dfn in ns.definitions:
        define_imports(dfn, target, imports)
    for key, value in imports.items():
        yield tr.Simple("import \"{module}\"".format(**value))

@match(Definition, Python)
def imports(dfn, target):
    """ emit needed import statements """
    imports = OrderedDict()
    define_imports(dfn, target, imports)
    for key, value in imports.items():
        yield tr.Simple("import {module}".format(**value))

@match(choice(Namespace,Definition), Java)
def imports(dfn, target):
    """ emit needed import statements """
    imports = OrderedDict()
    define_imports(dfn, target, imports)
    for key, value in imports.items():
        yield tr.Simple("import {module}".format(**value))

@match(Definition, Ruby)
def imports(dfn, target):
    """ emit needed import statements """
    imports = OrderedDict()
    define_imports(dfn, target, imports)
    for key, value in imports.items():
        yield tr.Simple("{require} \"{module}\"".format(**value))

@match(Definition, Javascript)
def imports(dfn, target):
    """ emit needed import statements """
    imports = OrderedDict()
    define_imports(dfn, target, imports)
    for key, value in imports.items():
        yield tr.Simple("var {alias} = require('{module}')".format(**value))

@match(TestClass, Javascript)
def imports(dfn, target):
    """ emit needed import statements """
    imports = OrderedDict({"assert": dict(alias="assert", module="assert")})
    define_imports(dfn, target, imports)
    for key, value in imports.items():
        yield tr.Simple("const {alias} = require('{module}')".format(**value))

@match(TestClass, Ruby)
def imports(dfn, target):
    """ emit needed import statements """
    imports = OrderedDict()
    define_imports(dfn, target, imports)
    for key, value in imports.items():
        yield tr.Simple("{require} \"{module}\"".format(**value))
    yield tr.Simple("require \"test/unit\"")

@match(TestClass, Java)
def imports(dfn, target):
    """ emit needed import statements """
    imports = OrderedDict()
    define_imports(dfn, target, imports)
    for key, value in imports.items():
        yield tr.Simple("import {module}".format(**value))
    # java fully qualify uses
    yield tr.Simple("import static org.junit.Assert.assertThat")
    yield tr.Simple("import static org.hamcrest.CoreMatchers.not")
    yield tr.Simple("import static org.hamcrest.CoreMatchers.equalTo")
    yield tr.Simple("import org.junit.Test")

def native_imports(dfn, target):
    for imp in filter(isa(NativeImport), walk_dfs(dfn)):
        if target.q.parent(imp).target.lower() == target.__class__.__name__.lower():
            yield imp

@match(Definition, Go, dict)
def define_imports(dfn, target, imports):
    """For all refs inside definition, calculate required import
    statements and remember actual names that refs should resolve to

    """
    dfn_module_path = module_path(dfn, target)
    for ref in filter(isa(Ref), walk_dfs(dfn)):
        ref_dfn = target.q.definition(ref)
        ref_dfn_target_name = target.nameof(ref_dfn)
        ref_module_path = module_path(ref_dfn, target)
        if dfn_module_path != ref_module_path:
            ref_module_alias = ref_module_path[-1]
            imports[ref_module_path] = dict(module = "/".join(ref_module_path),
                                            alias = ref_module_alias)
            ref_target_name = ".".join((ref_module_alias, ref_dfn_target_name))
        else:
            ref_target_name = ref_dfn_target_name
        target.define_import(dfn, ref, ref_target_name)

    for imp in native_imports(dfn, target):
        imports[imp.module] = dict(module = imp.module,
                                   alias = imp.alias or imp.module.split("/")[-1])

@match(Definition, Python, dict)
def define_imports(dfn, target, imports):
    """For all refs inside definition, calculate required import
    statements and remember actual names that refs should resolve to

    """
    for ref in filter(isa(Ref), walk_dfs(dfn)):
        ref_dfn = target.q.definition(ref)
        ref_dfn_target_name = target.nameof(ref_dfn)
        if dfn.name.package != ref.package or isinstance(dfn, (TestClass, Check)):
            # import from FFI namespace
            ref_module_path = module_ffi_path(ref_dfn, target)
            ref_dfn_alias = ".".join(ref_module_path + (ref_dfn_target_name,))
            imports[ref_module_path[0]] = dict(module = ref_module_path[0])
            ref_target_name = ref_dfn_alias
        elif dfn.name != ref_dfn.name:
            # import from impl but using absolute module path.
            # This provides the smallest implementation file namespace pollution
            ref_module_path = module_path(ref_dfn, target)
            ref_dfn_alias = ".".join(ref_module_path + (ref_dfn_target_name,))
            imports[ref_module_path] = dict(module = ".".join(ref_module_path))
            ref_target_name = ref_dfn_alias
        else:
            # no need to import at all
            ref_target_name = ref_dfn_target_name
        target.define_import(dfn, ref, ref_target_name)

    for imp in native_imports(dfn, target):
        imports[imp.module] = dict(module = imp.module)

@match(Definition, Java, dict)
def define_imports(dfn, target, imports):
    """For all refs inside definition, calculate required import
    statements and remember actual names that refs should resolve to

    """
    dfn_module_path = module_path(dfn, target)
    for ref in filter(isa(Ref), walk_dfs(dfn)):
        ref_dfn = target.q.definition(ref)
        ref_module_path = module_path(ref_dfn, target)
        if dfn_module_path[:-1] == ref_module_path[:-1]:
            ref_target_name = ref_module_path[-1]
        else:
            ref_target_name = ".".join(ref_module_path)
        target.define_import(dfn, ref, ref_target_name)

    for imp in native_imports(dfn, target):
        imports[imp.module] = dict(module = imp.module)

@match(Namespace, Java, dict)
def define_imports(ns, target, imports):
    """For all refs inside definition inside namespace, calculate required import
    statements and remember actual names that refs should resolve to

    """
    assert ns.name.path[-1] == Snowflake("Functions")
    for dfn in ns.definitions:
        define_imports(dfn, target, imports)

@match(Definition, Ruby, dict)
def define_imports(dfn, target, imports):
    """For all refs inside definition, calculate required import
    statements and remember actual names that refs should resolve to

    """
    for ref in filter(isa(Ref), walk_dfs(dfn)):
        ref_dfn = target.q.definition(ref)
        if dfn.name.package != ref.package or isinstance(dfn, (TestClass, Check)):
            # import from FFI namespace
            ref_dfn_alias = module_ffi_name(ref_dfn, target)
            imports[ref.package] = dict(require = "require",
                                        module = ref.package)
            ref_target_name = ref_dfn_alias
        elif dfn.name != ref_dfn.name:
            # import from impl, address via FFI
            require_module_path = module_path(dfn, ref_dfn, target)
            imports[require_module_path] = dict(require = "require_relative",
                                                module = "/".join(require_module_path))
            ref_dfn_alias = module_ffi_name(ref_dfn, target)
            ref_target_name = ref_dfn_alias
        else:
            # no need to import at all
            ref_dfn_target_name = target.nameof(ref_dfn)
            ref_target_name = ref_dfn_target_name
        target.define_import(dfn, ref, ref_target_name)

    for imp in native_imports(dfn, target):
        imports[imp.module] = dict(require = "require",
                                   module = imp.module)

@match(Definition, Ruby)
def module_ffi_name(dfn, target):
    module_path = module_ffi_path(dfn, target)
    target_name = target.nameof(dfn)
    return "::".join(module_path + (target_name,))

@match(Function, Ruby)
def module_ffi_name(dfn, target):
    module_path = module_ffi_path(dfn, target)
    target_name = target.nameof(dfn)
    return ".".join(("::".join(module_path), target_name))

@match(Definition, Javascript, dict)
def define_imports(dfn, target, imports):
    """For all refs inside definition, calculate required import
    statements and remember actual names that refs should resolve to

    """
    for ref in filter(isa(Ref), walk_dfs(dfn)):
        ref_dfn = target.q.definition(ref)
        ref_dfn_target_name = target.nameof(ref_dfn)
        if dfn.name.package != ref.package or isinstance(dfn, (TestClass, Check)):
            # import from FFI namespace
            ref_module_path = module_ffi_path(ref_dfn, target)
            ref_dfn_alias = ".".join(ref_module_path + (ref_dfn_target_name,))
            imports[ref_module_path[0]] = dict(module = ref_module_path[0],
                                               alias = ref_module_path[0])
            ref_target_name = ref_dfn_alias
        elif dfn.name != ref_dfn.name:
            # import from impl using relative module path.
            ref_module_path = require_path(dfn, ref_dfn, target)
            ref_dfn_alias = "_".join(module_path(ref_dfn, target))
            imports[ref_module_path] = dict(module = "/".join(ref_module_path),
                                            alias = ref_dfn_alias)
            ref_target_name = "%s.impl" % ref_dfn_alias
        else:
            # no need to import at all
            ref_target_name = ref_dfn_target_name
        target.define_import(dfn, ref, ref_target_name)

@match(choice(Namespace, Definition), Go)
def module_path(dfn, target):
    return tuple((dfn.name.package, target.nameof(target.q.parent(dfn))))

@match(choice(Namespace, Definition), Python)
def module_path(dfn, target):
    path = tuple(
        target.nameof(ns)
        for ns in reversed(tuple(target.q.ancestors_or_self(dfn, (Namespace,Definition))))
        )
    return path[:1] + ("__quark_impl__", ) + path[1:]

@match(choice(Namespace,Definition), Python)
def module_ffi_path(dfn, target):
    return tuple(
        target.nameof(ns)
        for ns in reversed(tuple(target.q.ancestors_or_self(dfn, (Namespace,))))
        )

@match(choice(Namespace, Definition), Java)
def module_path(dfn, target):
    path = tuple(
        target.nameof(ns)
        for ns in reversed(tuple(target.q.ancestors_or_self(dfn, (Namespace,Definition))))
        )
    return path

@match(choice(Namespace, Definition), Ruby)
def module_path(dfn, target):
    path = tuple(
        target.nameof(ns)
        for ns in reversed(tuple(target.q.ancestors_or_self(dfn, (Namespace,Definition))))
        )
    return (dfn.name.package,) + path

@match(choice(Namespace, Definition), Javascript)
def module_path(dfn, target):
    path = tuple(
        target.nameof(ns)
        for ns in reversed(tuple(target.q.ancestors_or_self(dfn, (Namespace,Definition))))
        )
    return path

@match(choice(Namespace, Definition), Javascript)
def module_ffi_path(dfn, target):
    return tuple((dfn.name.package,)) + tuple(
        target.nameof(ns)
        for ns in reversed(tuple(target.q.ancestors_or_self(dfn, (Namespace,))))
    )

@match(TestClass, Ruby)
def module_path(dfn, target):
    path = tuple(
        target.nameof(ns)
        for ns in reversed(tuple(target.q.ancestors_or_self(dfn, (Namespace,Definition))))
        )
    return (dfn.name.package,) + path[:-1] + ("tc_" + path[-1],)

@match(Definition, Definition, Target)
def module_path(dfn, ref_dfn, target):
    """ calculate relative module path """
    dfn_path = module_path(dfn, target)
    ref_path =  module_path(ref_dfn, target)
    assert dfn_path != ref_path
    for common,(d,r) in enumerate(map(None, dfn_path, ref_path)):
        if d != r:
            break
    path = ("..",) * len(dfn_path[common:-1]) + ref_path[common:]
    return path

@match(Namespace, choice(Namespace,Definition), Target)
def module_path(dfn, ref_dfn, target):
    """ calculate relative module path """
    dfn_path = module_path(dfn, target)
    ref_path =  module_path(ref_dfn, target)
    assert dfn_path != ref_path
    for common,(d,r) in enumerate(map(None, dfn_path, ref_path)):
        if d != r:
            break
    assert common == len(dfn_path)
    assert common >= 1
    path = ref_path[common-1:]
    return path

@match(choice(Namespace,Definition), Ruby)
def module_ffi_path(dfn, target):
    return tuple(
        target.upcase(target.nameof(ns))
        for ns in reversed(tuple(target.q.ancestors_or_self(dfn, (Namespace,))))
        )
