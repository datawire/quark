package pets;

public class Cat extends Pet implements io.datawire.quark.runtime.QObject {
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
