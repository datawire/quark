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
        print(new Test().name);
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
        print(new Test("Hello World!!").name);
    }
}

package test3 {
    class Box<T> {
        T contents;
        Box(T contents) {
            self.contents = contents;
        }
        T get() {
            return self.contents;
        }
    }

    void go() {
        Box<String> box = new Box<String>("Hello World!!!");
        print(box.get());
        print(box.contents);
        print(new Box<String>("Hello World!!!").get());
        print(new Box<String>("Hello World!!!").contents);
    }
}
