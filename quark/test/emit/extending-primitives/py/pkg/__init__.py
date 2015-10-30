from quark_runtime import *



class C(object):
    def _init(self): pass
    def __init__(self): self._init()

    def event1(self):
        _println(u"event1");

    def run(self):
        _println(u"running");

    def event2(self):
        _println(u"default event2");
