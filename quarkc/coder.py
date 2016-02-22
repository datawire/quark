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

from contextlib import contextmanager

class Coder:

    def __init__(self):
        self.level = 0

    def indent(self):
        self.level += 1

    def dedent(self):
        self.level -= 1

    @contextmanager
    def indentation(self):
        self.indent()
        yield
        self.dedent()

    def code(self, node, sep=", ", head="", tail="", tailoff=-1):
        if node is None:
            return ""
        elif isinstance(node, (tuple, list)):
            if sep == "\n":
                sep = sep + ("    "*self.level)
            if head == "\n":
                head = head + ("    "*self.level)
            if tail == "\n":
                tail = tail + ("    "*(self.level + tailoff))
            joined = sep.join([self.code(n) for n in node])
            if joined:
                return "%s%s%s" % (head, joined, tail)
            else:
                return joined
        elif getattr(node, "_silent", False):
            return ""
        else:
            return node.code(self)
