package classes;

public class test_size extends string_test implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class classes_test_size_ref = quark_ffi_signatures_md.Root.classes_test_size_md;
    public String what;
    public test_size(String what) {
        super();
    }
    public test_size does(Integer expected) {
        return (test_size) (null);
    }
    public String _getClass() {
        return "classes.test_size";
    }
    public Object _getField(String name) {
        if ((name)==("what") || ((Object)(name) != null && ((Object) (name)).equals("what"))) {
            return (this).what;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("what") || ((Object)(name) != null && ((Object) (name)).equals("what"))) {
            (this).what = (String) (value);
        }
    }
}
