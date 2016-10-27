quark *;
package quark_ffi_signatures 1.0.0;

namespace functions {
    int factorial(int n) { return null; }
}

namespace generics {
    class Box<T> {
        T contents;
        void set(T contents) {}
        T get() { return null; }
    }

    class Crate<T> {
        Box<T> box;
        Box<int> ibox;
        void set(T stuff) {}
        T get() { return null; }
    }

    class Sack {
        Box<int> ints;
    }

    class Matrix<T> {

	int width;
	int height;
	List<List<T>> columns;

	Matrix(int width, int height) {}

	T __get__(int i, int j) { return null; }

	void __set__(int i, int j, T value) {}

    }


    namespace constructors {
        class Box<T> {
            T contents;
            Box(T contents) {}
            T get() { return null; }
        }
    }

    namespace pkg {

        interface Foo<T> {
            T foo() { return null; }

            T get();
        }

        class StringFoo extends Foo<String> {
            String get() { return null; }
        }

        class Box<T> {
            T contents;
            Box(T contents) {}
        }

        class StringBox extends Box<String> {}
    }

    namespace ccc {
        class TLSContextInitializer extends TLSInitializer<Context> {
            Context getValue() { return null; }
        }

        class Context {
            static Context _global;
            static TLS<Context> _current;
            static Context current() { return null; }
            static Context global() { return null; }

            Context(Context parent) { }

            Context parent;
        }

        interface TLSInitializer<T> {
            T getValue();
        }

        class TLS<T> {
            T _value;
            TLS(TLSInitializer<T> initializer) { }
            T getValue() { return null; }
        }
    }

}

namespace inheritance {

    class Base {
        String name;
    }

    class Test extends Base {
        String mumble;
        String later;
        Test() {}
    }

    class A {
        String name;
        A(String name) {}
    }

    class B extends A {
        void greet() {}
    }

    class C extends A {
        C(String name) {
            super("C" + name);
        }

        void greet() {}
    }

    class X {}

    class Y extends X {
        String name;
        Y(String name) {}

        void test() {}
    }

    namespace t1 {
        class A {
            void foo() {}
        }

        class B extends A {
            void foo() {}
        }

        class C extends A {}
    }

    namespace t2 {
        class A {}

        class B extends A {}

        class X<T> {}

        class Y extends X<int> {}
    }

    namespace pets {

        class Pet {
            void greet();
        }

        class Cat extends Pet {
            void greet() {
    	    print("meow!");
    	}
        }

        class Dog extends Pet {
           void greet() {
               print("woof!");
           }
        }

    }

    class Message {
        String encode() { return null; }
    }

    class Ping extends Message {}
    class Pong extends Message {
        String toString() {
            return null;
        }
    }

    namespace super_ {
        class A {
            String name;

            A(String name) {}

            void greet() {}
        }

        class B extends A {

            B() { super(null); }

            void greet() {}
        }
    }

    namespace use_before_def {
        class Bar {
            void go() {}
        }

        class Foo {
            String name;
        }
    }

}

namespace interfaces {

    interface A {
        void foo();
        void bar() {}
    }

    interface B {
        void bar() {}
    }

    interface C {
        void foo() {}
    }

    class T1 extends A {
        void foo() {}
    }
    class T2 extends A, B { // B.bar is shadowed
        void foo() {}
    }
    class T3 extends B, A { // A.bar is shadowed
        void foo() {}
    }
    class T4 extends A, C {
        // C.foo is mixed in for a default foo
    }
    class T5 extends A, C {
        void foo() {}
    }

    interface Foo {
       void m1();
       void m2(int arg);
       void m3(List<String> args);
    }

    interface Bar<T> {
       void m1();
       void m2(T arg);
       void m3(List<T> args);
    }

    class Baz extends Foo {
        void m2(int arg) { }
        void m1() { }
        void m3(List<String> args) { }
    }

    interface RazBar extends Bar<String> {
    }

    interface RazFaz<T> extends Bar<T> {
    }

    class BazBar extends Bar<String> {
        void m1() {}
        void m2(String arg) {}
        void m3(List<String> args) {}
    }

    class BazFaz<T> extends Bar<T> {
        void m1() {}
        void m2(T arg) {}
        void m3(List<T> args) {}
    }

    interface IConstants {
        static String FOO = "foo";
    }

    class Constants extends IConstants {}

}

namespace classes {

    class Overload {

        String name;

        Overload(String name) {}

        Overload __add__(Overload o) { return null; }

        Overload __mul__(Overload o) { return null; }

        void test() {}

    }

    class Test {
        void test() {}
    }

    class string_test {
        void check(String actual, String expected, String op, String q) {}
    }


    class test_size extends string_test {
        String what;
        test_size(String what) {}
        test_size does(int expected) { return null; }
    }

    class test_startsWith extends string_test {
        String what;
        String _that;
        test_startsWith(String what) {}
        test_startsWith that(String _that) { return null; }
        test_startsWith does(bool expected) { return null; }
    }


    class test_endsWith extends string_test {
        String what;
        String _that;
        test_endsWith(String what) {}
        test_endsWith that(String _that) { return null; }
        test_endsWith does(bool expected) { return null; }
    }

    class test_find extends string_test {
        String what;
        String _that;
        test_find(String what) { }
        test_find that(String _that) { return null; }
        test_find does(int expected) { return null; }
    }

    class test_substring extends string_test {
        String what;
        int start;
        int end;
        test_substring(String what) { }
        test_substring that(int start, int end) { return null; }
        test_substring does(String expected) { return null; }
    }

    class test_replace extends string_test {
        String what;
        String start;
        String end;
        test_replace(String what) { }
        test_replace that(String start, String end) { return null; }
        test_replace does(String expected) { return null; }
    }

    class test_join extends string_test {
        String what;
        List<String> parts;
        String strparts;
        String sep;
        test_join(String what) {}
        test_join that() { return null; }
        test_join a(String part) { return null; }
        test_join does(String expected) { return null; }
    }

    class test_split extends string_test {
        String what;
        String sep;
        String altsep;
        test_split(String sep, String altsep) { }
        test_split that(String what) { return null; }
        test_split does(String expected) { return null; }
    }

    namespace stuff {
        class Test {
            Test foo(Test t) { return null; }
            void test() {}
        }
    }

}

namespace statics {
    class Foo {
        static int count;

        static void setCount(int n) { }

        static int getCount() {
            return 0;
        }

        Foo() {}

        void test1() {}

        void test2() {}

        void test3() {}

        void test4() {}
    }
}

@doc("The namespace has docs, too.")
namespace docs {

    @doc("hey, here are some docs",
         "here are some more docs",
         "one that <breaks> javadoc",
         "even if C# < Java and",
         "Python >> bash",
         "a bunch of docs in fact")
    class Test {

        @doc("field docs")
        String name;

        @doc("method docs")
        int test(String param) {
            return 3;
        }
    }

}

namespace p1 {
    namespace p2 {
        void a() {}
    }
    namespace p2 {
        void b() {}
    }
    void c() {}
}

namespace p1 {
    void d() {}
}
