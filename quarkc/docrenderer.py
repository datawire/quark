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
Render constructed JSON structure as HTML.
"""

import os
import shutil

import jinja2


environment = jinja2.Environment(loader=jinja2.PackageLoader("quarkc", "apidoc"))


def find_namespaces(structure, res=None):
    if res is None:
        res = []
    for node in structure:
        if node["kind"] == "namespace":
            res.append(node)
            find_namespaces(node["definitions"], res)
    return res


def render(structure, target_directory):
    for name in ["apidoc.css"]:
        shutil.copy(os.path.join(os.path.dirname(__file__), "apidoc", name), target_directory)
    template = environment.get_template("index.html")
    namespaces = find_namespaces(structure)
    for namespace in namespaces:
        name = (namespace["path"] + "." if namespace["path"] else "") + namespace["name"] + ".html"
        res = template.render(main=namespace, namespaces=namespaces)
        with open(os.path.join(target_directory, name), "wb") as out:
            out.write(res)
