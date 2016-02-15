from quark_runtime import *

class Message(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def encode(self):
        return u"ENCODED"

    def _getClass(self):
        return u"Message"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class Ping(Message):
    def _init(self):
        Message._init(self)

    def __init__(self):
        super(Ping, self).__init__();

    def _getClass(self):
        return u"Ping"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class Pong(Message):
    def _init(self):
        Message._init(self)

    def __init__(self):
        super(Pong, self).__init__();

    def toString(self):
        return u"PONG"

    def _getClass(self):
        return u"Pong"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass

class Test(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def bar(self, name, args, options):
        _println(args);
        return None

    def foo(self, foo, bar, baz):
        (self).bar(u"foo", _List([foo, bar, baz]), _List([]));

    def rpc(self, name, msg, options):
        _println((msg).encode());
        if ((name) == (u"hello")):
            return Pong()
        else:
            return None

    def hello(self, ping):
        return self.rpc(u"hello", ping, _List([]))

    def _getClass(self):
        return u"Test"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass


def main():
    t = Test();
    (t).foo(u"one", u"two", 3);
    _println(((t).hello(Ping())).toString());
