quark *;
 // xfail circular import in js and py, works in rb, java
namespace abba1 {
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
    }
}
void main(List<String> args) {
    new abba.a.AB().foo();
}
