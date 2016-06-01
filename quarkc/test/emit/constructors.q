quark 0.6.100;
namespace test1 {
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

namespace test2 {
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

namespace test3 {
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

namespace test4 {
    class Base {
        String name = "Hello World!";
    }

    class Test extends Base {
        String mumble = "lalala";
        String later;
        Test() {
            self.later = "Hello World!";
        }
    }

    void go() {
        Test t = new Test();
        print(t.name);
        print(new Test().name);
    }
}

void main(List<String> args) {
    test1.go();
    test2.go();
    test3.go();
    test4.go();
}
