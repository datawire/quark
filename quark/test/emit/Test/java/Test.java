public class Test {
    public Test foo(Test t) {
        return new Test();
    }
    public void test() {
        Integer x = 2;
        Integer y = 2;
        Integer z = (x) + (y);
        String hello = "hello";
        Test t1 = new Test();
        Test t2 = (t1).foo(t1);
        Integer four = (2) + (2);
    }
}