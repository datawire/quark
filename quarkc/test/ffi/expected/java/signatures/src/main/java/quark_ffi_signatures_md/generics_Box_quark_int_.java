package quark_ffi_signatures_md;

public class generics_Box_quark_int_ extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new generics_Box_quark_int_();
    public generics_Box_quark_int_() {
        super("generics.Box<quark.int>");
        (this).name = "generics.Box";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.int"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new quark.reflect.Field("quark.int", "contents")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new generics_Box_quark_int__set_Method(), new generics_Box_quark_int__get_Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.Object"}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new generics.Box<Integer>();
    }
    public Boolean isAbstract() {
        return false;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
