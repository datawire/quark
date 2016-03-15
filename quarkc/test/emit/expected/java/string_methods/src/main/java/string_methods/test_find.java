package string_methods;

public class test_find extends string_test implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class string_methods_test_find_ref = string_methods_md.Root.string_methods_test_find_md;
    public String what;
    public String _that;
    public test_find(String what) {
        super();
        (this).what = what;
    }
    public test_find that(String _that) {
        (this)._that = _that;
        return this;
    }
    public test_find does(Integer expected) {
        (this).check(Integer.toString(((this).what).indexOf((this)._that)), Integer.toString(expected), (((("'") + ((this).what)) + ("'.find('")) + ((this)._that)) + ("'"), "");
        return this;
    }
    public String _getClass() {
        return "string_methods.test_find";
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
