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
from .ir import Definition, Name, Ref, Invoke, Class, Interface, Function, Check, Invoke, Void, Block
from .ir import dfn_of
from . import tr

class TargetModule(object):
    """ Name of an importable module/package in the target """
    @match((many(basestring),))
    def __init__(self, target_name):
        self.target_name = target_name
        self.names = OrderedDict()
        self.target_names = OrderedDict()

    def __repr__(self):
        return "TargetModule(%s, %s, %s)" % (self.target_name, self.names, self.target_names)

class TargetDefinition(object):
    """ Name of a ir.Definition in the target """
    @match(basestring, TargetModule)
    def __init__(self, target_name, module):
        self.target_name = target_name
        self.module = module

    def __repr__(self):
        return "TargetDefinition(%s, %s)" % (self.target_name, self.module.target_name)

class Target(object):

    def __init__(self, parent=None):
        self.parent = parent
        if parent:
            self.depth = parent.depth + 1
        else:
            self.depth = 0
        self.files = OrderedDict()
        self.modules = OrderedDict()
        self.definitions = OrderedDict()

    @match(Definition)
    def define(self, dfn):
        """Install a mapping in self.definitions[dfn.name] -> AllRequiredInfoOnTargetName"""
        tgt_module = self.define_module(dfn)
        tgt_def = self.define(tgt_module, dfn)
        self.definitions[dfn.name] = tgt_def
        return tgt_def

    @match(tr.File, basestring)
    def file(self, module, contents):
        name = module.filename
        if name not in self.files:
            self.files[name] = ""
        self.files[name] += contents

    @match(TargetModule, Definition)
    def define(self, module, dfn):
        """ return a TargetDefinition inside the TargetModule for a given ir.Definition """
        assert False, "%s does not have define(TargetModule, Definition)" % self.__class__.__name__

    @match(TargetModule, basestring)
    def define_name(self, module, name):
        """ return a name that is safe to use inside the spefified TargetModule """
        assert False, "%s does not have define_name(TargetModule, basestring)" % self.__class__.__name__

    @match(Definition)
    def define_module(self, dfn):
        """ return a TargetModule for a given ir.Definition and install it in self.definitions"""
        assert False, "%s does not have define_module(Definition)" % self.__class__.__name__

    @match(Definition)
    def module(self, dfn):
        """ REWORD: Return or create a tr.File for a target as previously defined with a TargetModule and TargetDefinition """
        tgtdef = self.definitions[dfn.name]
        filename = self.filename(dfn, tgtdef)
        if filename not in self.modules:
            module = tr.File(filename)
            self.modules[filename] = module
        return self.modules[filename]


    @match(Definition, Ref)
    def reference(self, dfn, ref):
        assert dfn.name in self.definitions
        if ref not in self.definitions:
            use = ref.parent
            self.define_ffi(ref.parent)
        assert ref in self.definitions
        pass

    @match(Invoke)
    def define_ffi(self, invoke):
        self.define(Function(Name(invoke.name.package, *invoke.name.path), Void(), Block()))

    @match(Name)
    def nameof(self, name):
        return self.definitions[name].target_name

    @match(Ref)
    def nameof(self, ref):
        return self.definitions[ref].target_name

    @match(Ref)
    def is_interpackage(self, name):
        dfn = dfn_of(name)
        if dfn is None: return True
        dname = dfn.name
        return dname.package != name.package or dname.path[:-1] != name.path[:-1]  or isinstance(dfn, Check)

    @match(basestring)
    def upcase(self, s):
        return s[0:1].capitalize() + s[1:]

class Snowflake(str):
    def __eq__(self, other):
        return False

    def __hash__(self):
        return hash(str(self))

