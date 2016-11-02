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
from .match import match, choice, lazy
from .ir import (Root, Definition, Namespace, NamespaceName, Name, Ref)
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
        if self.q is None:
            return self.bad_ref( ref, "target without with_root()?")
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
        return s[:1].capitalize() + s[1:]


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


class Python(Target):
    """
    Mapping rules:
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
