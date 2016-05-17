 // xfail circular import in js and py and rb, works in java
namespace abba3 {
    namespace c {
        class C {
            void foo() { print(self.getClass().getName()); }
        }
    }
    namespace a {
        class A extends c.C {}
        class AB extends b.B {}
    }
    namespace b {
        class B extends c.C {}
        class BA extends a.A {}
    }
}
void main(List<String> args) {
    new abba3.a.AB().foo();
    new abba3.b.BA().foo();
}
