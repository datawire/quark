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

def signatures(types):
    if types:
        first = types[0]
        rest = types[1:]
        for sig in signatures(rest):
            for t in first.__mro__:
                yield (t,) + sig
    else:
        yield ()

class _BoundDispatcher(object):

    def __init__(self, clazz, object, dispatcher):
        self.clazz = clazz
        self.object = object
        self.dispatcher = dispatcher

    def get(self, types):
        key = (self.clazz, types)
        if key in self.dispatcher.cache:
            return self.dispatcher.cache[key]
        else:
            for c in self.clazz.__mro__:
                if self.dispatcher.name in c.__dict__:
                    method = c.__dict__[self.dispatcher.name].get(types)
                else:
                    method = None
                if method is None: continue
                self.dispatcher.cache[key] = method
                return method
            self.dispatcher.error(types)

    def __call__(self, *args, **kwargs):
        types = tuple([type(arg) for arg in args])
        method = self.get(types)
        return method(self.object, *args, **kwargs)

class _Dispatcher(object):

    def __init__(self, name):
        self.name = name
        self.methods = {}
        self.cache = {}

    def add(self, types, method):
        assert types not in self.methods
        self.methods[types] = method

    def get(self, types):
        for sig in signatures(types):
            if sig in self.methods:
                return self.methods[sig]
        return None

    def __get__(self, object, clazz):
        return _BoundDispatcher(clazz, object, self)

    def error(self, types):
        raise TypeError("%s has no matching method: (%s)" %
                        (self.name, ", ".join([t.__name__ for t in types])))

    def __call__(self, *args, **kwargs):
        types = tuple([type(arg) for arg in args])
        if types in self.cache:
            function = self.cache[types]
        else:
            function = self.get(types)
            if function is None: self.error(types)
            self.cache[types] = function
        return function(*args, **kwargs)

def _decorate(namespace, function, types, offset=0):
    name = function.__name__
    dispatcher = namespace.get(name, _Dispatcher(name))
    argspec = inspect.getargspec(function)
    nargs = len(argspec.args) - offset
    defaulted = types + (object,)*(nargs - len(types))
    assert len(defaulted) == nargs
    for i in range(len(argspec.defaults or ()) + 1):
        dispatcher.add(defaulted[:nargs-i], function)
    return dispatcher

def dispatch(*types):
    def decorator(function):
        namespace = inspect.currentframe().f_back.f_locals
        return _decorate(namespace, function, types)
    return decorator

def overload(*types):
    def decorator(method):
        namespace = inspect.currentframe().f_back.f_locals
        return _decorate(namespace, method, types, 1)
    return decorator
