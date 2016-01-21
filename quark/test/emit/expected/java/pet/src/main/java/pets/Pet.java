package pets;

public abstract class Pet implements io.datawire.quark.runtime.QObject {
    public Pet() {}
    public abstract void greet();
}
