package pets;

public class Dog extends Pet implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class pets_Dog_ref = pet_md.Root.pets_Dog_md;
    public Dog() {
        super();
    }
    public void greet() {
        do{System.out.println("woof!");System.out.flush();}while(false);
    }
    public String _getClass() {
        return "pets.Dog";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
