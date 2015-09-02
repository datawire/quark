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

class Backend(object):

    def __init__(self):
        self.files = {}

class Java(Backend):

    def __init__(self):
        Backend.__init__(self)
        self.classr = ClassRenderer()

    def visit_Class(self, c):
        self.files[c.name.text + ".java"] = c.apply(self.classr)

def indent(st, level=4):
    if st:
        spaces = " "*level
        return ("\n" + st).replace("\n", "\n%s" % spaces) + "\n"
    else:
        return ""

class NameRenderer(object):

    def Name(self, n):
        return n.text

    def Type(self, t):
        return t.name.apply(self)

    def Var(self, v):
        return v.name.apply(self)

class ClassRenderer(object):

    def __init__(self):
        self.namer = NameRenderer()

    def Class(self, c):
        name = c.name.apply(self.namer)
        body = "\n".join([d.apply(self) for d in c.definitions])
        return "public class %s {%s}" % (name, indent(body))

    def Method(self, m):
        type = m.type.apply(self.namer)
        name = m.name.apply(self.namer)
        params = ", ".join([p.apply(self) for p in m.params])
        body = "\n".join([d.apply(self) for d in m.body])
        return "public %s %s(%s) {%s}" % (type, name, params, indent(body))

    def Declaration(self, d):
        type = d.type.apply(self.namer)
        name = d.name.apply(self.namer)
        if d.value:
            value = d.value.apply(self)
            return "%s %s = %s;" % (type, name, value)
        else:
            return "%s %s;" % (type, name)

    def Number(self, n):
        return n.text

    def String(self, s):
        return s.text

    def Binop(self, b):
        return "(%s) %s (%s)" % (b.left.apply(self), b.op, b.right.apply(self))

    def Var(self, v):
        return v.apply(self.namer)
