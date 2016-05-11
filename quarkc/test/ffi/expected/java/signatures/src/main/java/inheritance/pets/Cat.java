package inheritance.pets;

public class Cat extends Pet implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class inheritance_pets_Cat_ref = quark_ffi_signatures_md.Root.inheritance_pets_Cat_md;
    public Cat() {
        super();
    }
    public void greet() {
        do{System.out.println("meow!");System.out.flush();}while(false);
    }
    public String _getClass() {
        return "inheritance.pets.Cat";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
