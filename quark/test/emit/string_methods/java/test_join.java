public class test_join extends string_test {
    public String what;
    public java.util.ArrayList<String> parts;
    public String strparts;
    public String sep;
    public test_join(String what) {
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
}