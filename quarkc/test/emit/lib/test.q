import testlib;

@version("1.2.3")
namespace testlib {
    String test() {
        return "testlib";
    }

    String foo() {
        //return asdf();
        return "asdf";
    }
}


namespace t2 {
    void test() {
        import testlib;
        String f = foo();
        print(f);
        //fdsa;
    }
}
