from quark_runtime import *

class Test(object):
    def _init(self): pass
    def __init__(self): self._init()
    
    def test(self):
        _println("Hello World!");
    


def main():
    (Test()).test();


if __name__ == "__main__":
    main()