class Java(Target):

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

                      Functions   Tests""".split())

    @match(TargetModule, Definition)
    def define(self, module, dfn):
        target_name = self.define_name(module, dfn.name.path[-1])
        return TargetDefinition(target_name, module)

    @match(choice(Class, Interface))
    def define_module(self, dfn):
        return self.define_module(dfn.name.path)

    @match(Function)
    def define_module(self, dfn):
        return self.define_module(dfn.name.path[:-1] + (Snowflake("Functions"),))

    @match(Check)
    def define_module(self, dfn):
        return self.define_module(dfn.name.path[:-1] + (Snowflake("Tests"),))

    @match((many(basestring, min=1),))
    def define_module(self, path):
        if path not in self.definitions:
            parent = self.define_module(path[:-1])
            target_name = self.define_name(parent, path[-1])
            # XXX: here we can inject additional implementation namespace
            self.definitions[path] = TargetModule(parent.target_name + (target_name, ))
        return self.definitions[path]

    @match(())
    def define_module(self, path):
        # XXX: as a consequence, we don't check for duplicates of
        # toplevel module names because we don't store root, should that be prohibited by the IR anyways?
        return TargetModule(())

    @match(TargetModule, basestring)
    def define_name(self, module, defname):
        assert defname
        target_name = self.UNKEYWORDS.get(defname, defname)
        assert target_name
        target_name = target_name
        assert target_name not in module.target_names
        module.names[defname] = target_name
        module.target_names[target_name] = defname
        return target_name

    @match(Definition, TargetDefinition)
    def filename(self, dfn, tgtdfn):
        return "/".join(("src", "main", "java") + tgtdfn.module.target_name) + ".java"

    @match(Check, TargetDefinition)
    def filename(self, dfn, tgtdfn):
        return "/".join(("src", "test", "java") + tgtdfn.module.target_name) + ".java"

class Python(Target):

    UNKEYWORDS = dict((k, k+"_") for k in """self map list None True False""".split())

    @match(TargetModule, Definition)
    def define(self, module, dfn):
        target_name = self.define_name(module, dfn.name.path[-1])
        return TargetDefinition(target_name, module)

    @match(TargetModule, basestring)
    def define_name(self, module, defname):
        assert defname
        target_name = self.UNKEYWORDS.get(defname, defname)
        assert target_name
        target_name = target_name
        assert target_name not in module.target_names
        module.names[defname] = target_name
        module.target_names[target_name] = defname
        return target_name

    @match(Definition)
    def define_module(self, dfn):
        return self.define_module(dfn.name.path)

    @match(Check)
    def define_module(self, dfn):
        return self.define_module(dfn.name.path[:-1] + ("test_" + dfn.name.path[-2],))

    @match((many(basestring, min=1),))
    def define_module(self, path):
        if path not in self.definitions:
            parent = self.define_module(path[:-1])
            target_name = self.define_name(parent, path[-1])
            # XXX: here we can inject additional implementation namespace
            self.definitions[path] = TargetModule(parent.target_name + (target_name, ))
        return self.definitions[path]

    @match(())
    def define_module(self, path):
        # XXX: as a consequence, we don't check for duplicates of
        # toplevel module names because we don't store root, should that be prohibited by the IR anyways?
        return TargetModule(())

    @match(Definition, TargetDefinition)
    def filename(self, dfn, tgtdfn):
        return "/".join(tgtdfn.module.target_name) + ".py"

class Ruby(Target):

    UNKEYWORDS = dict((k, k+"_") for k in
    """ BEGIN END __ENCODING__ __END__ __FILE__ __LINE__ alias and begin
         break case class def defined?  do else elsif end ensure false
         for if in module next nil not or redo rescue retry return
         self super then true undef unless until when while yield
    """.split())

    @match(TargetModule, Definition)
    def define(self, module, dfn):
        target_name = self.define_name(module, self.upcase(dfn.name.path[-1]))
        return TargetDefinition(target_name, module)

    @match(Definition)
    def define_module(self, dfn):
        return self.define_module(dfn.name.path[:-1])

    @match(Check)
    def define_module(self, dfn):
        return self.define_module(dfn.name.path[:-2] + ("tc_" + dfn.name.path[-2],))

    @match((many(basestring, min=1),))
    def define_module(self, path):
        if path not in self.definitions:
            parent = self.define_module(path[:-1])
            target_name = self.define_name(parent, self.upcase(path[-1]))
            self.definitions[path] = TargetModule(parent.target_name + (target_name, ))
        return self.definitions[path]

    @match(TargetModule, basestring)
    def define_name(self, module, defname):
        assert defname
        target_name = self.UNKEYWORDS.get(defname, defname)
        assert target_name
        target_name = target_name
        assert target_name not in module.target_names
        module.names[defname] = target_name
        module.target_names[target_name] = defname
        return target_name

    @match(())
    def define_module(self, path):
        return TargetModule(())

    @match(Definition, TargetDefinition)
    def filename(self, dfn, tgtdfn):
        return "/".join(("lib", dfn.name.package) + tgtdfn.module.target_name) + ".rb"

    @match(Check, TargetDefinition)
    def filename(self, dfn, tgtdfn):
        return "/".join(("test", dfn.name.package) + tgtdfn.module.target_name) + ".rb"

class Go(Target):

    """Toplevel quark namespace maps to go package, the nested quark
       namespaces are flattened as part of identifier names to work
       around package cycle issues """

    UNKEYWORDS = dict((k, k+"_") for k in
                      """
                      break        default      func         interface    select
                      case         defer        go           map          struct
                      chan         else         goto         package      switch
                      const        fallthrough  if           range        type
                      continue     for          import       return       var""".split())


    @match(Definition)
    def define_module(self, dfn):
        return self.define_module((dfn.name.path[0], ))

    @match(TargetModule, Definition)
    def define(self, module, dfn):
        target_name = self.define_name(module, self.upcase("_".join(dfn.name.path[1:])))
        return TargetDefinition(target_name, module)

    @match(TargetModule, basestring)
    def define_name(self, module, defname):
        assert defname
        target_name = self.UNKEYWORDS.get(defname, defname)
        assert target_name
        target_name = target_name
        assert target_name not in module.target_names
        module.names[defname] = target_name
        module.target_names[target_name] = defname
        return target_name

    @match((many(basestring, min=1),))
    def define_module(self, path):
        if path not in self.definitions:
            parent = self.define_module(path[:-1])
            target_name = self.define_name(parent, path[-1])
            self.definitions[path] = TargetModule(parent.target_name + (target_name, ))
        return self.definitions[path]

    @match(())
    def define_module(self, path):
        # XXX: as a consequence, we don't check for duplicates of
        # toplevel module names because we don't store root, should that be prohibited by the IR anyways?
        return TargetModule(())

    @match(Definition, TargetDefinition)
    def filename(self, dfn, tgtdfn):
        return "/".join((dfn.name.package,) + tgtdfn.module.target_name + (tgtdfn.target_name.lower(),)) + ".go"

    @match(Check, TargetDefinition)
    def filename(self, dfn, tgtdfn):
        return "/".join((dfn.name.package,) + tgtdfn.module.target_name + (tgtdfn.target_name.lower() + "_test",)) + ".go"
