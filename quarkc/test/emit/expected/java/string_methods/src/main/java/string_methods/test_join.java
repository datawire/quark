package string_methods;

public class test_join extends string_test implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class string_methods_test_join_ref = string_methods_md.Root.string_methods_test_join_md;
    public static builtin.reflect.Class builtin_List_builtin_String__ref = string_methods_md.Root.builtin_List_builtin_String__md;
    public String what;
    public java.util.ArrayList<String> parts;
    public String strparts;
    public String sep;
    public test_join(String what) {
        super();
        (this).what = what;
    }
    public test_join that() {
        (this).parts = new java.util.ArrayList<String>();
        (this).strparts = "";
        (this).sep = "";
        return this;
    }
    public test_join a(String part) {
        ((this).parts).add(part);
        (this).strparts = (((((this).strparts) + ((this).sep)) + ("'")) + (part)) + ("'");
        (this).sep = ", ";
        return this;
    }
    public test_join does(String expected) {
        (this).check(io.datawire.quark.runtime.Builtins.join(((this).what), ((this).parts)), expected, (((("'") + ((this).what)) + ("'.join([")) + ((this).strparts)) + ("])"), "'");
        return this;
    }
    public String _getClass() {
        return "string_methods.test_join";
    }
    public Object _getField(String name) {
        if ((name)==("what") || ((name) != null && (name).equals("what"))) {
            return (this).what;
        }
        if ((name)==("parts") || ((name) != null && (name).equals("parts"))) {
            return (this).parts;
        }
        if ((name)==("strparts") || ((name) != null && (name).equals("strparts"))) {
            return (this).strparts;
        }
        if ((name)==("sep") || ((name) != null && (name).equals("sep"))) {
            return (this).sep;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("what") || ((name) != null && (name).equals("what"))) {
            (this).what = (String) (value);
        }
        if ((name)==("parts") || ((name) != null && (name).equals("parts"))) {
            (this).parts = (java.util.ArrayList<String>) (value);
        }
        if ((name)==("strparts") || ((name) != null && (name).equals("strparts"))) {
            (this).strparts = (String) (value);
        }
        if ((name)==("sep") || ((name) != null && (name).equals("sep"))) {
            (this).sep = (String) (value);
        }
    }
}
