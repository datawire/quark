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

from .match import *
from .ir import *
from .ir import backlink, dfn_of
from . import tr

class TargetModule(object):
    """ Name of an importable module/package in the target """
    @match((many(basestring),))
    def __init__(self, target_name):
        self.target_name = target_name
        self.names = {}
        self.target_names = {}

    def __repr__(self):
        return "%s %s %s" % (self.target_name, self.names, self.target_names)

class TargetDefinition(object):
    """ Name of a ir.Definition in the target """
    @match(basestring, TargetModule)
    def __init__(self, name, module):
        self.name = name
        self.module = module

class Target(object):

    def __init__(self, parent=None):
        self.parent = parent
        if parent:
            self.depth = parent.depth + 1
        else:
            self.depth = 0
        self.files = {}
        self.modules = {}
        self.definitions = {}

    @match(Definition)
    def define(self, dfn):
        """Install a mapping in self.definitions[dfn.name] -> AllRequiredInfoOnTargetName"""
        tgt_module = self.define_module(dfn)
        tgt_def = self.define(tgt_module, dfn)
        self.definitions[dfn.name] = tgt_def
        return tgt_def

    def file(self, dfn):
        name = self.filename(dfn)
        if name not in self.files:
            self.files[name] = File(name)
        return self.files[name]

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
        """ REWORD: Return or create a tr.Module for a target as previously defined with a TargetModule and TargetDefinition """
        pydef = self.definitions[dfn.name]
        mod_path = pydef.module.target_name
        if mod_path not in self.modules:
            module = tr.Module(mod_path)
            self.modules[mod_path] = module
        return self.modules[mod_path]

    @match(Name)
    def nameof(self, name):
        return name.path[-1]

    @match(Ref)
    def is_interpackage(self, name):
        dfn = dfn_of(name)
        if dfn is None: return True
        dname = dfn.name
        return dname.package != name.package or dname.path[:-1] != name.path[:-1]  or isinstance(dfn, Check)

    @match(basestring)
    def upcase(self, s):
        return s[0:1].capitalize() + s[1:]

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

                      null        true            false """.split())

    @match(TargetModule, Definition)
    def define(self, module, dfn):
        target_name = self.define_name(module, dfn.name.path[-1])
        return TargetDefinition(target_name, module)

    @match(Definition)
    def define_module(self, dfn):
        return self.define_module(dfn.name.path[:-1])

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

    @match(Function)
    def filename(self, fun):
        # XXX this will clash with a Quark class 'Functions' in the same namespace
        return "/".join(("src", "main", "java") + fun.name.path[:-1] + ("Functions.java",))

    @match(Check)
    def filename(self, fun):
        # XXX this will clash with a Quark class 'Functions' in the same namespace
        return "/".join(("src", "test", "java") + fun.name.path[:-1] + ("Tests.java",))

    @match(choice(Class, Interface))
    def filename(self, cls):
        return "/".join(("src", "main", "java") + cls.name.path[:-1] + ("%s.java" % cls.name.path[-1], ))


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
        target_name = "haha_py_" + target_name
        assert target_name not in module.target_names
        module.names[defname] = target_name
        module.target_names[target_name] = defname
        return target_name

    @match(Definition)
    def define_module(self, dfn):
        return self.define_module(dfn.name.path)

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

    @match(Definition)
    def filename(self, dfn):
        for l in range(1,len(dfn.name.path)):
            init = "/".join(dfn.name.path[:l] + ('__init__.py',))
            if init not in self.files:
                self.files[init] = File(init)
        return "/".join(dfn.name.path[:]).lower() + ".py"

    @match(Check)
    def filename(self, dfn):
        return "/".join(dfn.name.path[:-1] + ("test_" + dfn.name.path[-2],)).lower() + ".py"

    @match(Ref)
    def needs_import(self, ref):
        dfn = dfn_of(ref)
        if dfn is None: return True
        return dfn.name.package != ref.package or dfn.name.path != ref.path

class RubyModuleStitcher(object):
    def __init__(self, target, lib_prefix):
        self.target = target
        self.lib_prefix = lib_prefix

    @match(basestring, (many(basestring), ))
    def filename(self, package, path):
        return "/".join((self.lib_prefix, package,) + path).lower() + ".rb"

    @match(basestring, basestring, (many(basestring), ))
    def global_require(self, global_package, package, path):
        package_name = self.filename(global_package, ())
        if package_name not in self.target.files:
            self.target.files[package_name] = File(package_name)
        package_file = self.target.files[package_name]
        package_file.header.append("require_relative '{module}'\n".format(
            module = "/".join((package, ) + path).lower()))
        return self.filename(package, path)

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

    @match(Definition)
    def filename(self, dfn):
        lib = RubyModuleStitcher(self, "lib")
        return lib.global_require(dfn.name.package, dfn.name.package, dfn.name.path)

    @match(Check)
    def filename(self, dfn):
        package = "ts_" + dfn.name.package
        path = dfn.name.path[:-1] + ("tc_" + dfn.name.path[-2],)
        test = RubyModuleStitcher(self, "test")
        test.global_require("ts", package, path)
        return test.global_require(package, package, path)

    def upcase(self, s):
        return s[0:1].capitalize() + s[1:]

    def is_intermodule(self, name):
        dfn = dfn_of(name)
        if dfn is None: return True
        assert dfn.name.package == name.package
        return dfn.name.path != name.path

    def rel_module(self, name):
        assert self.is_intermodule(name)
        dname = dfn_of(name).name
        ret = []
        for src, tgt in map(None, dname.path[:-1], name.path):
            if src == tgt and not ret: continue
            if src is not None:
                ret.insert(0, src)
            if tgt is not None:
                ret.append(tgt)
        return tuple(ret)

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
        return self.define_module(dfn.name.path[0])

    @match(TargetModule, Definition)
    def define(self, module, dfn):
        target_name = self.define_name(module, "_".join(dfn.name.path[1:]))
        return TargetDefinition(target_name, module)

    @match(TargetModule, basestring)
    def define_name(self, module, defname):
        assert defname
        target_name = self.UNKEYWORDS.get(defname, defname)
        assert target_name
        target_name = "haha_go_" + target_name
        assert target_name not in module.target_names
        module.names[defname] = target_name
        module.target_names[target_name] = defname
        return target_name

    @match(basestring)
    def define_module(self, pkg):
        if pkg not in self.definitions:
            target_name = self.define_name(TargetModule(()), pkg)
            self.definitions[pkg] = TargetModule((target_name, ))
        return self.definitions[pkg]

    @match(Definition)
    def filename(self, dfn):
        return "/".join((dfn.name.package,) + dfn.name.path[:1] + ("-".join(p.lower() for p in dfn.name.path[1:]),)) + ".go"

    @match(Check)
    def filename(self, dfn):
        return "/".join((dfn.name.package,) + dfn.name.path[:1] + ("-".join(p.lower() for p in dfn.name.path[:-1]) + "_test",)) + ".go"

    @match(Ref)
    def is_interpackage(self, name):
        dfn = dfn_of(name)
        if dfn is None: return True
        return dfn.name.package != name.package or dfn.name.path[0]  != name.path[0] or isinstance(dfn, Check)

    @match(Ref)
    def nameof(self, name):
        ident = "_".join(self.upcase(p) for p in name.path[1:])
        if self.is_interpackage(name):
            ident = name.path[0].lower() + "." + ident
        return ident

    @match(Name)
    def nameof(self, name):
        ident = "_".join(self.upcase(p) for p in name.path[1:])
        return ident

