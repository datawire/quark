package box_md;

public class box_Crate_builtin_int_ extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new box_Crate_builtin_int_();
    public box_Crate_builtin_int_() {
        super("box.Crate<builtin.int>");
        (this).name = "box.Crate";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.int"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("box.Box<builtin.Object>", "box"), new builtin.reflect.Field("box.Box<builtin.int>", "ibox")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new box_Crate_builtin_int__set_Method(), new box_Crate_builtin_int__get_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new box.Crate<Integer>();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
