public class Test {
    public Test foo(Test t) {
        return new Test();
    }
    public void test() {
        int x = 2;
        int y = 2;
        int z = (x) + (y);
        String hello = "hello";
        Test t1 = new Test();
        Test t2 = (t1).foo(t1);
        int four = (2) + (2);
    }
}