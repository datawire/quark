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

from .match import match, choice
from .ir import (Definition, Doc, Constructor, Method, Message)

from .tree import split, isa
from .emit_target import Target, Javascript, Java


def documentable(): return choice(Definition, Method, Message)


@match(documentable(), Target)
def docs(fun, target):
    docs, _ = split(fun.annotations, isa(Doc))
    return "\n".join(doc.doc for doc in docs)

@match(documentable(), Java)
def docs(fun, target):
    docs, _ = split(fun.annotations, isa(Doc))
    return "\n".join(doc.doc for doc in docs).replace("<","&lt;").replace(">","&gt;")


@match(Constructor, Javascript)
def docs(fun, target):
    docs, _ = split(fun.annotations, isa(Doc))
    clazz = target.q.parent(fun)
    clsdocs, _ = split(clazz.annotations, isa(Doc))

    return "\n".join(doc.doc for doc in (
        clsdocs + (Doc(""),) +
        docs + (Doc("\n@constructor"),)))
