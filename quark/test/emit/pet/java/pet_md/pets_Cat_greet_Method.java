package pet_md;

public class pets_Cat_greet_Method extends reflect.Method implements io.datawire.quark.runtime.QObject {
    public pets_Cat_greet_Method() {
        super("void", "greet", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        pets.Cat obj = (pets.Cat) (object);
        (obj).greet();
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
