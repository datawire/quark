package pet_md;

public class Root implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class pets_Cat_md = pets_Cat.singleton;
    public static quark.reflect.Class pets_Dog_md = pets_Dog.singleton;
    public Root() {}
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
