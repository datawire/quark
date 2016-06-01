quark 0.6.100;
namespace test {
    void go() {}

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
