package quark.test;

public class MethodTest extends Test implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_test_MethodTest_ref = quark_md.Root.quark_test_MethodTest_md;
    public quark.reflect.Class klass;
    public quark.reflect.Method method;
    public MethodTest(quark.reflect.Class klass, quark.reflect.Method method) {
        super((((klass).getName()) + (".")) + ((method).getName()));
        (this).klass = klass;
        (this).method = method;
    }
    public void run() {
        quark.reflect.Method setup = (this.klass).getMethod("setup");
        quark.reflect.Method teardown = (this.klass).getMethod("teardown");
        Object test = (this.klass).construct(new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
        if (!((setup)==(null) || ((Object)(setup) != null && ((Object) (setup)).equals(null)))) {
            (setup).invoke(test, new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
        }
        (this.method).invoke(test, new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
        if (!((teardown)==(null) || ((Object)(teardown) != null && ((Object) (teardown)).equals(null)))) {
            (teardown).invoke(test, new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
        }
    }
    public String _getClass() {
        return "quark.test.MethodTest";
    }
    public Object _getField(String name) {
        if ((name)==("ctx") || ((Object)(name) != null && ((Object) (name)).equals("ctx"))) {
            return Test.ctx;
        }
        if ((name)==("name") || ((Object)(name) != null && ((Object) (name)).equals("name"))) {
            return (this).name;
        }
        if ((name)==("checks") || ((Object)(name) != null && ((Object) (name)).equals("checks"))) {
            return (this).checks;
        }
        if ((name)==("failures") || ((Object)(name) != null && ((Object) (name)).equals("failures"))) {
            return (this).failures;
        }
        if ((name)==("klass") || ((Object)(name) != null && ((Object) (name)).equals("klass"))) {
            return (this).klass;
        }
        if ((name)==("method") || ((Object)(name) != null && ((Object) (name)).equals("method"))) {
            return (this).method;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("ctx") || ((Object)(name) != null && ((Object) (name)).equals("ctx"))) {
            Test.ctx = (io.datawire.quark.runtime.TLS<Test>) (value);
        }
        if ((name)==("name") || ((Object)(name) != null && ((Object) (name)).equals("name"))) {
            (this).name = (String) (value);
        }
        if ((name)==("checks") || ((Object)(name) != null && ((Object) (name)).equals("checks"))) {
            (this).checks = (Integer) (value);
        }
        if ((name)==("failures") || ((Object)(name) != null && ((Object) (name)).equals("failures"))) {
            (this).failures = (java.util.ArrayList<String>) (value);
        }
        if ((name)==("klass") || ((Object)(name) != null && ((Object) (name)).equals("klass"))) {
            (this).klass = (quark.reflect.Class) (value);
        }
        if ((name)==("method") || ((Object)(name) != null && ((Object) (name)).equals("method"))) {
            (this).method = (quark.reflect.Method) (value);
        }
    }
}
