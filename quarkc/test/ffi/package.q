quark *;
namespace test {
    void go() {}

    @doc("""This is a package.

    It has multiple lines of docs.
    Hurrah!""")
    class Test {
        String name;
        void go() {}
    }

    namespace subtest {
        void go() {}

        class Test {
            int size;
            void go() {}
        }
    }
}
