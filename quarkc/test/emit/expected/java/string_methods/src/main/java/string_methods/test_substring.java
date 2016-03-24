package string_methods;

public class test_substring extends string_test implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class string_methods_test_substring_ref = string_methods_md.Root.string_methods_test_substring_md;
    public String what;
    public Integer start;
    public Integer end;
    public test_substring(String what) {
        super();
        (this).what = what;
    }
    public test_substring that(Integer start, Integer end) {
        (this).start = start;
        (this).end = end;
        return this;
    }
    public test_substring does(String expected) {
        (this).check(((this).what).substring(((this).start), ((this).end)), expected, (((((("'") + ((this).what)) + ("'.substring(")) + (Integer.toString((this).start))) + (", ")) + (Integer.toString((this).end))) + (")"), "'");
        return this;
    }
    public String _getClass() {
        return "string_methods.test_substring";
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
            (this).start = (Integer) (value);
        }
        if ((name)==("end") || ((Object)(name) != null && ((Object) (name)).equals("end"))) {
            (this).end = (Integer) (value);
        }
    }
}
