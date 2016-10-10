@match(IR, Target)
def header(nd, target):
    for c in nd.children:
        for h in flatten_to_strings(header(c, target)):
            yield h

@match(IR, Target)
def footer(nd, target):
    for c in nd.children:
        for f in flatten_to_strings(footer(c, target)):
            yield f


@match(Definition, Ruby)
def header(dfn, target):
    for c in dfn.children:
        for h in flatten_to_strings(header(c, target)):
            yield h
    module = ""
    for p in dfn.name.path[:-1]:
        module += "\n{indent}module {name}".format(
            indent = target.indent(),
            name = target.upcase(p))
        target.depth += 1
    yield module

@match(Check, Ruby)
def header(dfn, target):
    for c in dfn.children:
        for h in flatten_to_strings(header(c, target)):
            yield h
    yield 'require "test/unit"\n\n'
    for p in dfn.name.path[:-2]:
        yield target.indent("module {name}\n".format(
            name = target.upcase(p)))
        target.depth += 1
    yield target.indent("class Test{name} < Test::Unit::TestCase\n".format(
        name = target.upcase(dfn.name.path[-2])))
    target.depth += 1

@match(Definition, Java)
def header(dfn, target):
    yield package_of(dfn, target)
    for c in dfn.children:
        for h in flatten_to_strings(header(c, target)):
            yield h

@match(Function, Java)
def header(dfn, target):
    hdr = "{pkg}\n{fun}".format(
        pkg = package_of(dfn, target),
        fun = target.indent("public class Functions {\n"))
    target.depth += 1
    return hdr;

@match(Check, Java)
def header(dfn, target):
    yield package_of(dfn, target)
    yield "import static org.junit.Assert.assertEquals;\n"
    yield "import org.junit.Test;\n"
    yield "\n"
    yield "public class Tests {\n"
    target.depth += 1

@match(Definition, Go)
def header(dfn, target):
    yield package_of(dfn, target)
    for c in dfn.children:
        for h in flatten_to_strings(header(c, target)):
            yield h

@match(Check, Go)
def header(dfn, target):
    yield package_of(dfn, target)
    yield 'import "testing"\n'
    for c in dfn.children:
        for h in flatten_to_strings(header(c, target)):
            yield h

@match(Definition, Java)
def package_of(dfn, target):
    return "package {pkg};\n\n".format(
        pkg = ".".join(dfn.name.path[:-1]))

@match(Definition, Go)
def package_of(dfn, target):
    return "package {pkg}\n\n".format(
        pkg = dfn.name.path[0].lower())

@match(Check, Go)
def package_of(dfn, target):
    return "package {pkg}_test\n\n".format(
        pkg = dfn.name.path[0].lower())

@match(Function, Java)
def footer(dfn, target):
    target.depth -= 1;
    return target.indent("}");

@match(Check, Java)
def footer(dfn, target):
    target.depth -= 1;
    return "}";

@match(Definition, Ruby)
def footer(dfn, target):
    module = []
    for p in dfn.name.path[:-1]:
        target.depth -= 1
        module.append("{indent}end".format(
            indent = target.indent()))
    module.append("")
    return "\n".join(module)

@match(choice(Type, Invoke), Python)
def header(thing, target):
    name = thing.name
    for h in python_import(thing.name, target):
        yield h
    for c in thing.children:
        for h in flatten_to_strings(header(c, target)):
            yield h

@match(Ref, Python)
def python_import(ref, target):
    # import via FFI name
    if target.needs_import(ref):
        yield "import {module} as {alias}\n".format(
            module=".".join(ref.path),
            alias="%s_%s" % (ref.package, "_".join(ref.path)))

@match(choice(Type, Invoke), Ruby)
def header(thing, target):
    name = thing.name
    if target.is_interpackage(name):
        yield "require '{package}'\n".format(
            package=name.package,
            module="/".join(name.path[:-1]))
    elif target.is_intermodule(name):
        yield "require_relative '{rel_module}'\n".format(
            package=name.package,
            rel_module="/".join(target.rel_module(name)))

@match(choice(Type, Invoke), Go)
def header(thing, target):
    name = thing.name
    if target.is_interpackage(name):
        yield """import "{package}/{toplevel}"\n""".format(
            package = name.package,
            toplevel = name.path[0].lower())

