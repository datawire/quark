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

import cgi
import json
from collections import OrderedDict

import ast
from .helpers import doc as get_doc_annotations
from .coder import Coder
from .dispatch import dispatch


class MultiNamespace(ast.Package):
    """
    A namespace a.b.c can be defined in more than one location in a file
    and even over multiple files. This object collects multiple sets of
    definitions associated with a namespace a.b.c and combines them.
    """

    def append(self, ns):
        assert isinstance(ns, ast.Package), (ns.name, ns.__class__.__name__)
        assert str(self.name) == str(ns.name), (self.name, ns.name)
        self.definitions = self.definitions + ns.definitions


class Documenter(object):
    """
    Collect namespaces in the order they were first defined.
    """

    def __init__(self):
        # Current state
        self.ns_path = []

        # Collected total state
        self.namespaces = OrderedDict()  # dotted name -> list of definitions

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
            self.namespaces[dotted] = MultiNamespace(ns.name, [])
        self.namespaces[dotted].append(ns)

        self.ns_path.pop()


def get_doc(node):
    """
    Return a node's documentation as a string, pulling from annotations
    or constructing a simple fake as needed.
    """
    res = " ".join(get_doc_annotations(node))
    if not res:
        res = "(%s)" % node.__class__.__name__.lower()
    return res


def get_code(node, coder=Coder()):
    """
    Return a node's code
    """
    return cgi.escape(str(coder.code(node)), quote=True)


def get_type_name(typed):
    """
    Return a typed node's type as an HTML-friendly string.
    """
    return get_code(typed.type)


def get_child_path(path, node):
    if path:
        return path + "." + str(node.name)
    else:
        return str(node.name)


def is_private(node, path):
    name = str(node.name)
    if name[0] == "_" and name[1] != "_":
        return True
    if isinstance(node, ast.Field) and node.static:
        if name == path.replace(".", "_") + "_ref":
            return True
    return False


def get_visibility(node, path):
    if is_private(node, path):
        return "private"
    return "public"


def make_struct(node, path):
    res = OrderedDict()
    res["name"] = str(node.name)
    res["path"] = path
    res["visibility"] = get_visibility(node, path)
    res["description"] = get_doc(node)
    return res


@dispatch(ast.AST)
def make_doc_structure(node, path):
    raise ValueError("Unhandled node type %r at %s" % (node.__class__.__name__, get_child_path(path, node)))


@dispatch(ast.Package)  # aka namespace
def make_doc_structure(node, path):
    res = make_struct(node, path)
    res["kind"] = "namespace"
    res["definitions"] = []
    child_path = get_child_path(path, node)
    for dfn in node.definitions:
        st = make_doc_structure(dfn, child_path)
        res["definitions"].append(st)
    return res


@dispatch(ast.Class)
def make_doc_structure(node, path):
    res = make_struct(node, path)
    kind = node.__class__.__name__.lower()
    assert kind in "class interface primitive".split(), (path, node.name, kind)
    res["kind"] = kind
    res["bases"] = [get_code(base) for base in node.bases]
    res["parameters"] = [get_code(parameter) for parameter in node.parameters]
    child_path = get_child_path(path, node)
    res["definitions"] = []
    for dfn in node.definitions:
        st = make_doc_structure(dfn, child_path)
        res["definitions"].append(st)
    return res


@dispatch(ast.Field)
def make_doc_structure(node, path):
    res = make_struct(node, path)
    res["kind"] = "static field" if node.static else "instance field"
    res["type"] = get_type_name(node)
    return res


@dispatch(ast.Callable)
def make_doc_structure(node, path):
    # function, macro, constructor, instance method, static method, constructor macro, method macro
    res = make_struct(node, path)
    kind = node.__class__.__name__.lower()
    if kind == "method":
        kind = "static method" if node.static else "instance method"
    elif kind == "constructormacro":
        kind = "constructor macro"
    elif kind == "methodmacro":
        kind = "method macro"
    res["kind"] = kind
    res["type"] = get_type_name(node)
    child_path = get_child_path(path, node)
    res["parameters"] = []
    for parameter in node.params:
        st = make_doc_structure(parameter, child_path)
        res["parameters"].append(st)
    return res


@dispatch(ast.Param)
def make_doc_structure(node, path):
    res = make_struct(node, path)
    res["kind"] = "parameter"
    res["type"] = get_type_name(node)
    return res


def make_docs_json(root, filename):
    doc = Documenter()
    root.traverse(doc)
    res = []
    for dotted, ns in doc.namespaces.items():
        if "." in dotted:
            continue
        structure = make_doc_structure(ns, "")
        res.append(structure)
    with open(filename, "wb") as out:
        json.dump(res, out, indent=4)
    return res
