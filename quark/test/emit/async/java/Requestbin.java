public class Requestbin extends io.datawire.quark_runtime.Async<String> {
    public Integer done;
    public Requestbin() {
        (this).done = 0;
    }
    public void callback(String result) {
        done = (Integer) ((done) + (1));
        System.out.println(("requestbin: ") + (result));
    }
    public void errback(String failure) {
        done = (Integer) ((done) + (1));
        System.out.println(("requestbin failure: ") + (failure));
    }
}