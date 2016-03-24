package quark.test;

public class Test implements io.datawire.quark.runtime.QObject {
    public static io.datawire.quark.runtime.TLS<Test> ctx = new io.datawire.quark.runtime.TLS(new TestInitializer());
    public static quark.reflect.Class quark_test_Test_ref = quark_md.Root.quark_test_Test_md;
    public String name;
    public Integer checks = 0;
    public java.util.ArrayList<String> failures = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    public Test(String name) {
        (this).name = name;
    }
    public static Test current() {
        return (Test.ctx).getValue();
    }
    public void start() {
        (Test.ctx).setValue(this);
        do{System.out.println(Functions.bold(("start ") + (this.name)));System.out.flush();}while(false);
    }
    public void stop() {
        String result = (((((("stop ") + (this.name)) + (" [")) + (Integer.toString(this.checks))) + (" checks, ")) + (Integer.toString((this.failures).size()))) + (" failures]");
        if (((this.failures).size()) > (0)) {
            do{System.out.println(Functions.red(result));System.out.flush();}while(false);
        } else {
            do{System.out.println(Functions.bold(result));System.out.flush();}while(false);
        }
        Integer idx = 0;
        while ((idx) < ((this.failures).size())) {
            do{System.out.println(Functions.red(("  ") + ((this.failures).get(idx))));System.out.flush();}while(false);
            idx = (idx) + (1);
        }
        (Test.ctx).setValue(null);
    }
    public Boolean check(Boolean value, String message) {
        this.checks = (this.checks) + (1);
        if (!(value)) {
            (this.failures).add(message);
        }
        return value;
    }
    public void fail(String message) {
        this.check(false, message);
    }
    public void run() {}
    public String _getClass() {
        return "quark.test.Test";
    }
    public Object _getField(String name) {
        if ((name)==("ctx") || ((Object)(name) != null && ((Object) (name)).equals("ctx"))) {
            return Test.ctx;
        }
        if ((name)==("name") || ((Object)(name) != null && ((Object) (name)).equals("name"))) {
            return (this).name;
        }
        if ((name)==("checks") || ((Object)(name) != null && ((Object) (name)).equals("checks"))) {
            return (this).checks;
        }
        if ((name)==("failures") || ((Object)(name) != null && ((Object) (name)).equals("failures"))) {
            return (this).failures;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("ctx") || ((Object)(name) != null && ((Object) (name)).equals("ctx"))) {
            Test.ctx = (io.datawire.quark.runtime.TLS<Test>) (value);
        }
        if ((name)==("name") || ((Object)(name) != null && ((Object) (name)).equals("name"))) {
            (this).name = (String) (value);
        }
        if ((name)==("checks") || ((Object)(name) != null && ((Object) (name)).equals("checks"))) {
            (this).checks = (Integer) (value);
        }
        if ((name)==("failures") || ((Object)(name) != null && ((Object) (name)).equals("failures"))) {
            (this).failures = (java.util.ArrayList<String>) (value);
        }
    }
}
