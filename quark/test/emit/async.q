
class Later extends Async<String> {
    void callback(String result) {
        print("result: " + result + "\n");
    }
    void errback(String failure) {
        print("failure: " + failure + "\n");
    }
}

void main() {
    Async<String> l = new Later();
    l.callback("expected");
    l.errback("expected");
    url_get_async("http://localhost:49872", l);
}
