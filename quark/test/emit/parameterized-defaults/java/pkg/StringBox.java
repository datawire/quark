package pkg;

public class StringBox extends Box<String> implements io.datawire.quark.runtime.QObject {
    public StringBox(String contents) {
        super(contents);
    }
    public String _getClass() {
        return "pkg.StringBox";
    }
    public Object _getField(String name) {
        if ((name)==("contents") || ((name) != null && (name).equals("contents"))) {
            return (this).contents;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("contents") || ((name) != null && (name).equals("contents"))) {
            (this).contents = (String) (value);
        }
    }
}
