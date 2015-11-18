public class Test {
    public Object bar(String name, java.util.ArrayList<Object> args) {
        System.out.println(args);
        return null;
    }
    public void foo(String foo, String bar, Integer baz) {
        (this).bar("foo", new java.util.ArrayList(java.util.Arrays.asList(new Object[]{foo, bar, baz})));
    }
    public Message rpc(String name, Message msg) {
        System.out.println((msg).encode());
        if ((name)==("hello") || ((name) != null && (name).equals("hello"))) {
            return new Pong();
        } else {
            return (Message) (null);
        }
    }
    public Pong hello(Ping ping) {
        return (Pong) ((this).rpc("hello", ping));
    }
}