package box_md;

public class box_Box_box_Box_builtin_int__ extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new box_Box_box_Box_builtin_int__();
    public box_Box_box_Box_builtin_int__() {
        super("box.Box<box.Box<builtin.int>>");
        (this).name = "box.Box";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"box.Box<builtin.int>"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new builtin.reflect.Field("box.Box<builtin.int>", "contents")}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new box_Box_box_Box_builtin_int___set_Method(), new box_Box_box_Box_builtin_int___get_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new box.Box<box.Box<Integer>>();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
