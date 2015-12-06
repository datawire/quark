package string_methods_lib;

public class test_split extends string_test implements io.datawire.quark.runtime.QObject {
    public String what;
    public String sep;
    public String altsep;
    public test_split(String sep, String altsep) {
        super();
        (this).sep = sep;
        (this).altsep = altsep;
    }
    public test_split that(String what) {
        (this).what = what;
        return this;
    }
    public test_split does(String expected) {
        java.util.ArrayList<String> parts = new java.util.ArrayList<String>(java.util.Arrays.asList(((this).what).split(java.util.regex.Pattern.quote((this).sep), -1)));
        String actual = io.datawire.quark.runtime.Builtins.join(((this).altsep), (parts));
        (this).check(actual, expected, (((((("'") + ((this).altsep)) + ("'.join('")) + ((this).what)) + ("'.split('")) + ((this).sep)) + ("'))"), "'");
        return this;
    }
    public String _getClass() {
        return "test_split";
    }
    public Object _getField(String name) {
        if ((name)==("what") || ((name) != null && (name).equals("what"))) {
            return (this).what;
        }
        if ((name)==("sep") || ((name) != null && (name).equals("sep"))) {
            return (this).sep;
        }
        if ((name)==("altsep") || ((name) != null && (name).equals("altsep"))) {
            return (this).altsep;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("what") || ((name) != null && (name).equals("what"))) {
            (this).what = (String) (value);
        }
        if ((name)==("sep") || ((name) != null && (name).equals("sep"))) {
            (this).sep = (String) (value);
        }
        if ((name)==("altsep") || ((name) != null && (name).equals("altsep"))) {
            (this).altsep = (String) (value);
        }
    }
}
