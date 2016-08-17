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

class Foo(object):
    pass

FOO = Foo()

class Bar(Foo):
    pass

class Baz(object):
    pass

def say(x):
    print x

frag = choice(
    when(object, lambda x: say("fallback: %s" % x)),
    when(Baz, lambda x: say("baz: %s" % x)),
    when(Foo, lambda x: say("foo: %s" % x)),
    when(FOO, lambda x: say("specific: %s" % x)),
    when(one(Foo, Baz), lambda x, y: say("foobaz: %s, %s" % (x, y))),
    when(one(Foo, object), lambda x, y: say("foofallback: %s, %s" % (x, y))),
    when(one(Bar, 3), lambda x, y: say("hey!")),
    when(one(object, 3), lambda x, y: say("ha!")),
    when(one(object, object), lambda x, y: say("superfallback")),
    when(one(int, many(int)), lambda *args: say("ints: {}".format(args))),
    when(one(3, many(3)), lambda *args: say("%s threes" % len(args))),
    when(one(1, 2, 3, 4), lambda *args: say("ok, now you're just counting")),
    when([many(int)], lambda l: say("list of int: %s" % len(l))),
    when([0], lambda l: say("special list")),
    when((int,), lambda t: say("tuple")),
    when(many(str, int), lambda *pairs: say("pairs: %s" % (len(pairs)/2)))
)

print frag.start
n = compile(frag)
print n
n.apply(Foo())
n.apply(Bar())
n.apply(Baz())
n.apply(FOO)
n.apply(Foo(), Baz())
n.apply(Foo(), 3)
n.apply(Bar(), 3)
n.apply(object(), object())
n.apply(3)
n.apply(3, 3)
n.apply(3, 3, 3)
n.apply(3, 3, 3, 3)
n.apply(1, 2, 3, 4)
n.apply(0, 1, 2, 3)
n.apply([1, 2, 3, 4]*100)
n.apply([0])
n.apply((0,))
n.apply("one", 1, "two", 2, "three", 3)

@match(int, str)
def asdf(x, y):
    return "hey", x, y

@match(str, int)
def asdf(x, y):
    return "ha", x, y

@match(3, opt(str))
def asdf(x, y="bleh"):
    return "three", y

@match(choice(int, float))
def asdf(x):
    return "xxx", x

@match(int)
def asdf(x):
    return "yyy", x

print asdf.fragment.start
print compile(asdf.fragment)

print "==="

print asdf(1, "two")
print asdf("one", 2)
print asdf(3)
print asdf(3, "fdsa")
print asdf(3.14)

class Test(object):

    @match(str)
    def __init__(self, x):
        self.x = x

    @match(int)
    def __init__(self, y):
        self.__init__(str(y))

    @match(str, int)
    def foo(self, x, y):
        return "a", x, y

    @match(int, str)
    def foo(self, x, y):
        return "b", x, y

    @match([many(int)])
    def foo(self, lst):
        return len(lst)

class Sub(Test):

    @match(float)
    def __init__(self, x):
        self.__init__(int(x))

    @match(str)
    def foo(self, s):
        return "singlestr", s

print "==="

t = Test(1)
print repr(t.x)
t = Test("one")
print Test.foo(t, 1, "two")
print repr(t.x)
print t.foo(1, "two")
print t.foo("one", 2)
print t.foo([1, 2, 3])
s = Sub(3.14)
print s.x
print Sub.foo(s, "asdf")
print Sub.foo(s, "asdf", 3)

@match(many(int))
def fdsa(*args):
    print args

fdsa()
fdsa(1)
fdsa(1, 2)

@match(int)
def fib(n):
    return fib(n-1) + fib(n-2)

@match(choice(0, 1))
def fib(n):
    return n

print fib(20)
