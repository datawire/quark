package default_constructors;

public class Y extends X implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class default_constructors_Y_ref = default_constructors_md.Root.default_constructors_Y_md;
    public String name;
    public Y(String name) {
        super();
        (this).name = name;
    }
    public void test() {
        do{System.out.println((this).name);System.out.flush();}while(false);
    }
    public String _getClass() {
        return "default_constructors.Y";
    }
    public Object _getField(String name) {
        if ((name)==("name") || ((Object)(name) != null && ((Object) (name)).equals("name"))) {
            return (this).name;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("name") || ((Object)(name) != null && ((Object) (name)).equals("name"))) {
            (this).name = (String) (value);
        }
    }
}
