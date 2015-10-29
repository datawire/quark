public class test_replace extends string_test {
    public String what;
    public String start;
    public String end;
    public test_replace(String what) {
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
}