package generics;

public class Sack implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class generics_Sack_ref = quark_ffi_signatures_md.Root.generics_Sack_md;
    public Box<Integer> ints;
    public Sack() {}
    public String _getClass() {
        return "generics.Sack";
    }
    public Object _getField(String name) {
        if ((name)==("ints") || ((Object)(name) != null && ((Object) (name)).equals("ints"))) {
            return (this).ints;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("ints") || ((Object)(name) != null && ((Object) (name)).equals("ints"))) {
            (this).ints = (Box<Integer>) (value);
        }
    }
}
