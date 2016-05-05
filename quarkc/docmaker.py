# Copyright 2016 datawire. All rights reserved.
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
Output JSON to enable Quark-specific documentation generation.
"""

import json

import ast
from .helpers import doc as get_doc_annotations
from .coder import Coder
from .dispatch import dispatch

coder = Coder()


class MultiNamespace(ast.Package):

    def append(self, ns):
        assert isinstance(ns, ast.Package), (ns.name, ns.__class__.__name__)
        assert str(self.name) == str(ns.name), (self.name, ns.name)
        self.definitions = self.definitions + ns.definitions


class Documenter(object):
    """
    defn
     distunit
     namespace
     callable
      function
      macro
     class
      interface
      primitive
    """

    def __init__(self):
        # Current state
        self.ns_path = []

        # Collected total state
        self.ns_order = []
        self.namespaces = {}  # dotted name -> list of definitions

    def get_curr_namespace(self):
        return ".".join(str(ns.name) for ns in self.ns_path)

    def visit_Package(self, ns):  # namespace
        if str(ns.name).endswith("_md"):
            return
        self.ns_path.append(ns)

    def leave_Package(self, ns):  # namespace
        if str(ns.name).endswith("_md"):
            return
        assert ns is self.ns_path[-1], (ns.name, self.ns_path[-1].name)

        dotted = self.get_curr_namespace()
        if dotted not in self.namespaces:
            self.ns_order.append(dotted)
            self.namespaces[dotted] = MultiNamespace(ns.name, [])
        self.namespaces[dotted].append(ns)

        self.ns_path.pop()


def get_doc(node):
    res = " ".join(get_doc_annotations(node))
    if not res:
        res = "(%s)" % node.__class__.__name__.lower()
    return res


def get_type_name(typed):
    return str(coder.code(typed.type)).replace("<", "&lt;").replace(">", "&gt;")


@dispatch(ast.DistUnit)
def make_doc_structure(du, doc, path):
    return {}


@dispatch(ast.Package)  # namespace
def make_doc_structure(ns, doc, dotted):
    path = dotted.split(".")
    res = [dict(name=dotted, description=get_doc(ns), path=path)]
    for dfn in ns.definitions:
        if isinstance(dfn, ast.Package):
            continue
        json = make_doc_structure(dfn, doc, dotted + "." + str(dfn.name))
        if json:
            res.append(json)
    return res


def not_make_doc_structure(ns, doc, dotted):
    path = dotted.split(".")
    res = dict(name=dotted,
               kind="function",      # namespace
               description="Namespace " + str(ns.name),
               tags=[],
               members=dict(instance=[], static=[]),
               memberof=".".join(path[:-1]),
               scope="static",
               path=path)
    for dfn in ns.definitions:
        if isinstance(dfn, ast.Package):
            continue
        json = make_doc_structure(dfn, doc, dotted + "." + str(dfn.name))
        if json:
            res["members"]["static"].append(json)
    return res


def function_helper(node, doc, dotted):
    path = dotted.split(".")
    res = dict(name=dotted,
               kind="function",
               tags=[],
               description=get_doc(node),
               context=dict(loc=dict(start=dict(line=node.line, column=node.column),
                                     end=dict(line=node.line, column=node.column)),  # XXX
                            file=node.filename, code=""),
               members=dict(instance=[], static=[]),
               memberof=".".join(path[:-1]),
               scope="static",
               params=[],
               returns=[],
               path=path)
    for param in node.params:
        res["params"].append(dict(title="param", description=get_doc(param), name=str(param.name),
                                  type=dict(type="NameExpression", name=get_type_name(param))))
    if node.type and get_type_name(node) != "void":
        res["returns"].append(dict(title="returns", description="(return value)",
                                   type=dict(type="NameExpression", name=get_type_name(node))))
    return res


@dispatch(ast.Function)
def make_doc_structure(node, doc, dotted):
    res = function_helper(node, doc, dotted)
    #res["description"] = "Function " + str(node.name)
    return res


@dispatch(ast.Macro)
def make_doc_structure(node, doc, dotted):
    res = function_helper(node, doc, dotted)
    #res["description"] = "Macro " + str(node.name)
    return res


@dispatch(ast.Method)
def make_doc_structure(node, doc, dotted):
    res = function_helper(node, doc, dotted)
    #res["description"] = "Method " + str(node.name)
    res["scope"] = "static" if node.static else "instance"
    return res


@dispatch(ast.MethodMacro)
def make_doc_structure(node, doc, dotted):
    res = function_helper(node, doc, dotted)
    #res["description"] = "MethodMacro " + str(node.name)
    res["scope"] = "static" if node.static else "instance"
    return res


@dispatch(ast.Constructor)
def make_doc_structure(node, doc, dotted):
    res = function_helper(node, doc, dotted)
    #res["description"] = "Constructor " + str(node.name)
    return res


@dispatch(ast.ConstructorMacro)
def make_doc_structure(node, doc, dotted):
    res = function_helper(node, doc, dotted)
    #res["description"] = "ConstructorMacro " + str(node.name)
    return res


@dispatch(ast.Field)
def make_doc_structure(node, doc, dotted):
    res = dict(name=str(node.name), description=get_doc(node),
               type=dict(type="NameExpression", name=get_type_name(node)))
    return res


def class_helper(node, doc, dotted):
    path = dotted.split(".")
    res = dict(name=dotted,
               kind="class",
               tags=[],
               description=get_doc(node),
               context=dict(loc=dict(start=dict(line=node.line, column=node.column),
                                     end=dict(line=node.line, column=node.column)),  # XXX
                            file=node.filename, code=""),
               members=dict(instance=[], static=[]),
               properties=[],
               memberof=".".join(path[:-1]),
               scope="static",
               path=path)
    for dfn in node.definitions:
        # field / constructor / method / constructor_macro / method_macro
        if str(dfn.name) in "_getClass _getField _setField".split():
            continue
        json = make_doc_structure(dfn, doc, dotted + "." + str(dfn.name))
        if isinstance(dfn, ast.Field):
            res["properties"].append(json)
        else:
            res["members"][json["scope"]].append(json)
    return res


@dispatch(ast.Class)
def make_doc_structure(node, doc, path):
    res = class_helper(node, doc, path)
    #res["description"] = "Class " + str(node.name)
    return res


@dispatch(ast.Interface)
def make_doc_structure(node, doc, path):
    res = class_helper(node, doc, path)
    #res["description"] = "Interface " + str(node.name)
    return res


@dispatch(ast.Primitive)
def make_doc_structure(node, doc, path):
    res = class_helper(node, doc, path)
    #res["description"] = "Primitive " + str(node.name)
    return res


def make_docs_json(compiled, filename):
    doc = Documenter()
    for root in compiled.roots.sorted():
        root.traverse(doc)

    res = sum([make_doc_structure(doc.namespaces[dotted], doc, dotted)
               for dotted in doc.ns_order
               if dotted.split(".")[0] != "quark"], [])

    with open(filename, "wb") as out:
        json.dump(res, out, indent=4)
