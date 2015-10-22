public class Later extends io.datawire.quark_runtime.Async<String> {
    public void callback(String result) {
        System.out.println((("result: ") + (result)) + ("\n"));
    }
    public void errback(String failure) {
        System.out.println((("failure: ") + (failure)) + ("\n"));
    }
}