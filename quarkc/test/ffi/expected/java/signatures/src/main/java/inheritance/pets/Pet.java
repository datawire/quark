package inheritance.pets;

public abstract class Pet implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class inheritance_pets_Pet_ref = quark_ffi_signatures_md.Root.inheritance_pets_Pet_md;
    public Pet() {}
    public abstract void greet();
    public String _getClass() {
        return "inheritance.pets.Pet";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
