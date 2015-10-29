public class test_find extends string_test {
    public String what;
    public String _that;
    public test_find(String what) {
        (this).what = what;
    }
    public test_find that(String _that) {
        (this)._that = _that;
        return this;
    }
    public test_find does(Integer expected) {
        (this).check(Integer.toString(((this).what).indexOf((this)._that)), Integer.toString(expected), (((("'") + ((this).what)) + ("'.find('")) + ((this)._that)) + ("'"), "");
        return this;
    }
}