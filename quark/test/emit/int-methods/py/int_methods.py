from quark_runtime import *

class Test(object):
    def _init(self): pass
    def __init__(self): self._init()

    def test(self):
        x = 1;
        y = 2;
        z = (((x) + (y)) - (3)) * (4);
        _println(z);
        four = (2) + (2);
        _println(four);



def main():
    (Test()).test();


if __name__ == "__main__":
    main()
