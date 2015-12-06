package pets;

public class Dog extends Pet implements io.datawire.quark.runtime.QObject {
    public Dog() {
        super();
    }
    public void greet() {
        System.out.println("woof!");
    }
    public String _getClass() {
        return "pets.Dog";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
