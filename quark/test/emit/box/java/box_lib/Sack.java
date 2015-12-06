package box_lib;

public class Sack implements io.datawire.quark.runtime.QObject {
    public Box<Integer> ints = new Box<Integer>();
    public Sack() {}
    public String _getClass() {
        return "Sack";
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
