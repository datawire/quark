package string_methods_lib;

public class string_test implements io.datawire.quark.runtime.QObject {
    public string_test() {}
    public void check(String actual, String expected, String op, String q) {
        if ((actual)==(expected) || ((actual) != null && (actual).equals(expected))) {
            System.out.println(((((("OK   ") + (op)) + (" = ")) + (q)) + (actual)) + (q));
        } else {
            System.out.println(((((((((("FAIL ") + (op)) + (" = ")) + (q)) + (actual)) + (q)) + (" != ")) + (q)) + (expected)) + (q));
        }
    }
    public String _getClass() {
        return "string_test";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
