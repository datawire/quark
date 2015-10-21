public class Later extends io.datawire.quark_runtime.Async<String> {
    public void callback(String result) {
        System.out.println(("later: ") + (result));
    }
    public void errback(String failure) {
        System.out.println(("later failure: ") + (failure));
    }
}