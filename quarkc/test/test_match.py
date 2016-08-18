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

import pytest
from quarkc.match import *

class Action(object):

    def __init__(self, label):
        self.label = label
        self.args = None

    def __call__(self, *args):
        self.args = args
        return self

    def __repr__(self):
        return "Action(%s)" % self.label

class Foo(object):
    pass

FOO = Foo()

class Bar(Foo):
    pass

class Baz(object):
    pass

def say(x):
    print x

def test_giant_switch():

    OBJECT = Action("object")
    BAZ = Action("Baz")
    FOO_TYPE = Action("Foo")
    FOO_VALUE = Action("FOO")
    FOO_BAZ = Action("Foo, Baz")
    FOO_OBJECT = Action("Foo, object")
    OBJECT_THREE = Action("object, 3")
    OBJECT_OBJECT = Action("object, object")
    INTS = Action("ints")
    THREES = Action("threes")
    ONE_TO_FOUR = Action("1, 2, 3, 4")
    LIST_OF_INT = Action("list-of-int")
    LIST_OF_ZERO = Action("list-of-zero")
    TUPLE_OF_INT = Action("tuple-of-int")
    PAIRS = Action("PAIRS")

    frag = choice(
        when(object, OBJECT),
        when(Baz, BAZ),
        when(Foo, FOO_TYPE),
        when(FOO, FOO_VALUE),
        when(one(Foo, Baz), FOO_BAZ),
        when(one(Foo, object), FOO_OBJECT),
        when(one(Bar, 3), FOO_OBJECT),
        when(one(object, 3), OBJECT_THREE),
        when(one(object, object), OBJECT_OBJECT),
        when(one(int, many(int)), INTS),
        when(one(3, many(3)), THREES),
        when(one(1, 2, 3, 4), ONE_TO_FOUR),
        when([many(int)], LIST_OF_INT),
        when([0], LIST_OF_ZERO),
        when((int,), TUPLE_OF_INT),
        when(many(str, int), PAIRS)
    )

    n = compile(frag)

    assert n.apply(Foo()) == FOO_TYPE
    assert n.apply(Bar()) == FOO_TYPE
    assert n.apply(Baz()) == BAZ
    assert n.apply(FOO) == FOO_VALUE
    assert n.apply(Foo(), Baz()) == FOO_BAZ
    assert n.apply(Foo(), 3) == FOO_OBJECT
    assert n.apply(Bar(), 3) == FOO_OBJECT
    assert n.apply(object(), object()) == OBJECT_OBJECT
    assert n.apply(3) == THREES
    assert n.apply(3, 3) == THREES
    assert n.apply(3, 3, 3) == THREES
    assert n.apply(3, 3, 3, 3) == THREES
    assert n.apply(1, 2, 3, 4) == ONE_TO_FOUR
    assert n.apply(0, 1, 2, 3) == INTS
    assert n.apply([1, 2, 3, 4]*100) == LIST_OF_INT
    assert n.apply([0]) == LIST_OF_ZERO
    assert n.apply((0,)) == TUPLE_OF_INT
    assert n.apply("one", 1, "two", 2, "three", 3) == PAIRS
    try:
        n.apply("one", 1, "two", 2, "three")
        assert False, "expected MatchError"
    except MatchError, e:
        pass

@match(int, str)
def asdf(x, y):
    return 1, x, y

@match(str, int)
def asdf(x, y):
    return 2, x, y

@match(3, opt(str))
def asdf(x, y="bleh"):
    return 3, x, y

@match(choice(int, float))
def asdf(x):
    return 4, x

@match(int)
def asdf(x):
    return 5, x

def test_asdf():
    assert asdf(1, "two") == (1, 1, "two")
    assert asdf("one", 2) == (2, "one", 2)
    assert asdf(3) == (3, 3, "bleh")
    assert asdf(3, "fdsa") == (3, 3, "fdsa")
    assert asdf(3.14) == (4, 3.14)

class Test(object):

    @match(str)
    def __init__(self, x):
        self.x = x
        self.case = 1

    @match(int)
    def __init__(self, y):
        self.__init__(str(y))
        self.case = 2

    @match(str, int)
    def foo(self, x, y):
        return 1, x, y

    @match(int, str)
    def foo(self, x, y):
        return 2, x, y

    @match([many(int)])
    def foo(self, lst):
        return 3, lst

class Sub(Test):

    @match(float)
    def __init__(self, x):
        self.__init__(int(x))
        self.case = 3

    @match(str)
    def foo(self, s):
        return 4, s

def test_Test():
    t = Test(1)
    assert t.case == 2
    assert t.x == "1"

    t = Test("one")
    assert t.case == 1
    assert t.x == "one"

    assert Test.foo(t, 1, "two") == (2, 1, "two")
    assert t.foo(1, "two") == (2, 1, "two")
    assert t.foo("one", 2) == (1, "one", 2)
    assert t.foo([1, 2, 3]) == (3, [1, 2, 3])

    s = Sub(3.14)
    assert s.case == 3
    assert s.x == "3"
    assert Sub.foo(s, "asdf") == (4, "asdf")
    assert Sub.foo(s, "asdf", 3) == (1, "asdf", 3)

@match(many(int))
def fdsa(*args):
    return args

def test_fdsa():
    assert fdsa() == ()
    assert fdsa(1) == (1,)
    assert fdsa(1, 2) == (1, 2)

@match(int)
def fib(n):
    return fib(n-1) + fib(n-2)

@match(choice(0, 1))
def fib(n):
    return n

def test_fib():
    assert fib(0) == 0
    assert fib(1) == 1
    assert fib(5) == 5
    assert fib(10) == 55
    assert fib(20) == 6765
