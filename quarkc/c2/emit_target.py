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
from pprint import pformat
from .match import match, many, choice, lazy
from .ir import (IR, Root, Definition, Namespace, NamespaceName, Name,
                 Ref, Invoke, Construct, Class, Interface,
                 Function, Check, Void, Block)
from .ir import dfn_of
from . import tr
from .emit_ir import Snowflake
from .tree import Query, isa, walk_dfs

class NameQuery(Query):
    definition_memory = None
    @match(Ref)
    def definition(self, ref):
        """ Look up definition of a Ref """
        if not self.definition_memory:
            self.definition_memory = OrderedDict()
            root = tuple(self.ancestors(ref))[-1]
            for name in filter(isa(Name), walk_dfs(root)):
                self.definition_memory[name] = self.parent(name)
        return self.definition_memory[ref]

class TargetNamespace(object):
    """ Name of an importable namespace/package in the target """
    @match((many(basestring),))
    def __init__(self, target_name):
        self.target_name = target_name
        self.names = OrderedDict()
        self.target_names = OrderedDict()
        self.imports = set()

    def __repr__(self):
        return "TargetNamespace(%s,\n    names=%s,\n    target_names=%s)" % (self.target_name, pformat(self.names), pformat(self.target_names))

class TargetDefinition(object):
    """ Name of a ir.Definition in the target """
    @match(basestring, TargetNamespace)
    def __init__(self, target_name, namespace):
        self.target_name = target_name
        self.namespace = namespace

    def __repr__(self):
        return "TargetDefinition(%s, %s)" % (self.namespace.target_name, self.target_name)

class Target(object):

    @match()
    def __init__(self):
        self.parent = None
        self.files = OrderedDict()
        self.modules = OrderedDict()
        self.names = dict()
        self.imports = dict()
        self.q = None

    @match("private", lazy("Target"), Root)
    def __init__(self, _, parent, root):
        self.parent = parent
        self.files = parent.files
        self.modules = parent.modules
        self.names = parent.names
        self.imports = parent.imports
        self.q = NameQuery(root)

    @match(Root)
    def with_root(self, root):
        """ Return a scoped clone with an opinion on ancestor queries """
        return self.__class__("private", self, root)


    @match(choice(Name, NamespaceName), basestring)
    def define_name(self, name, defname):
        assert defname
        target_name = self.UNKEYWORDS.get(defname, defname)
        assert target_name
        self.names[name] = target_name


    @match(choice(Namespace,Definition))
    def nameof(self, dfn):
        return self.nameof(dfn.name)

    @match(choice(NamespaceName,Name))
    def nameof(self, name):
        if name not in self.names:
            return "??%s??" % name.path[-1]
        return self.names[name]

    @match(Definition, Ref, basestring)
    def define_import(self, dfn, ref, name):
        if dfn.name not in self.imports:
            self.imports[dfn.name] = dict()
        imports = self.imports[dfn.name]
        imports[ref] = name

    @match(Ref)
    def nameof(self, ref):
        dfn = self.q.ancestor(ref, (Definition,))
        if dfn is None:
            return self.bad_ref(ref, "ref without a def?")
        if dfn.name not in self.names:
            return self.bad_ref(ref, "ref of an undefined name?")
        if dfn.name not in self.imports:
            return self.bad_ref(ref, "ref in dfn that is not crosslinked?")
        imports = self.imports[dfn.name]
        if ref not in imports:
            return self.bad_ref(ref, "ref not found in dfn imports?")
        return imports[ref]

    def bad_ref(self, ref, reason):
        return "??%s??%s" % (ref.path[-1], reason)

    @match(basestring)
    def upcase(self, s):
        return s[0:1].capitalize() + s[1:]








    @match(Definition)
    def xmodule(self, dfn):
        """ REWORD: Return or create a tr.File for a target as previously defined with a TargetNamespace and TargetDefinition """
        tgtdfn = self.definitions[dfn.name]
        filename = self.filename(dfn, tgtdfn)
        if filename not in self.modules:
            module = tr.File(filename)
            self.header(dfn, module)
            self.modules[filename] = module
        return self.modules[filename]

    @match(Definition, tr.File)
    def xheader(self, dfn, module):
        module.add(self.head_comment(),)
        module.add(tr.Comment("override header() for a better comment"))

    def xhead_comment(self):
        return tr.Comment("Quark %s backend generated code." % self.__class__.__name__)

    @match(Definition, Ref)
    def xreference(self, dfn, ref):
        assert dfn.name in self.definitions
        if ref not in self.definitions:
            self.define_ffi(ref.parent, ref)
        assert ref in self.definitions
        tgtdfn = self.definitions[dfn.name]
        tgtref = self.definitions[ref]
        module = self.module(dfn)
        if ref not in tgtdfn.namespace.names:
            self.reference(module, dfn, tgtdfn, ref, tgtref)
        assert ref in tgtdfn.namespace.names, "%s.reference() does not install into target namespace" % self.__class__.__name__

    @match(tr.File, Definition, TargetDefinition, Ref, TargetDefinition)
    def xreference(self, module, dfn, tgtdfn, ref, tgtref):
        """ generate the import statement and store import name in the tgtdfn namespace """
        assert False, "TODO: add import logic for %s" % self.__class__.__name__

    @match(Invoke, Ref)
    def xdefine_ffi(self, invoke, ref):
        self.define(Function(Name(invoke.name.package, *invoke.name.path), Void(), Block()))

    @match(Construct, Ref)
    def xdefine_ffi(self, _, ref):
        assert False, "no such reference: %s" % ref

