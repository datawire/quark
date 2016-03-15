package string_methods;

public class test_startsWith extends string_test implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class string_methods_test_startsWith_ref = string_methods_md.Root.string_methods_test_startsWith_md;
    public String what;
    public String _that;
    public test_startsWith(String what) {
        super();
        (this).what = what;
    }
    public test_startsWith that(String _that) {
        (this)._that = _that;
        return this;
    }
    public test_startsWith does(Boolean expected) {
        (this).check((Boolean.valueOf(((this).what).startsWith((this)._that))).toString(), (expected).toString(), (((("'") + ((this).what)) + ("'.startsWith('")) + ((this)._that)) + ("'"), "");
        return this;
    }
    public String _getClass() {
        return "string_methods.test_startsWith";
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
