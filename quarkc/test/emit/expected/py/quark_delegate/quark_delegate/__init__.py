from quark_runtime import *

import quark.reflect
import quark_delegate_md


class Message(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def encode(self):
        return u"ENCODED"

    def _getClass(self):
        return u"quark_delegate.Message"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Message.quark_delegate_Message_ref = quark_delegate_md.Root.quark_delegate_Message_md
class Ping(Message):
    def _init(self):
        Message._init(self)

    def __init__(self):
        super(Ping, self).__init__();

    def _getClass(self):
        return u"quark_delegate.Ping"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Ping.quark_delegate_Ping_ref = quark_delegate_md.Root.quark_delegate_Ping_md
class Pong(Message):
    def _init(self):
        Message._init(self)

    def __init__(self):
        super(Pong, self).__init__();

    def toString(self):
        return u"PONG"

    def _getClass(self):
        return u"quark_delegate.Pong"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Pong.quark_delegate_Pong_ref = quark_delegate_md.Root.quark_delegate_Pong_md
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
        return u"quark_delegate.Test"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Test.quark_delegate_Test_ref = quark_delegate_md.Root.quark_delegate_Test_md
Test.quark_List_quark_Object__ref = quark_delegate_md.Root.quark_List_quark_Object__md

def main():
    t = Test();
    (t).foo(u"one", u"two", 3);
    _println(((t).hello(Ping())).toString());
