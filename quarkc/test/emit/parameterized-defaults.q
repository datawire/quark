quark *;
namespace pkg_sd {

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
    pkg_sd.StringBox box = new pkg_sd.StringBox("asdf");
    print(box.contents);
    pkg_sd.StringFoo foo = new pkg_sd.StringFoo();
    print(foo.foo());
}
