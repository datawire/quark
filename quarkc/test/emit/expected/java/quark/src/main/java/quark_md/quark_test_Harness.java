package quark_md;

public class quark_test_Harness extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new quark_test_Harness();
    public quark_test_Harness() {
        super("quark.test.Harness");
        (this).name = "quark.test.Harness";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.String", "pkg"), new quark.reflect.Field("quark.List<quark.test.Test>", "tests"), new quark.reflect.Field("quark.int", "filtered")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark_test_Harness_collect_Method(), new quark_test_Harness_list_Method(), new quark_test_Harness_run_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new quark.test.Harness((String) ((args).get(0)));
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