class Java(Target):
    """
    Mapping rules:
    Package -> jar
    Namespace -> package
    Class -> class in own file inside src/main/java/$package
    Interface -> interface in own file inside src/main/java/$package
    Function -> static method in shared file src/main/java/$package/Functions.java
    Check -> @Test method in shared file src/test/java/$package/Tests.java
    Ref -> fully qualified name
    """

    UNKEYWORDS = dict((k, k+"_") for k in
                      """
                      abstract    continue        for             new             switch
                      assert      default         goto            package         synchronized
                      boolean     do              if              private         this
                      break       double          implements      protected       throw
                      byte        else            import          public          throws
                      case        enum            instanceof      return          transient
                      catch       extends         int             short           try
                      char        final           interface       static          void
                      class       finally         long            strictfp        volatile
                      const       float           native          super           while

                      null        true            false 

                      Functions   Tests           assertEquals""".split())

    @match(TargetNamespace, Definition)
    def xdefine(self, namespace, dfn):
        target_name = self.define_name(namespace, dfn.name.path[-1])
        return TargetDefinition(target_name, namespace)

    @match(choice(Class, Interface))
    def xdefine_namespace(self, dfn):
        return self.define_namespace(dfn.name.path)

    @match(Function)
    def xdefine_namespace(self, dfn):
        return self.define_namespace(dfn.name.path[:-1] + (Snowflake("Functions"),))

    @match(Check)
    def xdefine_namespace(self, dfn):
        return self.define_namespace(dfn.name.path[:-1] + (Snowflake("Tests"),))

    @match((many(basestring, min=1),))
    def xdefine_namespace(self, path):
        if path not in self.definitions:
            parent = self.define_namespace(path[:-1])
            target_name = self.define_name(parent, path[-1])
            # XXX: here we can inject additional implementation namespace
            self.definitions[path] = TargetNamespace(parent.target_name + (target_name, ))
        return self.definitions[path]

    @match(())
    def xdefine_namespace(self, path):
        # XXX: as a consequence, we don't check for duplicates of
        # toplevel namespace names because we don't store root, should that be prohibited by the IR anyways?
        return TargetNamespace(())

    @match(Definition, tr.File)
    def xheader(self, dfn, module):
        tgtdfn = self.definitions[dfn.name]
        module.add(tr.Simple("package {pkg}".format(pkg = ".".join(tgtdfn.namespace.target_name[:-1]))))
        module.add(self.head_comment(),)

    @match(choice(Check, Function), tr.File)
    def xheader(self, dfn, module):
        tgtdfn = self.definitions[dfn.name]
        module.add(tr.Simple("package {pkg}".format(pkg = ".".join(tgtdfn.namespace.target_name[:-1]))))
        module.add(self.head_comment(),)

    @match(Definition, TargetDefinition)
    def xfilename(self, dfn, tgtdfn):
        return "/".join(("src", "main", "java") + tgtdfn.namespace.target_name) + ".java"

    @match(Check, TargetDefinition)
    def xfilename(self, dfn, tgtdfn):
        return "/".join(("src", "test", "java") + tgtdfn.namespace.target_name) + ".java"

    @match(tr.File, Definition, TargetDefinition, Ref, TargetDefinition)
    def xreference(self, module, dfn, tgtdfn, ref, tgtref):
        # referenced name depends on target type, which can be inferred from Ref use
        self.reference(module, dfn, tgtdfn, ref.parent, ref, tgtref)
        # Java fully qualifies all references, imports are not necessary

    @match(tr.File, Definition, TargetDefinition, IR, Ref, TargetDefinition)
    def xreference(self, module, dfn, tgtdfn, use, ref, tgtref):
        tgtdfn.namespace.names[ref] = ".".join(tgtref.namespace.target_name)

    @match(tr.File, Definition, TargetDefinition, Invoke, Ref, TargetDefinition)
    def xreference(self, module, dfn, tgtdfn, use, ref, tgtref):
        tgtdfn.namespace.names[ref] = ".".join(tgtref.namespace.target_name + (tgtref.target_name,))

