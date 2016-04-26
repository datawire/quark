package classes;

public class test_join extends string_test implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class classes_test_join_ref = quark_ffi_signatures_md.Root.classes_test_join_md;
    public String what;
    public java.util.ArrayList<String> parts;
    public String strparts;
    public String sep;
    public test_join(String what) {
        super();
    }
    public test_join that() {
        return (test_join) (null);
    }
    public test_join a(String part) {
        return (test_join) (null);
    }
    public test_join does(String expected) {
        return (test_join) (null);
    }
    public String _getClass() {
        return "classes.test_join";
    }
    public Object _getField(String name) {
        if ((name)==("what") || ((Object)(name) != null && ((Object) (name)).equals("what"))) {
            return (this).what;
        }
        if ((name)==("parts") || ((Object)(name) != null && ((Object) (name)).equals("parts"))) {
            return (this).parts;
        }
        if ((name)==("strparts") || ((Object)(name) != null && ((Object) (name)).equals("strparts"))) {
            return (this).strparts;
        }
        if ((name)==("sep") || ((Object)(name) != null && ((Object) (name)).equals("sep"))) {
            return (this).sep;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("what") || ((Object)(name) != null && ((Object) (name)).equals("what"))) {
            (this).what = (String) (value);
        }
        if ((name)==("parts") || ((Object)(name) != null && ((Object) (name)).equals("parts"))) {
            (this).parts = (java.util.ArrayList<String>) (value);
        }
        if ((name)==("strparts") || ((Object)(name) != null && ((Object) (name)).equals("strparts"))) {
            (this).strparts = (String) (value);
        }
        if ((name)==("sep") || ((Object)(name) != null && ((Object) (name)).equals("sep"))) {
            (this).sep = (String) (value);
        }
    }
}
