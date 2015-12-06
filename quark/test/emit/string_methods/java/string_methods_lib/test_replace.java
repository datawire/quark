package string_methods_lib;

public class test_replace extends string_test implements io.datawire.quark.runtime.QObject {
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
        return "test_replace";
    }
    public Object _getField(String name) {
        if ((name)==("what") || ((name) != null && (name).equals("what"))) {
            return (this).what;
        }
        if ((name)==("start") || ((name) != null && (name).equals("start"))) {
            return (this).start;
        }
        if ((name)==("end") || ((name) != null && (name).equals("end"))) {
            return (this).end;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("what") || ((name) != null && (name).equals("what"))) {
            (this).what = (String) (value);
        }
        if ((name)==("start") || ((name) != null && (name).equals("start"))) {
            (this).start = (String) (value);
        }
        if ((name)==("end") || ((name) != null && (name).equals("end"))) {
            (this).end = (String) (value);
        }
    }
}