class Python(Target):
    """
    Mapping rules: Some are TODO
    Package -> wheel
    Toplevel Namespace -> $package/__init___.py with relative imports of all implementation modules/__namespace__.py
    Namespace -> file $package/__init__.py, empty and
                 file $package/__quark_namespace__.py with relative imports of all definitions and sub-namespaces
    Class -> class in own file in $package
    Interface -> interface in own file in $package
    Function -> function in own file in $package
    Check -> "test_" prefixed function in shared file tests/$package/test_$innermostPackage.py
    Ref -> same namespace: no import
           inside package: relative import of implementation file
           across packages: absolute import of FFI name
           within Check: absolute import of FFI name
    """

    UNKEYWORDS = dict((k, k+"_") for k in """
         self map list None True False
         tests
    """.split())

    @match(TargetNamespace, Definition)
    def xdefine(self, namespace, dfn):
        target_name = self.define_name(namespace, dfn.name.path[-1])
        return TargetDefinition(target_name, namespace)

    @match(Definition)
    def xdefine_namespace(self, dfn):
        return self.define_namespace(dfn.name.path[:-1])

    @match(Check)
    def xdefine_namespace(self, dfn):
        return self.define_namespace(("tests", ) + dfn.name.path[:-1] + ("test_" + dfn.name.path[-2],))

    @match((many(basestring, min=1),))
    def xdefine_namespace(self, path):
        if path not in self.definitions:
            parent = self.define_namespace(path[:-1])
            target_name = self.define_name(parent, path[-1])
            # XXX: here we can inject additional implementation namespace
            self.definitions[path] = TargetNamespace(parent.target_name + (target_name, ))
        return self.definitions[path]

    @match(())
    def xdefine_namespace(self, path):
        # XXX: as a consequence, we don't check for duplicates of
        # toplevel namespace names because we don't store root, should that be prohibited by the IR anyways?
        return TargetNamespace(())

    @match(Definition, TargetDefinition)
    def xfilename(self, dfn, tgtdfn):
        # XXX: find a better home for generating implementation package __init__.py files.
        # XXX: need to build out FFI-grade namespace
        for i in range(1, len(tgtdfn.namespace.target_name)):
            self.files["/".join(tgtdfn.namespace.target_name[:i] + ("__init__.py",))] = ""
        return "/".join(tgtdfn.namespace.target_name) + ".py"

    @match(Check, TargetDefinition)
    def xfilename(self, dfn, tgtdfn):
        # XXX: need to build out FFI-grade namespace
        return "/".join(tgtdfn.namespace.target_name) + ".py"

    @match(tr.File, Definition, TargetDefinition, Ref, TargetDefinition)
    def xreference(self, module, dfn, tgtdfn, ref, tgtref):
        ref_module = ".".join(tgtref.namespace.target_name)
        ref_module_name = "_".join(tgtref.namespace.target_name)

        # XXX: inside package we should do relative imports
        tgtdfn.namespace.names[ref] = ".".join((ref_module_name, tgtref.target_name))


        d_ns = tgtdfn.namespace
        r_ns = tgtref.namespace
        dfn_module_path = ".".join(d_ns.target_name)
        ref_module_path = ".".join(r_ns.target_name)
        if dfn_module_path == ref_module_path and not isinstance(dfn, Check):
            module.add(tr.Comment("Must not import " + ref_module_path))
        else:
            if ref_module_path not in d_ns.imports:
                d_ns.imports.add(ref_module_path)
                module.add(tr.Simple("import {ref_module} as {ref_module_name}".format(
                    ref_module = ref_module, ref_module_name = "_".join(r_ns.target_name))))
            else:
                module.add(tr.Comment("Already imported " + ref_module_path + " to " + str((tgtdfn, tgtref))))


