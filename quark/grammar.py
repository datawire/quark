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

import parsimonious
from parsimonious import ParseError

class Grammar:

    def __init__(self):
        self.rules = []

    def rule(self, r):
        self.rules.append(r)
        def decorate(action):
            def decorator(self, node, children):
                rule_name = action.__name__[len("visit_"):]
                result = action(self, node, children)
                if hasattr(result, "origin"):
                    result.origin(node)
                    result._rule = rule_name
                return result
            return decorator
        return decorate

    def parser(self, cls):
        extra_rules = []
        visitors = {}
        for kw in getattr(cls, "keywords", ()):
            extra_rules.append('%s = _ "%s" !~"[_a-zA-Z0-9]" _' % (kw.upper(), kw))
            visitors["visit_%s" % kw.upper()] = lambda self, node, children, x=kw: x

        for name, sym in getattr(cls, "symbols", {}).items():
            extra_rules.append('%s = _ "%s" _' % (name, sym))
            visitors["visit_%s" % name] = lambda self, node, children, x=sym: x

        class Parser(cls, parsimonious.NodeVisitor):
            rules = "\n".join(self.rules + extra_rules)
            grammar = parsimonious.Grammar(rules)

            def rule(self, name, text):
                return self.visit(self.grammar[name].parse(text))

        for k, v, in visitors.items():
            cls.__dict__[k] = v
        return Parser
