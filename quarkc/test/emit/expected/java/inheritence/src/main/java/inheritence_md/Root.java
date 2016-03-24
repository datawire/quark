package inheritence_md;

public class Root implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class inheritence_A_md = inheritence_A.singleton;
    public static quark.reflect.Class inheritence_B_md = inheritence_B.singleton;
    public static quark.reflect.Class inheritence_C_md = inheritence_C.singleton;
    public Root() {}
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
