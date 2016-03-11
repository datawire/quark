package no_spurious_cast_md;

public class no_spurious_cast_X_builtin_int_ extends builtin.reflect.Class implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class singleton = new no_spurious_cast_X_builtin_int_();
    public no_spurious_cast_X_builtin_int_() {
        super("no_spurious_cast.X<builtin.int>");
        (this).name = "no_spurious_cast.X";
        (this).parameters = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"builtin.int"}));
        (this).fields = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (this).methods = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
    }
    public Object construct(java.util.ArrayList<Object> args) {
        return new no_spurious_cast.X<Integer>();
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
