package macro_stuff_md;

public class macro_stuff_Macro extends quark.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class singleton = new macro_stuff_Macro();
    public macro_stuff_Macro() {
        super("macro_stuff.Macro");
        (this).name = "macro_stuff.Macro";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new macro_stuff_Macro_test_Method()}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new macro_stuff.Macro();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
