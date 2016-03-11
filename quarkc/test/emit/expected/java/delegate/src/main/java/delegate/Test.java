package delegate;

public class Test implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class delegate_Test_ref = delegate_md.Root.delegate_Test_md;
    public static builtin.reflect.Class builtin_List_builtin_Object__ref = delegate_md.Root.builtin_List_builtin_Object__md;
    public Test() {}
    public Object bar(String name, java.util.ArrayList<Object> args, java.util.ArrayList<Object> options) {
        do{System.out.println(args);System.out.flush();}while(false);
        return null;
    }
    public void foo(String foo, String bar, Integer baz) {
        (this).bar("foo", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{foo, bar, baz})), new java.util.ArrayList(java.util.Arrays.asList(new Object[]{})));
    }
    public Message rpc(String name, Message msg, java.util.ArrayList<Object> options) {
        do{System.out.println((msg).encode());System.out.flush();}while(false);
        if ((name)==("hello") || ((name) != null && (name).equals("hello"))) {
            return new Pong();
        } else {
            return (Message) (null);
        }
    }
    public Pong hello(Ping ping) {
        return (Pong) (this.rpc("hello", ping, new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}))));
    }
    public String _getClass() {
        return "delegate.Test";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
