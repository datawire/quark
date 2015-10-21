public class Functions {
    public static void main() {
        io.datawire.quark_runtime.Async<String> l = (io.datawire.quark_runtime.Async<String>) (new Later());
        (l).callback("expected");
        (l).errback("expected");
        Requestbin r = new Requestbin();
        io.datawire.quark_runtime.url_get_async(("http://127.0.0.1:9999"), (r));
    }
    public static void main(String[] args) {
        main();
    }
}