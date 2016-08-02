quark *;
namespace pkg_dm {
    interface A {
        void foo();
        void bar() {
            print("A bar");
            self.foo();
        }
    }

    interface B {
        void bar() {
            print("B bar");
        }
    }

    interface C {
        void foo() {
            print("C mixin for foo");
        }
    }

    class T1 extends A {
        void foo() {
            print("T1 foo");
        }
    }
    class T2 extends A, B { // B.bar is shadowed
        void foo() {
            print("T2 foo");
        }
    }
    class T3 extends B, A { // A.bar is shadowed
        void foo() {
            print("T3 foo");
        }
    }
    class T4 extends A, C {
        // C.foo is mixed in for a default foo
    }
    class T5 extends A, C {
        void foo() {
            print("T5 foo");
        }
    }
}

void main(List<String> args) {
    pkg_dm.T1 t1 = new pkg_dm.T1();
    t1.foo();
    t1.bar();

    print("===");

    pkg_dm.T2 t2 = new pkg_dm.T2();
    t2.foo();
    t2.bar();

    print("===");

    pkg_dm.T3 t3 = new pkg_dm.T3();
    t3.foo();
    t3.bar();

    print("===");

    pkg_dm.T4 t4 = new pkg_dm.T4();
    t4.foo();
    t4.bar();

    print("===");

    pkg_dm.T5 t5 = new pkg_dm.T5();
    t5.foo();
    t5.bar();
}
