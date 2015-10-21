from quark_runtime import *

class Later(_Async):
    def _init(self):
        _Async._init(self)

    def callback(self, result):
        _println(("later: ") + (result));

    def errback(self, failure):
        _println(("later failure: ") + (failure));


class Requestbin(_Async):
    def _init(self):
        _Async._init(self)
        self.done = None

    def __init__(self):
        super(Requestbin, self).__init__()
        (self).done = 0

    def callback(self, result):
        self.done = (self.done) + (1)
        _println(("requestbin: ") + (result));

    def errback(self, failure):
        self.done = (self.done) + (1)
        _println(("requestbin failure: ") + (failure));



def main():
    l = Later();
    (l).callback("expected");
    (l).errback("expected");
    r = Requestbin();
    _url_get_async(("http://127.0.0.1:9999"),(r));


if __name__ == "__main__":
    main()
