package box;

public class Sack implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class box_Sack_ref = box_md.Root.box_Sack_md;
    public Box<Integer> ints = new Box<Integer>();
    public Sack() {}
    public String _getClass() {
        return "box.Sack";
    }
    public Object _getField(String name) {
        if ((name)==("ints") || ((name) != null && (name).equals("ints"))) {
            return (this).ints;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("ints") || ((name) != null && (name).equals("ints"))) {
            (this).ints = (Box<Integer>) (value);
        }
    }
}
