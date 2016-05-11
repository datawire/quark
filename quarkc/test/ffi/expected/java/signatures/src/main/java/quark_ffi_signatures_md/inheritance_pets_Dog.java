package quark_ffi_signatures_md;

public class inheritance_pets_Dog extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new inheritance_pets_Dog();
    public inheritance_pets_Dog() {
        super("inheritance.pets.Dog");
        (this).name = "inheritance.pets.Dog";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new inheritance_pets_Dog_greet_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new inheritance.pets.Dog();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
