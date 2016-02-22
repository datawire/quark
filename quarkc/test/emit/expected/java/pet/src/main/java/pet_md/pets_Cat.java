package pet_md;

public class pets_Cat extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new pets_Cat();
    public pets_Cat() {
        super("pets.Cat");
        (this).name = "pets.Cat";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new pets_Cat_greet_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new pets.Cat();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
