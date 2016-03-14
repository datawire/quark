package pets;

public class Cat extends Pet implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class pets_Cat_ref = pet_md.Root.pets_Cat_md;
    public Cat() {
        super();
    }
    public void greet() {
        do{System.out.println("meow!");System.out.flush();}while(false);
    }
    public String _getClass() {
        return "pets.Cat";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
