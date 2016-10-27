package docs;

/**
 * hey, here are some docs
 * here are some more docs
 * one that &lt;breaks&gt; javadoc
 * even if C# &lt; Java and
 * Python &gt;&gt; bash
 * a bunch of docs in fact
 */
public class Test implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class docs_Test_ref = quark_ffi_signatures_md.Root.docs_Test_md;
    /**
     * field docs
     */
    public String name;
    public Test() {}
    /**
     * method docs
     */
    public Integer test(String param) {
        return 3;
    }
    public String _getClass() {
        return "docs.Test";
    }
    public Object _getField(String name) {
        if ((name)==("name") || ((Object)(name) != null && ((Object) (name)).equals("name"))) {
            return (this).name;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("name") || ((Object)(name) != null && ((Object) (name)).equals("name"))) {
            (this).name = (String) (value);
        }
    }
}
