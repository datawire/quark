from quark_runtime import *

class Later(_Async):
    def _init(self):
        _Async._init(self)

    def callback(self, result):
        _println((("result: ") + (result)) + ("\n"));

    def errback(self, failure):
        _println((("failure: ") + (failure)) + ("\n"));



def main():
    l = Later();
    (l).callback("expected");
    (l).errback("expected");
    _url_get_async(("http://localhost:49872"),(l));


if __name__ == "__main__":
    main()
