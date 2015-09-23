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

    def __init__(self, object, dispatcher):
        self.object = object
        self.dispatcher = dispatcher

    def __call__(self, *args, **kwargs):
        return self.dispatcher(self.object, *args, **kwargs)

class _Dispatcher(object):

    def __init__(self):
        self.methods = {}
        self._cache = {}

    def add(self, types, method):
        assert types not in self.methods
        self.methods[types] = method

    def get(self, types):
        try:
            return self._cache[types]
        except KeyError:
            for sig in signatures(types):
                if sig in self.methods:
                    method = self.methods[sig]
                    self._cache[types] = method
                    return method
            raise TypeError("no matching method: (%s)" % ", ".join([t.__name__ for t in types]))

    def __get__(self, object, owner):
        return _BoundDispatcher(object, self)

    def __call__(self, object, *args, **kwargs):
        types = tuple([type(arg) for arg in args])
        method = self.get(types)
        return method(object, *args, **kwargs)

def dispatch(*types):
    def decorator(method):
        name = method.__name__
        dispatcher = inspect.currentframe().f_back.f_locals.get(name, _Dispatcher())
        argspec = inspect.getargspec(method)
        nargs = len(argspec.args) - 1 # don't count self
        defaulted = types + (object,)*(nargs - len(types))
        assert len(defaulted) == nargs
        dispatcher.add(defaulted, method)
        return dispatcher
    return decorator
