package string_methods_lib;

public class test_substring extends string_test implements io.datawire.quark.runtime.QObject {
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
        return "test_substring";
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
            (this).start = (Integer) (value);
        }
        if ((name)==("end") || ((name) != null && (name).equals("end"))) {
            (this).end = (Integer) (value);
        }
    }
}
