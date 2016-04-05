package quark_md;

public class quark_test_MethodTest extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_test_MethodTest();
    public quark_test_MethodTest() {
        super("quark.test.MethodTest");
        (this).name = "quark.test.MethodTest";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.concurrent.TLS<quark.test.Test>", "ctx"), new quark.reflect.Field("quark.String", "name"), new quark.reflect.Field("quark.int", "checks"), new quark.reflect.Field("quark.List<quark.String>", "failures"), new quark.reflect.Field("quark.reflect.Class", "klass"), new quark.reflect.Field("quark.reflect.Method", "method")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_test_MethodTest_run_Method(), new quark_test_MethodTest_current_Method(), new quark_test_MethodTest_match_Method(), new quark_test_MethodTest_start_Method(), new quark_test_MethodTest_stop_Method(), new quark_test_MethodTest_check_Method(), new quark_test_MethodTest_fail_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.test.MethodTest((quark.reflect.Class) ((args).get(0)), (quark.reflect.Method) ((args).get(1)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
