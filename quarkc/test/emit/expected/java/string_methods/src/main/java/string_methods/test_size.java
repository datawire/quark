package string_methods;

public class test_size extends string_test implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class string_methods_test_size_ref = string_methods_md.Root.string_methods_test_size_md;
    public String what;
    public test_size(String what) {
        super();
        (this).what = what;
    }
    public test_size does(Integer expected) {
        Integer actual = (this.what).length();
        String op = (("'") + (this.what)) + ("'.size()");
        (this).check(Integer.toString(actual), Integer.toString(expected), op, "");
        return this;
    }
    public String _getClass() {
        return "string_methods.test_size";
    }
    public Object _getField(String name) {
        if ((name)==("what") || ((name) != null && (name).equals("what"))) {
            return (this).what;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("what") || ((name) != null && (name).equals("what"))) {
            (this).what = (String) (value);
        }
    }
}
