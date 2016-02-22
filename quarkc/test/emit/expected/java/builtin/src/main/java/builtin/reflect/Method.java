package builtin.reflect;

public abstract class Method implements io.datawire.quark.runtime.QObject {
    public String type;
    public String name;
    public java.util.ArrayList<String> parameters;
    public Method(String type, String name, java.util.ArrayList<String> parameters) {
        (this).type = type;
        (this).name = name;
        (this).parameters = parameters;
    }
    public Class getType() {
        return Class.get(this.type);
    }
    public String getName() {
        return this.name;
    }
    public java.util.ArrayList<Class> getParameters() {
        java.util.ArrayList<Class> result = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        Integer idx = 0;
        while ((idx) < ((this.parameters).size())) {
            (result).add(Class.get((this.parameters).get(idx)));
            idx = (idx) + (1);
        }
        return result;
    }
    public abstract Object invoke(Object object, java.util.ArrayList<Object> args);
}