class Ruby(Target):
    """
    Mapping rules:
    Package -> gem
    Toplevel Namespace -> lib/$package.rb with relative imports of all implementation files
    Class -> class nested inside all ancestor namespaces as module statements in own file in lib/$package
    Interface -> interface ... in own file lib/$package
    Function -> module self. method ... in shared file lib/$package.rb
    Check -> method with "test_" prefix of Tests class ... in shared file test/$package/tc_$innermostPackage.rb
    Toplevel Namespace with Check -> test/ts_$package with relative import of all tc_*.rb files
    Ref -> same namespace: no require
           inside package: relative require of implementation file
           across packages: absolute require of FFI name
           within Check: absolute import of FFI name
    """

    UNKEYWORDS = dict((k, k+"_") for k in
    """ BEGIN END __ENCODING__ __END__ __FILE__ __LINE__ alias and begin
         break case class def defined?  do else elsif end ensure false
         for if in module next nil not or redo rescue retry return
         self super then true undef unless until when while yield

         Kernel Test
    """.split())

    @match(TargetNamespace, Definition)
    def xdefine(self, namespace, dfn):
        target_name = self.define_name(namespace, self.upcase(dfn.name.path[-1]))
        return TargetDefinition(target_name, namespace)

    @match(TargetNamespace, Function)
    def xdefine(self, namespace, dfn):
        target_name = self.define_name(namespace, dfn.name.path[-1])
        return TargetDefinition(target_name, namespace)

    @match(Definition)
    def xdefine_namespace(self, dfn):
        return self.define_namespace(dfn.name.path[:-1])

    @match(Check)
    def xdefine_namespace(self, dfn):
        return self.define_namespace(dfn.name.path[:-2] + ("tc_" + dfn.name.path[-2],))

    @match((many(basestring, min=1),))
    def xdefine_namespace(self, path):
        if path not in self.definitions:
            parent = self.define_namespace(path[:-1])
            target_name = self.define_name(parent, self.upcase(path[-1]))
            self.definitions[path] = TargetNamespace(parent.target_name + (target_name, ))
        return self.definitions[path]

    @match(())
    def xdefine_namespace(self, path):
        return TargetNamespace(())

    @match(Definition, TargetDefinition)
    def xfilename(self, dfn, tgtdfn):
        prefix = "lib"
        ffi_module = dfn.name.package
        module_name = "/".join([ffi_module] + map(str.lower, (tgtdfn.namespace.target_name + (tgtdfn.target_name, ))))
        self.ffi_require("/".join((prefix, ffi_module) ) + ".rb", module_name)
        return "/".join((prefix, module_name)) + ".rb"

    @match(Check, TargetDefinition)
    def xfilename(self, dfn, tgtdfn):
        prefix = "test"
        ffi_module = dfn.name.package
        module_name = "/".join([ffi_module] + map(str.lower, tgtdfn.namespace.target_name))
        self.ffi_require("/".join((prefix, "ts_" + ffi_module) ) + ".rb", module_name)
        return "/".join((prefix, module_name)) + ".rb"

    def xffi_require(self, filename, module_name):
        # XXX: this is not super clean
        require = "require_relative '{module_name}'\n".format(module_name = module_name)
        text = self.files.get(filename, "")
        if require not in text:
            self.files[filename] = text + require

    @match(tr.File, Definition, TargetDefinition, Ref, TargetDefinition)
    def xreference(self, module, dfn, tgtdfn, ref, tgtref):
        """ generate the import statement and store import name in the target namespace """
        tgtdfn.namespace.names[ref] = "::".join(tgtref.namespace.target_name + (tgtref.target_name, ))
        d_ns = tgtdfn.namespace
        r_ns = tgtref.namespace
        dfn_module_path = dfn.name.package
        ref_module_path = ref.package
        if dfn_module_path == ref_module_path and not isinstance(dfn, Check):
            module.add(tr.Comment("Must not import " + ref_module_path))
        else:
            if ref_module_path not in d_ns.imports:
                d_ns.imports.add(ref_module_path)
                module.add(tr.Simple("require '{ref_module_path}'".format(
                    ref_module_path = ref_module_path)))
            else:
                module.add(tr.Comment("Already imported " + ref_module_path + " to " + str((tgtdfn, tgtref))))

