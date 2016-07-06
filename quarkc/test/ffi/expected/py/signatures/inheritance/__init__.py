from quark_runtime import *

import quark.reflect
import t1
import t2
import pets
import super_
import use_before_def
import quark_ffi_signatures_md


class Base(_QObject):
    def _init(self):
        self.name = None

    def __init__(self): self._init()

    def _getClass(self):
        return u"inheritance.Base"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = _cast(value, lambda: unicode)


Base.inheritance_Base_ref = None
class Test(Base):
    def _init(self):
        Base._init(self)
        self.mumble = None
        self.later = None

    def __init__(self):
        super(Test, self).__init__();

    def _getClass(self):
        return u"inheritance.Test"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        if ((name) == (u"mumble")):
            return (self).mumble

        if ((name) == (u"later")):
            return (self).later

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = _cast(value, lambda: unicode)

        if ((name) == (u"mumble")):
            (self).mumble = _cast(value, lambda: unicode)

        if ((name) == (u"later")):
            (self).later = _cast(value, lambda: unicode)


Test.inheritance_Test_ref = None
class A(_QObject):
    def _init(self):
        self.name = None

    def __init__(self, name):
        self._init()

    def _getClass(self):
        return u"inheritance.A"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = _cast(value, lambda: unicode)


A.inheritance_A_ref = None
class B(A):
    def _init(self):
        A._init(self)

    def __init__(self, name):
        super(B, self).__init__(name);

    def greet(self):
        pass

    def _getClass(self):
        return u"inheritance.B"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = _cast(value, lambda: unicode)


B.inheritance_B_ref = None
class C(A):
    def _init(self):
        A._init(self)

    def __init__(self, name):
        super(C, self).__init__((u"C") + (name));

    def greet(self):
        pass

    def _getClass(self):
        return u"inheritance.C"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = _cast(value, lambda: unicode)


C.inheritance_C_ref = None
class X(_QObject):
    def _init(self):
        pass
    def __init__(self): self._init()

    def _getClass(self):
        return u"inheritance.X"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
X.inheritance_X_ref = None
class Y(X):
    def _init(self):
        X._init(self)
        self.name = None

    def __init__(self, name):
        super(Y, self).__init__();

    def test(self):
        pass

    def _getClass(self):
        return u"inheritance.Y"

    def _getField(self, name):
        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"name")):
            (self).name = _cast(value, lambda: unicode)


Y.inheritance_Y_ref = None
class Message(_QObject):
    def _init(self):
        pass
    def __init__(self): self._init()

    def encode(self):
        return _cast(None, lambda: unicode)

    def _getClass(self):
        return u"inheritance.Message"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Message.inheritance_Message_ref = None
class Ping(Message):
    def _init(self):
        Message._init(self)

    def __init__(self):
        super(Ping, self).__init__();

    def _getClass(self):
        return u"inheritance.Ping"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Ping.inheritance_Ping_ref = None
class Pong(Message):
    def _init(self):
        Message._init(self)

    def __init__(self):
        super(Pong, self).__init__();

    def toString(self):
        return _cast(None, lambda: unicode)

    def _getClass(self):
        return u"inheritance.Pong"

    def _getField(self, name):
        return None

    def _setField(self, name, value):
        pass
Pong.inheritance_Pong_ref = None
