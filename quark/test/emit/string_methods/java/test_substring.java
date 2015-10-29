public class test_substring extends string_test {
    public String what;
    public Integer start;
    public Integer end;
    public test_substring(String what) {
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
}