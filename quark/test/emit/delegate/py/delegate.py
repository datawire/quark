from quark_runtime import *

class Message(object):
    def _init(self): pass
    def __init__(self): self._init()

    def encode(self):
        return u"ENCODED"


class Ping(Message):
    def _init(self):
        Message._init(self)

    

class Pong(Message):
    def _init(self):
        Message._init(self)

    def toString(self):
        return u"PONG"


class Test(object):
    def _init(self): pass
    def __init__(self): self._init()

    def bar(self, name, args):
        _println(args);
        return None

    def foo(self, foo, bar, baz):
        (self).bar(u"foo", _List([foo, bar, baz]));

    def rpc(self, name, msg):
        _println((msg).encode());
        if ((name) == (u"hello")):
            return Pong()
        else:
            return None

    def hello(self, ping):
        return (self).rpc(u"hello", ping)



def main():
    t = Test();
    (t).foo(u"one", u"two", 3);
    _println(((t).hello(Ping())).toString());


if __name__ == "__main__":
    main()
