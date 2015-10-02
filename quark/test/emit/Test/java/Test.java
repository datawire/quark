public class Test {
    public Test foo(Test t) {
        return new Test();
    }
    public void test() {
        Integer x = 2;
        Integer y = 2;
        Integer z = (Integer) ((x) + (y));
        System.out.println(z);
        String hello = "hello";
        System.out.println(hello);
        Test t1 = new Test();
        Test t2 = (t1).foo(t1);
        if (!((t2).equals(t1))) {
            System.out.println("YAY!");
        }
        Integer four = (Integer) ((2) + (2));
        System.out.println(four);
    }
}