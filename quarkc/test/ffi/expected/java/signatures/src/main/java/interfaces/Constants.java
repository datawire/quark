package interfaces;

public class Constants implements IConstants, io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class interfaces_Constants_ref = quark_ffi_signatures_md.Root.interfaces_Constants_md;
    public static String FOO = "foo";
    public Constants() {}
    public String _getClass() {
        return "interfaces.Constants";
    }
    public Object _getField(String name) {
        if ((name)==("FOO") || ((Object)(name) != null && ((Object) (name)).equals("FOO"))) {
            return IConstants.FOO;
        }
        return null;
    }
    public void _setField(String name, Object value) {}
}
