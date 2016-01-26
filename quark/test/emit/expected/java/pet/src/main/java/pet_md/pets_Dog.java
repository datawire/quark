package pet_md;

public class pets_Dog extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new pets_Dog();
    public pets_Dog() {
        super("pets.Dog");
        (this).name = "Dog";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new pets_Dog_greet_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new pets.Dog();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
