package box_md;

public class box_Box_box_Box_builtin_int___set_Method extends builtin.reflect.Method implements io.datawire.quark.runtime.QObject {
    public box_Box_box_Box_builtin_int___set_Method() {
        super("builtin.void", "set", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"box.Box<builtin.int>"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        box.Box<box.Box<Integer>> obj = (box.Box<box.Box<Integer>>) (object);
        (obj).set((box.Box<Integer>) ((args).get(0)));
        return null;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
