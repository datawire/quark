package pets;

public class Cat extends Pet implements io.datawire.quark.runtime.QObject {
    public Cat() {
        super();
    }
    public void greet() {
        System.out.println("meow!");
    }
    public String _getClass() {
        return "pets.Cat";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
