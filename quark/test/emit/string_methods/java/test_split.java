public class test_split extends string_test {
    public String what;
    public String sep;
    public String altsep;
    public test_split(String sep, String altsep) {
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
}