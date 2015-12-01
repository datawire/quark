public class test_startsWith extends string_test {
    public String what;
    public String _that;
    public test_startsWith(String what) {
        super();
        (this).what = what;
    }
    public test_startsWith that(String _that) {
        (this)._that = _that;
        return this;
    }
    public test_startsWith does(Boolean expected) {
        (this).check((Boolean.valueOf(((this).what).startsWith((this)._that))).toString(), (expected).toString(), (((("'") + ((this).what)) + ("'.startsWith('")) + ((this)._that)) + ("'"), "");
        return this;
    }
}
