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
from .ast import (
    Bool, Class, TypeParam, Macro, Interface, Primitive, String, Number
)
from .helpers import (
    is_meta, get_fields, base_bindings, get_methods, is_abstract, constructor, mdroot
)

from .constants import (BUILTIN, REFLECT, OBJECT, VOID)
from .compiler import TypeExpr, texpr

class Reflector:

    def __init__(self, root, backend):
        self.root = root
        self.methods = OrderedDict()
        self.classes = []
        self.class_uses = OrderedDict()
        self.metadata = OrderedDict()
        self.entry = None
        self.backend = backend
        self.gen = self.backend.gen

    def visit_File(self, f):
        if not self.entry and not is_meta(f):
            self.entry = f

    def package(self, pkg):
        if pkg is None:
            return []
        else:
            return self.package(pkg.package) + [pkg.name.text]

    def qtype(self, texp):
        if isinstance(texp.type, TypeParam): return OBJECT
        result = ".".join(self.package(texp.type.package) + [texp.type.name.text])
        if isinstance(texp.type, Class) and texp.type.parameters:
            result += "<%s>" % ",".join([self.qtype(texp.bindings.get(p, TypeExpr(p, {})))
                                         for p in texp.type.parameters])
        return result

    def qname(self, texp):
        if isinstance(texp.type, TypeParam): return OBJECT
        return ".".join(self.package(texp.type.package) + [texp.type.name.text])

    def qparams(self, texp):
        if isinstance(texp.type, Class) and texp.type.parameters:
            return "[%s]" % ", ".join([self.qexpr(texp.bindings.get(p, TypeExpr(p, {}))) for p in texp.type.parameters])
        else:
            return "[]"

    def qexpr(self, texp):
        return '"%s"' % self.qtype(texp)

    def _has_reflect_class(self, type):
        # Technically List and Map could have classes, possibly? They don't now
        # though. Also parameterized types gets passed through, which is kinda
        # wrong too.
        cls = type.resolved.type
        return not (isinstance(cls, (Primitive, Interface, TypeParam)))

    def visit_Type(self, type):
        cls = type.resolved.type
        if not self._has_reflect_class(type):
            if cls.name.text not in ("List", "Map"):
                return
        if cls.parameters:
            if cls not in self.class_uses:
                self.class_uses[cls] = OrderedDict()
            qual = self.qtype(type.resolved)
            clazz = type.clazz
            package = tuple(self.package(type.package))
            if qual not in self.class_uses[cls]:
                self.class_uses[cls][qual] = (type.resolved, clazz, package)

    def qual(self, cls):
        return ".".join(self.package(cls.package) + [cls.name.text])

    def visit_Class(self, cls):
        if isinstance(cls, (Primitive, Interface)):
            if (cls.package and cls.package.name.text == BUILTIN and cls.name.text in ("List", "Map") or
                isinstance(cls, Interface)):
                self.classes.append(cls)
            return

        cls._extra_methods = lambda: self.gen_accessors(cls)

        self.classes.append(cls)

    def gen_pred(self, field):
        return self.apply_macro(self.get("Object", "__eq__"), self.texpr("String"), self.gen.name("name"),
                                [self.string(field.name)])

    def gen_ladder(self, texp, rung, default=None, pred=lambda f: True):
        cls, use_bindings = texp.type, texp.bindings

        ladder = []
        bindings = base_bindings(cls)
        bindings.update(use_bindings)
        for f in get_fields(cls):
            if pred(f):
                ladder.append(rung(f, bindings))
        if default:
            ladder.append(default)

        return ladder

    def gen_accessrung(self, field, bindings, get=True):
        if field.static:
            path = self.backend.add_import(field.clazz)
            cons = self.gen.get_static_field(path,
                                             self.backend.name(field.clazz.name),
                                             self.backend.name(field.name))
        else:
            cons = self.gen.get_field(self.gen.name("self"), self.backend.name(field.name))

        if get:
            cons = self.gen.return_(cons)
        else:
            cons = self.gen.assign(cons, self.gen_cast(texpr(field.resolved.type, bindings, field.resolved.bindings),
                                                       self.texpr("Object"),
                                                       self.gen.name("value")))

        return self.gen.if_(self.gen_pred(field), self.gen.block([cons]), None)

    def gen_fieldgets(self, texp):
        return self.gen_ladder(texp, self.gen_accessrung, self.gen.return_(self.gen.null()))

    def gen_fieldsets(self, texp):
        pred = lambda f: not isinstance(f.clazz, Interface)
        return self.gen_ladder(texp, lambda f, b: self.gen_accessrung(f, b, False), pred=pred)

    def gen_accessors(self, cls):
        methods = [
            self.gen.method("", self.backend.name(cls.name), self.type("String"),
                            self.gen.name("_getClass"), [],
                            self.gen.block([self.gen.return_(self.string(self.qtype(cls.resolved)))])
            ),
            self.gen.method("", self.backend.name(cls.name), self.type("Object"), self.gen.name("_getField"),
                            [self.gen.param(self.type("String"), self.gen.name("name"), None)],
                            self.gen.block(self.gen_fieldgets(cls.resolved))
            ),
            self.gen.method("", self.backend.name(cls.name), self.type("void"), self.gen.name("_setField"),
                            [self.gen.param(self.type("String"), self.gen.name("name"), None),
                             self.gen.param(self.type("Object"), self.gen.name("value"), None)],
                            self.gen.block(self.gen_fieldsets(cls.resolved))
            )
        ]
        return methods

    def gen_refs(self, cls, deps):
        statics = []
        for dep, mdpkg in deps.items():
            mdpath = self.backend.add_import([self.backend.name(mdpkg)], cls.root, cls.file)
            gotten = self.gen.get_static_field(mdpath, self.gen.name("Root"), self.gen.name("%s_md" % dep))
            statics.append(self.gen.static_field("",
                                                 self.backend.name(cls.name),
                                                 self.reftype("Class"),
                                                 self.gen.name("%s_ref" % dep),
                                                 self.apply_macro(self.get("reflect", "__register__"),
                                                                  None, None,
                                                                  [gotten])))
        return statics

    def mdname(self, id):
        for c in ".<,>":
            id = id.replace(c, "_")
        return id

    def leave_Root(self, root):
        mdpkg = mdroot(self.entry)
        self.backend.current_package = [self.backend.name(mdpkg)]

        self.code = ""
        mdclasses = []

        classes = OrderedDict()
        for cls in self.classes:
            classes[cls] = None
        classes.update(self.class_uses)

        generated = set()

        for cls in classes:
            qual = self.qual(cls)
            if cls.parameters:
                clsid = qual + "<%s>" % ",".join([OBJECT]*len(cls.parameters))
            else:
                clsid = qual

            uses = self.class_uses.get(cls, OrderedDict([(clsid,
                                                          (cls.resolved, cls, tuple(self.package(cls.package))))]))

            for clsid, (texp, ucls, pkg) in uses.items():
                # XXX: I *think* everything is always guaranteed to have a package these days.
                if pkg:
                    if clsid not in generated:
                        self.gen_clazz(texp, cls, clsid, qual)
                        generated.add(clsid)
                    if not ucls: continue
                    if ucls.package and ucls.package.name.text in (REFLECT, ):
                        continue
                    if ucls not in self.metadata:
                        self.metadata[ucls] = OrderedDict()
                    mdclasses.append((self.mdname(clsid), cls))
                    self.metadata[ucls][self.mdname(clsid)] = mdpkg

        self.gen_root(mdclasses)

        self.backend.current_package = None

    def gen_root(self, mdclasses):
        gname = self.backend.name("Root")
        fname = self.setclassfile(gname)
        statics = []
        generated = set()
        for cls, obj in mdclasses:
            varname = self.gen.name("%s_md" % cls)
            if varname in generated:
                continue
            else:
                generated.add(varname)
            mdpath = self.backend.add_import(self.backend.current_package, obj.root, obj.file)
            statics.append(self.gen.static_field("", gname, self.reftype("Class"), varname,
                                                 self.gen.get_static_field(mdpath,
                                                                           self.gen.name(cls),
                                                                        self.gen.name("singleton"))))
        dfn_code = self.gen.clazz("", False, gname, [], None, [], statics, [],
                                  [self.gen.default_constructor(gname)],
                                  self.gen_boilerplate(gname))
        self.backend.files[fname] += dfn_code

    def gen_qparams(self, texp):
        if isinstance(texp.type, Class) and texp.type.parameters:
            return self.gen.list_([self.string(self.qtype(texp.bindings.get(p, TypeExpr(p, {}))))
                                   for p in texp.type.parameters])
        else:
            return self.gen.list_([])

    def gen_fields(self, texp):
        cls, use_bindings = texp.type, texp.bindings

        fields = []
        bindings = base_bindings(cls)
        bindings.update(use_bindings)
        for f in get_fields(cls):
            fields.append(self.gen.construct(self.reftype("Field"),
                                             [self.string(self.qtype(texpr(f.resolved.type, bindings,
                                                                           f.resolved.bindings))),
                                              self.string(f.name.text)]))

        return self.gen.list_(fields)

    def gen_parents(self, texp):
        cls = texp.type
        parents = ([self.string(self.qual(parent_type.resolved.type))
                    for parent_type in cls.bases
                    if (self._has_reflect_class(parent_type) and
                        not parent_type.resolved.type.parameters)]
                   or [self.string("quark.Object")])
        return self.gen.list_(parents)

    def gen_clazz(self, texp, cls, id, name):
        gname = self.backend.name(self.mdname(id))
        methods = self.gen_meths(texp, cls, id)


        fname = self.setclassfile(gname)
        base = self.reftype("Class")
        mdpath = self.backend.add_import(self.backend.current_package, cls.root, cls.file)
        singleton = self.gen.static_field("", gname, base, self.backend.name("singleton"),
                                          self.gen.construct(self.gen.type(mdpath, gname, []), []))

        supargs = [self.string(id)]
        body = [
            self.gen.assign(self.gen.get_field(self.gen.name("self"), "name"), self.string(name)),
            self.gen.assign(self.gen.get_field(self.gen.name("self"), "parameters"), self.gen_qparams(texp)),
            self.gen.assign(self.gen.get_field(self.gen.name("self"), "fields"), self.gen_fields(texp)),
            self.gen.assign(self.gen.get_field(self.gen.name("self"), "methods"), methods),
            self.gen.assign(self.gen.get_field(self.gen.name("self"), "parents"), self.gen_parents(texp))
        ]

        cons = constructor(cls)
        argtypes = [self.erase(texpr(p.resolved.type, base_bindings(cls), texp.bindings, p.resolved.bindings))
                    for p in (cons.params if cons else [])]
