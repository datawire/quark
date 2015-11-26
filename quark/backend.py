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

import os, java, python, javascript
from collections import OrderedDict
from .ast import *
from .helpers import *

class Backend(object):

    def __init__(self, ext, gen):
        self.ext = ext
        self.gen = gen
        self.files = OrderedDict()
        self.packages = OrderedDict()  # Collect packages
        self.functions = OrderedDict()
        self.classes = OrderedDict()

    def write(self, target):
        if not os.path.exists(target):
            os.makedirs(target)
        files = self.gen.package(self.packages, self.files)
        for name, content in files.items():
            path = os.path.join(target, name)
            dir = os.path.dirname(path)
            if not os.path.exists(dir):
                os.makedirs(dir)
            open(path, "wb").write(content)
            print "quark (compile): wrote", path

class Java(Backend):

    def __init__(self):
        Backend.__init__(self, "java", java)
        self.dfnr = java.DefinitionRenderer()
        self.functions = []

    def visit_Class(self, c):
        pkg = self.dfnr.namer.package(c)
        if pkg:
            self.files["%s/%s.java" % (pkg.replace(".", "/"), c.name.text)] = c.match(self.dfnr)
        else:
            self.files["%s.java" % c.name.text] = c.match(self.dfnr)

    def visit_Function(self, f):
        if not isinstance(f, Method):
            self.functions.append(f)

    def leave_Root(self, r):
        if self.functions:
            packages = OrderedDict()
            for f in self.functions:
                pkg = self.dfnr.namer.package(f)
                if pkg in packages:
                    functions = packages[pkg]
                else:
                    functions = []
                    packages[pkg] = functions
                functions.append(f.match(self.dfnr))
                if f.name.text == "main":
                    functions.append("public static void main(String[] args) {\n    main();\n}")
            for pkg, functions in packages.items():
                cls = "public class Functions {%s}" % indent("\n".join(functions))
                if pkg:
                    self.files["%s/Functions.java" % pkg.replace(".", "/")] = "package %s;\n\n%s" % (pkg, cls)
                else:
                    self.files["Functions.java"] = cls

    def visit_Package(self, pkg):
        pname = self.dfnr.namer.package(pkg)
        if pkg.package is None:  # Grab a list of top-level packages
            self.packages.setdefault(pname, []).append(pkg)
            pkg.version = get_package_version(pkg)

    def visit_Primitive(self, p):
        pass

class Python(Backend):

    def __init__(self):
        Backend.__init__(self, "py", python)
        self.gen = python
        self.dfnr = python.PythonDefinitionRenderer()
        self.header = "from quark_runtime import *\n\n"

    def imports(self, packages):
        result = "\n".join(["import %s" % pkg for pkg in packages.keys()])
        if result: result += "\n\n"
        return result

    def visit_Package(self, pkg):
        pkg.imports = OrderedDict()
        pkg.has_main = False
        content = "\n".join([d.match(self.dfnr) for d in pkg.definitions])
        if pkg.has_main:
            content += '\n\nif __name__ == "__main__":\n    main()'
        content = content.rstrip() + "\n"
        pname = self.dfnr.namer.package(pkg)
        fname = "%s/__init__.py" % pname.replace(".", "/")
        if fname in self.files:
            self.files[fname] = self.files[fname].strip() + "\n\n" + self.imports(pkg.imports) + content
        else:
            self.files[fname] = self.header + self.imports(pkg.imports) + content
        self.packages.setdefault(pname, []).append(pkg)
        pkg.version = get_package_version(pkg)

    def visit_File(self, file):
        file.imports = OrderedDict()
        file.has_main = False
        content = "\n".join([d.match(self.dfnr) for d in file.definitions])
        if file.has_main:
            content += '\n\nif __name__ == "__main__":\n    main()'
        content = content.rstrip() + "\n"
        if content.strip() != "":
            fname = os.path.splitext(os.path.basename(file.name))[0]
            self.files["%s.py" % self.dfnr.namer.get(fname)] = \
                self.header + self.imports(file.imports) + content

    def visit_Primitive(self, p):
        pass

class JavaScript(Backend):

    def __init__(self):
        Backend.__init__(self, "js", javascript)
        self.dfnr = javascript.JSDefinitionRenderer()
        self.header = """var _qrt = require("datawire-quark-core");\n"""

    def imports(self, packages, origin=None):
        if origin:
            origin_name = self.dfnr.namer.package(origin)
        else:
            origin_name = ""

        result = ""

        for pkg in packages.keys():
            path = pkg.split(".")
            if origin and path[0] in origin.env and isinstance(origin.env[path[0]], Package):
                subpackage = True
            elif origin:
                subpackage = False
            else:
                subpackage = True

            if subpackage:
                prefix = "./"
            else:
                prefix = "../"*len(origin_name.split("."))

            result += "var %s = require('%s%s');\n" % (path[0], prefix, path[0])
            if subpackage:
                result += "exports.%s = %s;\n" % (pkg, pkg)

        if result:
            result += "\n"

        return result

    def visit_Package(self, pkg):
        pkg.imports = OrderedDict()
        pkg.has_main = False
        pkg.readme = ""
        content = "\n".join([d.match(self.dfnr) for d in pkg.definitions])
        pname = self.dfnr.namer.package(pkg)
        if pkg.package is None:  # Grab a list of top-level packages
            self.packages.setdefault(pname, []).append(pkg)
        pkg.version = get_package_version(pkg)
        pkg.readme = "# %s %s\n\n" % (pname, pkg.version) + pkg.readme
        fname = "%s/index.js" % pname.replace(".", "/")
        if pkg.has_main:
            content += "\n\nmain();"
        content = content.rstrip() + "\n"
        if fname in self.files:
            self.files[fname] = self.files[fname].strip() + "\n\n" + self.imports(pkg.imports, pkg) + content
        else:
            self.files[fname] = self.header + self.imports(pkg.imports, pkg) + content

    def visit_File(self, file):
        file.imports = OrderedDict()
        file.has_main = False
        content = "\n".join([d.match(self.dfnr) for d in file.definitions])
        if file.has_main:
            content = content.rstrip() + "\n\nmain();"
        content = content.rstrip() + "\n"
        if content.strip() != "":
            fname = "%s.js" % os.path.splitext(os.path.basename(file.name))[0]
            self.files[fname] = self.header + self.imports(file.imports) + content

    def visit_Primitive(self, p):
        pass
