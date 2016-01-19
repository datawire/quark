package stuff_lib;

public class Test implements io.datawire.quark.runtime.QObject {
    public Test() {}
    public Test foo(Test t) {
        return new Test();
    }
    public void test() {
        Integer x = 2;
        Integer y = 2;
        Integer z = (x) + (y);
        do{System.out.println(z);System.out.flush();}while(false);
        String hello = "hello";
        do{System.out.println(hello);System.out.flush();}while(false);
        Test t1 = new Test();
        Test t2 = (t1).foo(t1);
        if (!((t2)==(t1) || ((t2) != null && (t2).equals(t1)))) {
            do{System.out.println("YAY!");System.out.flush();}while(false);
        }
        Integer four = (2) + (2);
        do{System.out.println(four);System.out.flush();}while(false);
    }
    public String _getClass() {
        return "Test";
    }
    public Object _getField(String name) {
        return null;
    }
    public void _setField(String name, Object value) {}
}
