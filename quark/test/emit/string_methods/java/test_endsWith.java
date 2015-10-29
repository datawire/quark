public class test_endsWith extends string_test {
    public String what;
    public String _that;
    public test_endsWith(String what) {
        (this).what = what;
    }
    public test_endsWith that(String _that) {
        (this)._that = _that;
        return this;
    }
    public test_endsWith does(Boolean expected) {
        (this).check((Boolean.valueOf(((this).what).endsWith((this)._that))).toString(), (expected).toString(), (((("'") + ((this).what)) + ("'.endsWith('")) + ((this)._that)) + ("'"), "");
        return this;
    }
}