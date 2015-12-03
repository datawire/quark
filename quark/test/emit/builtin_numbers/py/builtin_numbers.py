from quark_runtime import *

class TestByte(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def run(self):
        map = _Map();
        b = 3;
        _println(str(b));
        _println(str((self).func()));

    def func(self):
        return int()


class TestShort(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def run(self):
        map = _Map();
        b = 3;
        _println(str(b));
        _println(str((self).func()));

    def func(self):
        return int()


class TestInt(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def run(self):
        map = _Map();
        b = 3;
        _println(str(b));
        _println(str((self).func()));

    def func(self):
        return int()


class TestLong(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def run(self):
        map = _Map();
        b = 3;
        _println(str(b));
        _println(str((self).func()));

    def func(self):
        return long()



def main():
    (TestByte()).run();
    (TestShort()).run();
    (TestInt()).run();
    (TestLong()).run();


if __name__ == "__main__":
    main()
