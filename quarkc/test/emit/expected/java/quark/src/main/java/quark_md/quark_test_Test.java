package quark_md;

public class quark_test_Test extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_test_Test();
    public quark_test_Test() {
        super("quark.test.Test");
        (this).name = "quark.test.Test";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.concurrent.TLS<quark.test.Test>", "ctx"), new quark.reflect.Field("quark.String", "name"), new quark.reflect.Field("quark.int", "checks"), new quark.reflect.Field("quark.List<quark.String>", "failures")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_test_Test_current_Method(), new quark_test_Test_match_Method(), new quark_test_Test_start_Method(), new quark_test_Test_stop_Method(), new quark_test_Test_check_Method(), new quark_test_Test_fail_Method(), new quark_test_Test_run_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.test.Test((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
