package m;

public class Functions {

    static marshalling_md.Root root = new marshalling_md.Root();


    public static void test_marshalling() {
        Outer actual = (new Outer()).setup(101);
        String encoded = (builtin.Functions.toJSON(actual, builtin.reflect.Class.get(io.datawire.quark.runtime.Builtins._getClass(actual)))).toString();
        do{System.out.println(encoded);System.out.flush();}while(false);
        Outer expected = new Outer();
        builtin.Functions.fromJSON(builtin.reflect.Class.get(io.datawire.quark.runtime.Builtins._getClass(expected)), expected, io.datawire.quark.runtime.JSONObject.parse(encoded));
        do{System.out.println(Integer.toString((expected).outer_int));System.out.flush();}while(false);
        do{System.out.println((expected).outer_string);System.out.flush();}while(false);
        do{System.out.println(Double.toString((expected).outer_float));System.out.flush();}while(false);
        do{System.out.println(Double.toString((((expected).outer_inner_list).get(1)).inner_float));System.out.flush();}while(false);
    }
}
