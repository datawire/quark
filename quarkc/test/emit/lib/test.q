quark 0.6.100;
import testlib;

@version("1.2.3")
namespace testlib {
    String atest() {
        return "testlib";
    }

    String foo() {
        //return asdf();
        return "asdf";
    }
}


namespace t2 {
    void atest() {
        import testlib;
        String f = foo();
        print(f);
        //fdsa;
    }
}
