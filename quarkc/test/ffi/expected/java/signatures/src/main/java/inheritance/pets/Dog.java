package inheritance.pets;

public class Dog extends Pet implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class inheritance_pets_Dog_ref = quark_ffi_signatures_md.Root.inheritance_pets_Dog_md;
    public Dog() {
        super();
    }
    public void greet() {
        do{System.out.println("woof!");System.out.flush();}while(false);
    }
    public String _getClass() {
        return "inheritance.pets.Dog";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
