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

import inspect

class MatchError(Exception):
    pass

class State:

    sequence = 0

    def __init__(self):
        self.id = State.sequence
        State.sequence += 1
        self.matches = {}
        self.epsilons = ()
        self.action = None

    @property
    def epsilon_closure(self):
        todo = [self]
        done = set()
        while todo:
            s = todo.pop()
            done.add(s)
            for e in s.epsilons:
                yield e
                if e not in done:
                    todo.append(e)

    def compile(self):
        if self.epsilons:
            assert self.action is None
        actions = set()
        for e in self.epsilon_closure:
            if e.action:
                actions.add(e.action)
            for k, v in e.matches.items():
                for s in v: self.edge(k, s)
        assert len(actions) <= 1
        if actions:
            self.action = actions.pop()
        self.epsilons = ()

    def edge(self, *args):
        if len(args) == 1:
            assert isinstance(args[0], State)
            self.epsilons += args
        elif len(args) == 2:
            key, state = args
            self.matches[key] = self.matches.get(key, ()) + (state,)
        else:
            assert False, "wrong number of args"

    def __setitem__(self, key, value):
        self.matches[key] = (value,)

    def __getitem__(self, key):
        return self.matches.get(key, ())

    def __repr__(self):
        transitions = []
        actions = []
        todo = [self]
        done = set()

        while todo:
            state = todo.pop()
            done.add(state)
            if state.action:
                actions.append("S%s(%s)" % (state.id, state.action))
            for k, v in state.matches.items():
                for s in v:
                    transitions.append("S%s %s -> S%s" % (state.id, k, s.id))
                    if s not in done: todo.append(s)
            for e in state.epsilons:
                transitions.append("S%s -> S%s" % (state.id, e.id))
                if e not in done: todo.append(e)

        if transitions:
            return "State(S%s\n  %s\n)" % (self.id, ",\n  ".join(transitions + actions))
        else:
            return "State(S%s)" % self.id

    def apply(self, *args):
        states = {self: ()}
        remaining = list(args)
        for value in flatten(args):
            next = {}
            for state, distance in states.items():
                count = 0
                for proj in projections(value):
                    transitions = state[proj]
                    if transitions:
                        for s in transitions:
                            next[s] = distance + (count,)
                    count += 1
            states = next
        nearest = {}
        minimum = None
        for state, distance in states.items():
            if state.action:
                if minimum is None:
                    nearest = {state.action: state}
                    minimum = distance
                elif distance < minimum:
                    nearest = {state.action: state}
                    minimum = distance
                elif distance == minimum:
                    nearest[state.action] = state
        if len(nearest) > 1:
            dfns = "\n".join([ppfun(n.action) for n in nearest.values()])
            raise MatchError("arguments ({}) match multiple actions:\n\n{}".format(", ".join([repr(a) for a in args]),
                                                                                  dfns))
        if not nearest:
            raise MatchError("arguments ({}) do not match".format(", ".join([repr(a) for a in args])))
        assert len(nearest) == 1, nearest
        state = nearest.popitem()[1]
        assert state.action, (state, remaining)
        return state.action(*args)

def ppfun(fun):
    lines, number = inspect.getsourcelines(fun)
    return "%s:%s:\n%s" % (inspect.getsourcefile(fun), number, "".join(lines))

class Marker(object): pass

class Begin(Marker):

    def __init__(self, cls):
        self.cls = cls

    def __hash__(self):
        return hash(self.cls)

    def __eq__(self, other):
        if not isinstance(other, Begin):
            return False
        return self.cls == other.cls

END = Marker()

def flatten(values):
    for value in values:
        if isinstance(value, (list, tuple)):
            yield Begin(value.__class__)
            for v in flatten(value):
                yield v
            yield END
        else:
            yield value

def projections(value):
    yield value
    if not isinstance(value, Marker):
        for cls in value.__class__.__mro__:
            yield cls

class Fragment(object):

    def __init__(self, start, extend):
        assert isinstance(start, State)
        self.start = start
        self.extend = extend

def _value(value):
    start = State()
    return Fragment(start, lambda next: start.edge(value, next))

def one(*pattern):
    return cat(pattern)

def cat(patterns):
    start = None
    extend = None
    for p in flatten(patterns):
        if isinstance(p, Fragment):
            frag = p
        else:
            frag = _value(p)
        if start is None:
            start = frag.start
            extend = frag.extend
        else:
            extend(frag.start)
            extend = frag.extend
    return Fragment(start, extend)

def opt(*pattern):
    frag = cat(pattern)
    return Fragment(frag.start, lambda next: (frag.extend(next), frag.start.edge(next)))

def many(*pattern):
    frag = cat(pattern)
    frag.extend(frag.start)
    return Fragment(frag.start, lambda next: (frag.extend(next), frag.start.edge(next)))


def when(pattern, action):
    fragment = one(pattern)
    state = State()
    state.action = action
    fragment.extend(state)
    return Fragment(fragment.start, lambda next: state.edge(next))

def choice(*patterns):
    start = State()
    fragments = [one(p) for p in patterns]
    for f in fragments:
        start.edge(f.start)
    return Fragment(start, lambda next: [f.extend(next) for f in fragments])

def compile(fragment):
    todo = [fragment.start]
    done = set()
    while todo:
        state = todo.pop()
        state.compile()
        done.add(state)
        for v in state.matches.values():
            for s in v:
                if s not in done: todo.append(s)
    return fragment.start

class _BoundDispatcher(object):

    def __init__(self, clazz, object, dispatcher):
        self.clazz = clazz
        self.object = object
        self.dispatcher = dispatcher

    def __call__(self, *args, **kwargs):
        compiled = self.dispatcher.cache.get(self.clazz)
        if compiled is None:
            fragments = []
            for c in self.clazz.__mro__:
                if self.dispatcher.name in c.__dict__:
                    disp = c.__dict__[self.dispatcher.name]
                    if isinstance(disp, _Dispatcher):
                        fragments.append(one(c, disp.fragment))
            compiled = compile(choice(*fragments))
            self.dispatcher.cache[self.clazz] = compiled
        try:
            if self.object is None:
                return compiled.apply(*args, **kwargs)
            else:
                return compiled.apply(self.object, *args, **kwargs)
        except MatchError, e:
            raise TypeError("%s() %s" % (self.dispatcher.name, e))

class _Dispatcher(object):

    def __init__(self, name):
        self.name = name
        self.fragment = None
        self.compiled = None
        self.cache = {}

    def add(self, types, method):
        if self.fragment is None:
            self.fragment = when(cat(types), method)
        else:
            self.fragment = choice(self.fragment, when(cat(types), method))
        self.compiled = None

    def __get__(self, object, clazz):
        return _BoundDispatcher(clazz, object, self)

    def __call__(self, *args, **kwargs):
        compiled = self.compiled
        if compiled is None:
            compiled = compile(self.fragment)
            self.compiled = compiled
        try:
            return compiled.apply(*args, **kwargs)
        except MatchError, e:
            raise TypeError("%s() %s" % (self.name, e))

def _decorate(namespace, function, pattern):
    name = function.__name__
    if name in namespace and isinstance(namespace[name], _Dispatcher):
        dispatcher = namespace[name]
    else:
        dispatcher = _Dispatcher(name)
        namespace[name] = dispatcher
    dispatcher.add(pattern, function)
    return dispatcher

def match(*pattern):
    def decorator(function):
        namespace = inspect.currentframe().f_back.f_locals
        return _decorate(namespace, function, pattern)
    return decorator
