class Test {
    Test foo(Test t) {
         return Test();
    }

    void test() {
        int x = 2;
        int y = 2;
        int z = x + y;
        String hello = "hello";
        Test t1 = Test();
        Test t2 = t1.foo(t1);
        int four = 2 + 2;
    }
}
