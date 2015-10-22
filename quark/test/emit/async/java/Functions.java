public class Functions {
    public static void main() {
        io.datawire.quark_runtime.Async<String> l = (io.datawire.quark_runtime.Async<String>) (new Later());
        (l).callback("expected");
        (l).errback("expected");
        io.datawire.quark_runtime.url_get_async(("http://localhost:49872"), (l));
    }
    public static void main(String[] args) {
        main();
    }
}