from quark_runtime import *

class TestInt(object):
    def _init(self): pass
    def __init__(self): self._init()

    def run(self):
        map = _Map();
        b = 3;
        _println(str(b));
        _println(str((self).func()));

    def func(self):
        return int()


class TestLong(object):
    def _init(self): pass
    def __init__(self): self._init()

    def run(self):
        map = _Map();
        b = 3;
        _println(str(b));
        _println(str((self).func()));

    def func(self):
        return long()


class Test(object):
    def _init(self): pass
    def __init__(self): self._init()

    def run(self):
        map = _Map();



def main():
    (TestInt()).run();
    (TestLong()).run();
    (Test()).run();
    (Test()).run();


if __name__ == "__main__":
    main()
