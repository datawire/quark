package quark_ffi_signatures_md;

public class inheritance_pets_Cat extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new inheritance_pets_Cat();
    public inheritance_pets_Cat() {
        super("inheritance.pets.Cat");
        (this).name = "inheritance.pets.Cat";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new inheritance_pets_Cat_greet_Method()}));
        (this).parents = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"inheritance.pets.Pet"}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new inheritance.pets.Cat();
    }
    public Boolean isAbstract() {
        return false;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
