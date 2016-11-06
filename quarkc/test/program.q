namespace quark {
    primitive int {
        int __add__(int other);
        int __sub__(int other);
        int __mul__(int other);
        bool __lt__(int other);
        bool __eq__(int other);
        String toString();
    }

    primitive bool {
        bool __eq__(bool other);
        String toString();
    }

    primitive String {
        bool __lt__(String other);
        bool __eq__(String other);
        String toString();
    }

    primitive void {}
}

namespace math {
    int fib(int n) {
        if (n < 2) {
            return n;
        } else {
            return fib(n-1) + fib(n-2);
        }
    }
}

import math;

namespace other {
    int fib2(int n) {
        return 2*fib(n);
    }

    class Foo {

        String asdf;

        int foo() {
            asdf = "fdsa";
            return fib2(3);
        }

        String bar() {
            int count = 0;
            while (count < 3) {
                count = count + 1;
            }
            Box<String> box = new Box<String>();
            Box<int> ibox = new Box<int>();
            ibox.set(3);
            box.set("three");
            Foo f = new Foo();
            Map<int,String> m = new Map<int,String>();
            MultiBox<int> mbi = new MultiBox<int>();
            return foo().toString();
        }
    }

    class Box<T> {
        T contents;

        T get() {
            return contents;
        }

        void set(T value) {
            contents = value;
        }
    }

    class MultiBox<T> {
        Map<String,T> contents;

        MultiBox() {
            contents = new Map<String,T>();
        }

        T get(String key) {
            return contents[key];
        }

        void set(String key, T value) {
            contents[key] = value;
        }
    }

    class Map<K,V> {
        K key;
        V value;
        V __get__(K key) { return value; }
        void __set__(K key, V value) {}
    }
}
