class Test {
    Test foo(Test t) {
         return Test();
    }

    void test() {
        int x = 2;
        int y = 2;
        int z = x + y;
	print(z);
        String hello = "hello";
	print(hello);
        Test t1 = Test();
        Test t2 = t1.foo(t1);
	if (t2 != t1) {
	    print("YAY!");
	}
        int four = 2 + 2;
	print(four);
    }
}

void main(List<String> args) {
    Test().test();
}