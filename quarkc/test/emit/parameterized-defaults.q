quark 0.6.100;
namespace pkg {

    interface Foo<T> {
        T foo() {
            return get();
        }

        T get();
    }

    class StringFoo extends Foo<String> {
        String get() {
            return "fdsa";
        }
    }

    class Box<T> {
        T contents;
        Box(T contents) {
            self.contents = contents;
        }
    }

    class StringBox extends Box<String> {}
}

void main(List<String> args) {
    pkg.StringBox box = new pkg.StringBox("asdf");
    print(box.contents);
    pkg.StringFoo foo = new pkg.StringFoo();
    print(foo.foo());
}
