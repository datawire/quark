package string_methods;

public class string_test implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class string_methods_string_test_ref = string_methods_md.Root.string_methods_string_test_md;
    public string_test() {}
    public void check(String actual, String expected, String op, String q) {
        if ((actual)==(expected) || ((actual) != null && (actual).equals(expected))) {
            do{System.out.println(((((("OK   ") + (op)) + (" = ")) + (q)) + (actual)) + (q));System.out.flush();}while(false);
        } else {
            do{System.out.println(((((((((("FAIL ") + (op)) + (" = ")) + (q)) + (actual)) + (q)) + (" != ")) + (q)) + (expected)) + (q));System.out.flush();}while(false);
        }
    }
    public String _getClass() {
        return "string_methods.string_test";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
