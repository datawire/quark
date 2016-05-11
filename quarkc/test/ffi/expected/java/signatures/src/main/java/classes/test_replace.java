package classes;

public class test_replace extends string_test implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class classes_test_replace_ref = quark_ffi_signatures_md.Root.classes_test_replace_md;
    public String what;
    public String start;
    public String end;
    public test_replace(String what) {
        super();
    }
    public test_replace that(String start, String end) {
        return (test_replace) (null);
    }
    public test_replace does(String expected) {
        return (test_replace) (null);
    }
    public String _getClass() {
        return "classes.test_replace";
    }
    public Object _getField(String name) {
        if ((name)==("what") || ((Object)(name) != null && ((Object) (name)).equals("what"))) {
            return (this).what;
        }
        if ((name)==("start") || ((Object)(name) != null && ((Object) (name)).equals("start"))) {
            return (this).start;
        }
        if ((name)==("end") || ((Object)(name) != null && ((Object) (name)).equals("end"))) {
            return (this).end;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("what") || ((Object)(name) != null && ((Object) (name)).equals("what"))) {
            (this).what = (String) (value);
        }
        if ((name)==("start") || ((Object)(name) != null && ((Object) (name)).equals("start"))) {
            (this).start = (String) (value);
        }
        if ((name)==("end") || ((Object)(name) != null && ((Object) (name)).equals("end"))) {
            (this).end = (String) (value);
        }
    }
}
