package classes;

public class test_endsWith extends string_test implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class classes_test_endsWith_ref = quark_ffi_signatures_md.Root.classes_test_endsWith_md;
    public String what;
    public String _that;
    public test_endsWith(String what) {
        super();
    }
    public test_endsWith that(String _that) {
        return (test_endsWith) (null);
    }
    public test_endsWith does(Boolean expected) {
        return (test_endsWith) (null);
    }
    public String _getClass() {
        return "classes.test_endsWith";
    }
    public Object _getField(String name) {
        if ((name)==("what") || ((Object)(name) != null && ((Object) (name)).equals("what"))) {
            return (this).what;
        }
        if ((name)==("_that") || ((Object)(name) != null && ((Object) (name)).equals("_that"))) {
            return (this)._that;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("what") || ((Object)(name) != null && ((Object) (name)).equals("what"))) {
            (this).what = (String) (value);
        }
        if ((name)==("_that") || ((Object)(name) != null && ((Object) (name)).equals("_that"))) {
            (this)._that = (String) (value);
        }
    }
}
