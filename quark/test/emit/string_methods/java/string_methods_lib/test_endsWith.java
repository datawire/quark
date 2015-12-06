package string_methods_lib;

public class test_endsWith extends string_test implements io.datawire.quark.runtime.QObject {
    public String what;
    public String _that;
    public test_endsWith(String what) {
        super();
        (this).what = what;
    }
    public test_endsWith that(String _that) {
        (this)._that = _that;
        return this;
    }
    public test_endsWith does(Boolean expected) {
        (this).check((Boolean.valueOf(((this).what).endsWith((this)._that))).toString(), (expected).toString(), (((("'") + ((this).what)) + ("'.endsWith('")) + ((this)._that)) + ("'"), "");
        return this;
    }
    public String _getClass() {
        return "test_endsWith";
    }
    public Object _getField(String name) {
        if ((name)==("what") || ((name) != null && (name).equals("what"))) {
            return (this).what;
        }
        if ((name)==("_that") || ((name) != null && (name).equals("_that"))) {
            return (this)._that;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("what") || ((name) != null && (name).equals("what"))) {
            (this).what = (String) (value);
        }
        if ((name)==("_that") || ((name) != null && (name).equals("_that"))) {
            (this)._that = (String) (value);
        }
    }
}
