package string_methods;

public class test_replace extends string_test implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class string_methods_test_replace_ref = string_methods_md.Root.string_methods_test_replace_md;
    public String what;
    public String start;
    public String end;
    public test_replace(String what) {
        super();
        (this).what = what;
    }
    public test_replace that(String start, String end) {
        (this).start = start;
        (this).end = end;
        return this;
    }
    public test_replace does(String expected) {
        (this).check(((this).what).replaceFirst(java.util.regex.Pattern.quote((this).start), ((this).end)), expected, (((((("'") + ((this).what)) + ("'.replace('")) + ((this).start)) + ("', '")) + ((this).end)) + ("')"), "'");
        return this;
    }
    public String _getClass() {
        return "string_methods.test_replace";
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
