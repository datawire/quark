package quark_delegate;

public class Test implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class quark_delegate_Test_ref = quark_delegate_md.Root.quark_delegate_Test_md;
    public static quark.reflect.Class quark_List_quark_Object__ref = quark_delegate_md.Root.quark_List_quark_Object__md;
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
        if ((name)==("hello") || ((Object)(name) != null && ((Object) (name)).equals("hello"))) {
            return new Pong();
        } else {
            return (Message) (null);
        }
    }
    public Pong hello(Ping ping) {
        return (Pong) (this.rpc("hello", ping, new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}))));
    }
    public String _getClass() {
        return "quark_delegate.Test";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
