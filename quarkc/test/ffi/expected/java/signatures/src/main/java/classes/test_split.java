package classes;

public class test_split extends string_test implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class classes_test_split_ref = quark_ffi_signatures_md.Root.classes_test_split_md;
    public String what;
    public String sep;
    public String altsep;
    public test_split(String sep, String altsep) {
        super();
    }
    public test_split that(String what) {
        return (test_split) (null);
    }
    public test_split does(String expected) {
        return (test_split) (null);
    }
    public String _getClass() {
        return "classes.test_split";
    }
    public Object _getField(String name) {
        if ((name)==("what") || ((Object)(name) != null && ((Object) (name)).equals("what"))) {
            return (this).what;
        }
        if ((name)==("sep") || ((Object)(name) != null && ((Object) (name)).equals("sep"))) {
            return (this).sep;
        }
        if ((name)==("altsep") || ((Object)(name) != null && ((Object) (name)).equals("altsep"))) {
            return (this).altsep;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("what") || ((Object)(name) != null && ((Object) (name)).equals("what"))) {
            (this).what = (String) (value);
        }
        if ((name)==("sep") || ((Object)(name) != null && ((Object) (name)).equals("sep"))) {
            (this).sep = (String) (value);
        }
        if ((name)==("altsep") || ((Object)(name) != null && ((Object) (name)).equals("altsep"))) {
            (this).altsep = (String) (value);
        }
    }
}
