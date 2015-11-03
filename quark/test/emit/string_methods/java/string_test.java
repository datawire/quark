public class string_test {
    public void check(String actual, String expected, String op, String q) {
        if ((actual)==(expected) || ((actual) != null && (actual).equals(expected))) {
            System.out.println(((((("OK   ") + (op)) + (" = ")) + (q)) + (actual)) + (q));
        } else {
            System.out.println(((((((((("FAIL ") + (op)) + (" = ")) + (q)) + (actual)) + (q)) + (" != ")) + (q)) + (expected)) + (q));
        }
    }
}