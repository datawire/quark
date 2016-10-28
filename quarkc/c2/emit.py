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

"""
Quark IR emitter.

Usage:
  quark-ir emit [options] (--go | --java | --python | --ruby) <files>...

Commands:

  emit    Emit target code for the specified quark IR files in the output directory

Options:
  -h --help             Show this screen.
  -v --verbose          Show more detail.

  -o DIR, --output DIR  Target directory for output files. [default: .]

"""

from itertools import chain
from collections import deque, OrderedDict
from .match import match, many, choice
from .ir import (IR, Root, Package, Namespace, Definition,
                 Check, Function, Ref, Name, ExternalPackage)
from .ir import reconstruct
from .tree import walk_dfs, Query, isa, split
from . import tr
from .emit_target import Target, Go, Ruby, Java, Python
from .emit_transform import transmogrify
from .emit_code import code
from .emit_format import format
from .emit_naming import rename
from .emit_ir import Snowflake, TestClass

## Package

@match(Package, Target)
def emit(pkg, target):
    pkg = reconstruct(pkg)
    pkg = transmogrify(pkg, target)
    target = target.with_root(pkg)
    rename(pkg, target)
    return tuple((module.filename, format(module, target))
                 for module in transform(pkg, target))





@match(Root, Target)
def transform(root, target):
    """ Generate a stream of tr.Files """
    for p in root.packages:
        for m in transform(p, target):
            yield m

@match(ExternalPackage, Target)
def transform(pkg, target):
    # no output for ExternalPackage
    if False: yield

@match(choice(Package, Namespace), Target)
def transform(pkg, target):
    # generic tree traverse
    for d in pkg.definitions:
        for m in transform(pkg, d, target):
            yield m
        for m in transform(d, target):
            yield m

@match(Package, Namespace, Target)
def transform(pkg, ns, target):
    # default toplevel namespace handler
    if False: yield

@match(Namespace, Namespace, Target)
def transform(parent, ns, target):
    # default nested namespace handler
    if False: yield

@match(Namespace, Definition, Target)
def transform(ns, dfn, Target):
    # Definitions are supposed to be handled by a two-parameter version
    if False: yield

@match(Definition, Target)
def transform(dfn, target):
    assert False, "No transform for %s %s %s" % (dfn.__class__.__name__, dfn.name, target.__class__.__name__)

@match(Namespace, Namespace, Go)
def transform(parent, ns, target):
    "There should be no nested namespaces in go, except the special case for go checks"
    assert ns.name.path[-1] == Snowflake("test")
    yield tr.File(filename(ns, target), header(ns, target),
                  *tuple(code(dfn, target) for dfn in ns.definitions))

@match(Namespace, Namespace, Java)
def transform(parent, ns, target):
    "Convert special snowflake namespace for functions to a java class"
    if ns.name.path[-1] == Snowflake("Functions"):
        yield tr.File(filename(ns, target), header(ns, target),
                      tr.Compound("public class Functions", tr.Block(
                          *tuple(code(dfn, target) for dfn in ns.definitions))))

@match(Package, Namespace, Python)
def transform(parent, ns, target):
    yield tr.File("/".join((target.nameof(ns), "__init__.py",)),
                  tr.Simple("from .__quark_impl__.__quark_namespace__ import *"))
    yield tr.File("/".join((target.nameof(ns), "__quark_impl__", "__init__.py",)))
    yield tr.File(filename(ns, ("__quark_namespace__",), target),
                  tuple(ffi_namespace(ns, target)))

@match(Namespace, Namespace, Python)
def transform(parent, ns, target):
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

@match(Definition, choice(Go, Python, Java, Ruby))
def transform(dfn, target):
    yield tr.File(filename(dfn, target), header(dfn, target), code(dfn, target))

@match(Check, Go)
def transform(dfn, target):
    """ supress checks, they are transformed in a batch in their namespace """
    if False: yield

@match(Function, Java)
def transform(dfn, target):
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

@match(choice(Namespace,Definition), Java)
def filename(dfn, target):
    return filename(dfn, ("src","main","java"), target)

@match(TestClass, Java)
def filename(dfn, target):
    return filename(dfn, ("src","test","java"), target)

@match(choice(Namespace,Definition), (many(basestring),), Python)
def filename(ns, module, target):
    return "/".join(module_path(ns, target) + module) + ".py"

@match(choice(Namespace,Definition), (many(basestring),), Java)
def filename(dfn, prefix, target):
    return "/".join(prefix + module_path(dfn, target)) + ".java"

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


@match(Definition, Go)
def imports(dfn, target):
    """ emit needed import statements """
    imports = OrderedDict()
    define_imports(dfn, target, imports)
    for key, value in imports.items():
        yield tr.Simple("import \"{module}\"".format(**value))

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
    assert not imports
    # java fully qualify uses
    if False: yield

@match(TestClass, Java)
def imports(dfn, target):
    """ emit needed import statements """
    imports = OrderedDict()
    define_imports(dfn, target, imports)
    assert not imports
    # java fully qualify uses
    yield tr.Simple("import static org.junit.Assert.assertEquals")
    yield tr.Simple("import org.junit.Test")

@match(Definition, Go, dict)
def define_imports(dfn, target, imports):
    """For all refs inside definition, calculate required import
    statements and remember actual names that refs should resolve to

    """
    dfn_module_path = module_path(dfn, target)
    dfn_target_name = target.nameof(dfn.name)
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


@match(Definition, Python, dict)
def define_imports(dfn, target, imports):
    """For all refs inside definition, calculate required import
    statements and remember actual names that refs should resolve to

    """
    dfn_module_path = module_path(dfn, target)
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
            # import from impl
            ref_module_path = module_path(ref_dfn, target)
            ref_dfn_alias = ".".join(ref_module_path + (ref_dfn_target_name,))
            imports[ref_module_path] = dict(module = ".".join(ref_module_path))
            ref_target_name = ref_dfn_alias
        else:
            # no need to import at all
            ref_target_name = ref_dfn_target_name
        target.define_import(dfn, ref, ref_target_name)

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

@match(Namespace, Java, dict)
def define_imports(ns, target, imports):
    """For all refs inside definition inside namespace, calculate required import
    statements and remember actual names that refs should resolve to

    """
    assert ns.name.path[-1] == Snowflake("Functions")
    for dfn in ns.definitions:
        define_imports(dfn, target, imports)

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


import py.path

def writeout(files, output, verbose):
    o = py.path.local(output)
    for name, content in files:
        f = o.join(name)
        f.write(content, ensure=True)
        if verbose:
            print "wrote %s" % f

from docopt import docopt

def main(args):
    backends = {"--go" : Go,
                "--java" : Java,
                "--ruby" : Ruby,
                "--python" : Python,
            }
    for fn in args["<files>"]:
        ir = IR.load_path(fn)
        for opt, backend in backends.items():
            if not args.get(opt, False):
                continue
            b = backend()
            files = emit(ir, b)
            writeout(files, output=args["--output"], verbose=args["--verbose"])
 

def call_main():
    exit(main(docopt(__doc__)))
