package test1 {
    class Test {
        String name;
        Test() {
            self.name = "Hello World!";
        }
    }

    void go() {
        Test t = new Test();
        print(t.name);
    }
}

package test2 {
    class Test {
        String name;
        Test(String name) {
            self.name = name;
        }
    }

    void go() {
        Test t = new Test("Hello World!!");
        print(t.name);
    }
}

package test3 {
    class Box<T> {}

    void go() {
        Box<int> box = new Box<int>();
        if (a < b > (c)) {
            doFoo();
        }
    }
}
