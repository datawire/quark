package quark;

public class ListUtil<T> implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_List_quark_Object__ref = quark_md.Root.quark_List_quark_Object__md;
    public ListUtil() {}
    public java.util.ArrayList<T> slice(java.util.ArrayList<T> list, Integer start, Integer stop) {
        java.util.ArrayList<T> result = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        if ((start) >= ((list).size())) {
            start = (list).size();
        } else {
            start = io.datawire.quark.runtime.Builtins.modulo((start), ((list).size()));
        }
        if ((stop) >= ((list).size())) {
            stop = (list).size();
        } else {
            stop = io.datawire.quark.runtime.Builtins.modulo((stop), ((list).size()));
        }
        Integer idx = start;
        while ((idx) < (stop)) {
            (result).add((list).get(idx));
            idx = (idx) + (1);
        }
        return result;
    }
    public String _getClass() {
        return "quark.ListUtil<quark.Object>";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
