package quark_md;

public class quark_spi_RuntimeApi_schedule_Method extends quark.reflect.Method implements io.datawire.quark.runtime.QObject {
    public quark_spi_RuntimeApi_schedule_Method() {
        super("quark.void", "schedule", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"quark.Task", "quark.float"})));
    }
    public Object invoke(Object object, java.util.ArrayList<Object> args) {
        quark.spi.RuntimeApi obj = (quark.spi.RuntimeApi) (object);
        (obj).schedule((quark.Task) ((args).get(0)), (Double) ((args).get(1)));
        return null;
    }
    public String _getClass() {
        return (String) (null);
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
