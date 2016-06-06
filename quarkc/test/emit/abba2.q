quark *;
 // xfail circular import in py, works in java, js, rb
namespace abba2 {
    namespace c {
        class C {
            void foo() { print(self.getClass().getName()); }
        }
    }
    namespace a {
        class A extends c.C {}
    }
    namespace b {
        class B extends c.C {}
        class BA extends a.A {}
    }
}
void main(List<String> args) {
    new abba2.b.BA().foo();
}