class Go(Target):
    """
    Mapping rules:
    Package -> go package
    Toplevel Namespace -> name of the package clause, toplevel directory src/$package/$namespace
    Nested Namespace -> "_" separated prefix for all Definitions
    Class -> struct + constructor + methods in own file in src/$package/$namespace
    Interface -> interface in own file in src/$package/$namespace
    Function -> function in own file in src/$package/$namespace
    Check ->  "TestQ" prefixed function in shared file src/$package/$namespace
              with filename postfix "_test" 
              with package postfix "_test"
    Ref -> same namespace: no require
           inside package: no require
           across packages: import of other package
           within Check: absolute import of FFI name
    """

    """Toplevel quark namespace maps to go package, the nested quark
       namespaces are flattened as part of identifier names to work
       around package cycle issues """

    UNKEYWORDS = dict((k, k+"_") for k in
                      """
                      break        default      func         interface    select
                      case         defer        go           map          struct
                      chan         else         goto         package      switch
                      const        fallthrough  if           range        type
                      continue     for          import       return       var

                      testing
                      """.split())


    @match(Definition)
    def xdefine_namespace(self, dfn):
        return self.define_namespace((dfn.name.path[0], "_".join(dfn.name.path[1:])))

    @match(Check)
    def xdefine_namespace(self, dfn):
        return self.define_namespace((dfn.name.path[0], "_".join(dfn.name.path[:1]),"test",))

    @match(TargetNamespace, Definition)
    def xdefine(self, namespace, dfn):
        target_name = self.define_name(namespace, self.upcase("_".join(dfn.name.path[1:])))
        return TargetDefinition(target_name, namespace)

    @match((many(basestring, min=1),))
    def xdefine_namespace(self, path):
        if path not in self.definitions:
            parent = self.define_namespace(path[:-1])
            target_name = self.define_name(parent, path[-1])
            self.definitions[path] = TargetNamespace(parent.target_name + (target_name, ))
        return self.definitions[path]

    @match(())
    def xdefine_namespace(self, path):
        # XXX: as a consequence, we don't check for duplicates of
        # toplevel namespace names because we don't store root, should that be prohibited by the IR anyways?
        return TargetNamespace(())

    @match(Definition, tr.File)
    def xheader(self, dfn, module):
        tgtdfn = self.definitions[dfn.name]
        module.add(tr.Simple("package {pkg}".format(pkg = tgtdfn.namespace.target_name[0])))
        module.add(self.head_comment(),)

    @match(Check, tr.File)
    def xheader(self, dfn, module):
        tgtdfn = self.definitions[dfn.name]
        module.add(tr.Simple("package {pkg}_test".format(pkg = tgtdfn.namespace.target_name[0])))
        module.add(self.head_comment(),)
        module.add(tr.Simple("import \"testing\""))

    @match(Definition, TargetDefinition)
    def xfilename(self, dfn, tgtdfn):
        return "/".join((dfn.name.package,
                         tgtdfn.namespace.target_name[0],
                         tgtdfn.target_name.lower(),)) + ".go"

    @match(Check, TargetDefinition)
    def xfilename(self, dfn, tgtdfn):
        return "/".join((dfn.name.package,
                         tgtdfn.namespace.target_name[0],
                         tgtdfn.namespace.target_name[0].lower() + "_test",)) + ".go"

    @match(tr.File, Definition, TargetDefinition, Ref, TargetDefinition)
    def xreference(self, module, dfn, tgtdfn, ref, tgtref):
        d_ns = tgtdfn.namespace
        r_ns = tgtref.namespace
        dfn_module_path = "/".join((dfn.name.package, d_ns.target_name[0]))
        ref_module_path = "/".join((ref.package, r_ns.target_name[0]))
        if dfn_module_path == ref_module_path and not isinstance(dfn, Check):
            d_ns.names[ref] = tgtref.target_name
            module.add(tr.Comment("Must not import " + ref_module_path))
        else:
            d_ns.names[ref] = ".".join((r_ns.target_name[0], tgtref.target_name, ))
            if ref_module_path not in d_ns.imports:
                d_ns.imports.add(ref_module_path)
                module.add(tr.Simple("import \"{ref_module_path}\"".format(
                    ref_module_path = ref_module_path)))
            else:
                module.add(tr.Comment("Already imported " + ref_module_path + " to " + str((tgtdfn, tgtref))))


class Javascript(Target):

    """
    Mapping rules: Some are TODO
    Package -> a minimal package.json if one doesn't exist?
    Toplevel Namespace -> lib/$package.js with relative imports of direct definitions and namespaces
    Namespace -> file $package/__quark_namespace__.py with relative imports of all definitions and sub-namespaces
    Class -> class in own file in $package using module.exports
    Interface -> interface in own file in $package using module.exports
    Function -> function in own file in $package using module.exports
    Check -> mocha style nested describe("$package", it("$check" functions in shared file test/$package.js
    Ref -> same namespace: no import
           inside package: relative import of implementation file
           across packages: absolute import of FFI name
           within Check: absolute import of FFI name
    """

    UNKEYWORDS = dict((k, k+"_") for k in
                      """
                      break       do          in          typeof
                      case        else        instanceof  var
                      catch       export      new         void
                      class       extends     return      while
                      const       finally     super       with
                      continue    for         switch      yield
                      debugger    function    this
                      default     if          throw
                      delete      import      try

                      let         static      enum        await

                      implements  package     protected
                      interface   private     public

                      null        true        false       undefined

                      describe    it          assert
                      """.split())