#        unerased = [texpr(p.resolved.type, base_bindings(cls), texp.bindings, p.resolved.bindings)
#                    for p in (cons.params if cons else [])]
#        for t in unerased:
#            if "TLS" in t.type.name.text:
#                print t.type.name, t.bindings
        construct_args = self.gen_castargs("args", argtypes)

        if isinstance(cls, Interface) or is_abstract(cls):
            abstract = "true"
            construct_body = [self.gen.return_(self.gen.null())]
        else:
            abstract = "false"
            construct_body = [
                self.gen.return_(self.gen.construct(self.backend.type(self.erase(texp)), construct_args))
            ]

        construct = self.gen.method("", gname, self.type("Object"), self.gen.name("construct"),
                                    [self.gen.param(self.type("List", "Object"), self.gen.name("args"), None)],
                                    self.gen.block(construct_body))


        isabs = self.gen.method("", gname, self.type("bool"), self.gen.name("isAbstract"), [],
                                self.gen.block([self.gen.return_(self.gen.bool_(Bool(abstract)))]))

        dfn_code = self.gen.clazz("", False, gname, [], base, [], [singleton], [], [self.cons(gname, base, supargs,
                                                                                              body)],
                                  [construct, isabs] + self.gen_boilerplate(gname))
        self.backend.files[fname] += dfn_code

    def gen_meths(self, texp, cls, cid):
        if cls.package and cls.package.name.text in (BUILTIN, REFLECT): return self.gen.list_([])
        methods = []
        bindings = base_bindings(cls)
        bindings.update(texp.bindings)
        for m in get_methods(cls, False).values():
            if isinstance(m, Macro): continue
            mid = "%s_%s_Method" % (self.mdname(cid), m.name.text)
            mtype = self.erase(texpr(m.type.resolved.type, bindings, m.type.resolved.bindings))
            margs = [self.erase(texpr(p.resolved.type, bindings, p.resolved.bindings)) for p in m.params]
            self.gen_meth(texp, cls, m, mid, cid, mtype, m.name.text, margs)
            mdpath = self.backend.add_import(self.backend.current_package, cls.root, cls.file)
            methods.append(self.gen.construct(self.gen.type(mdpath, mid, []), []))
        return self.gen.list_(methods)

    def gen_meth(self, texp, cls, meth, mid, cid, type, name, params):
        fname = self.setclassfile(self.backend.name(mid))
        base = self.reftype("Method")
        supargs = [self.string(self.qtype(type)), self.string(name),
                   self.gen.list_([self.string(self.qtype(p)) for p in params])]

        body = [self.gen.local(self.backend.type(self.erase(texp)), self.gen.name("obj"),
                               self.gen_cast(self.erase(texp), self.texpr("Object"), self.gen.name("object")))]
        args = self.gen_castargs("args", params)

        if meth.static:
            invoke = self.gen.invoke_static_method(self.backend.add_import(meth.clazz),
                                                   self.backend.name(meth.clazz.name),
                                                   self.backend.name(meth.name),
                                                   args)
        else:
            invoke = self.gen.invoke_method(self.gen.name("obj"), self.gen.name(name), args)
        if self.qtype(type) == VOID:
            body.append(self.gen.expr_stmt(invoke))
            body.append(self.gen.return_(self.gen.null()))
        else:
            body.append(self.gen.return_(invoke))

        dfn_code = self.gen.clazz("", False, mid, [], base, [], [], [], [self.cons(self.backend.name(mid),
                                                                                   base, supargs, [])],
                                  [self.gen.method("", self.backend.name(mid), self.type("Object"),
                                                   self.gen.name("invoke"),
                                                   [self.gen.param(self.type("Object"),
                                                                   self.gen.name("object"),
                                                                   None),
                                                    self.gen.param(self.type("List", "Object"),
                                                                   self.gen.name("args"),
                                                                   None)],
                                                   self.gen.block(body))] +
                                  self.gen_boilerplate(self.backend.name(mid)))
        self.backend.files[fname] += dfn_code

    ##### HELPERS #####

    def gen_castargs(self, name, types):
        result = []
        for t in types:
            result.append(
                self.gen_cast(t, self.texpr("Object"),
                              self.apply_macro(self.get("List", "__get__"),
                                               self.texpr("List", "Object"),
                                               self.gen.name(name),
                                               [self.number(len(result))]))
            )
        return result

    def erase(self, texp):
        if isinstance(texp.type, TypeParam):
            if texp.type in texp.bindings:
                expr = texp.bindings[texp.type]
                return self.erase(texpr(expr.type, expr.bindings, texp.bindings))
            else:
                return self.texpr("Object")

        bindings = {}
        for k, v in texp.bindings.items():
            if v.type in texp.bindings:
                bindings[k] = self.erase(texp.bindings[v.type])
            else:
                bindings[k] = self.erase(v)
        for p in texp.type.parameters:
            if p not in bindings:
                bindings[p] = self.texpr("Object")
        return texpr(texp.type, bindings)

    def gen_cast(self, to, from_, expr):
        return self.backend.maybe_cast(to, self.backend.fake(from_, expr))

    def setclassfile(self, name):
        fname = self.gen.class_file(self.backend.current_package, name, None)
        if self.backend.setfile(fname, lambda: self.gen.make_class_file(self.backend.current_package, name, rtloc=self.backend.rtloc)):
            self.backend.files[fname] += "\n"
        return fname

    def refclass(self, name):
        return self.root.env["quark"].env["reflect"].env[name]

    def reftype(self, name):
        return self.backend.type(self.refclass(name), {})

    def cons(self, name, supname, supargs, body):
        body = [self.gen.expr_stmt(self.gen.invoke_super(name,
                                                         supname,
                                                         supargs))] + body
        return self.gen.constructor("", name, [], self.gen.block(body))

    def string(self, text):
        return self.gen.string(String('"%s"' % text))

    def type(self, name, *params):
        cls = self.root.env["quark"].env[name]
        bindings = {}
        idx = 0
        for p in cls.parameters:
            bindings[p] = texpr(self.root.env["quark"].env[params[idx]], {})
            idx += 1
        return self.backend.type(cls, bindings)

    def texpr(self, name, *params):
        cls = self.root.env["quark"].env[name]
        bindings = {}
        idx = 0
        for p in cls.parameters:
            bindings[p] = texpr(self.root.env["quark"].env[params[idx]], {})
            idx += 1
        return texpr(cls, bindings)

    def number(self, n):
        return self.gen.number(Number(str(n)))

    def get(self, name, attr):
        return self.root.env["quark"].env[name].env[attr]

    def apply_macro(self, macro, type, expr, args):
        return self.backend.apply_macro(macro, self.backend.fake(type, expr), args)

    def gen_boilerplate(self, name):
        return [self.gen_getclass(name, self.gen_cast(self.texpr("String"), self.texpr("void"), self.gen.null())),
                self.gen_getfield(name),
                self.gen_setfield(name)]

    def gen_getclass(self, name, result):
        return self.gen.method("", name, self.type("String"), self.gen.name("_getClass"), [],
                               self.gen.block([self.gen.return_(result)]))

    def gen_getfield(self, name):
        return self.gen.method("", name, self.type("Object"), self.gen.name("_getField"),
                               [self.gen.param(self.type("String"),
                                               self.gen.name("name"),
                                               None)],
                               self.gen.block([self.gen.return_(self.gen.null())]))

    def gen_setfield(self, name):
        return self.gen.method("", name, self.type("void"), self.gen.name("_setField"),
                               [self.gen.param(self.type("String"),
                                               self.gen.name("name"),
                                               None),
                                self.gen.param(self.type("Object"),
                                               self.gen.name("value"),
                                               None)],
                               self.gen.block([]))

    def cleanup(self):
        for cls in self.metadata:
            if getattr(cls, "_extra_statics", None):
                del cls._extra_statics

def reflect(root, be):
    ref = Reflector(root, be)
    root.traverse(ref)
    for cls, deps in ref.metadata.items():
        cls._extra_statics = lambda c=cls, d=deps: ref.gen_refs(c, d)
    return [mdroot(ref.entry)], ref.cleanup
