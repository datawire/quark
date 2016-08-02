quark *;
namespace package_test {
    void go() {
        print("GO!");
    }

    class CPackageTest {
        String name;
        void go() {
            print("TGO!");
        }
    }

    namespace package_test {
        void go() {
            print("GOGO!!");
        }

        class CPackageTest {
            int size;
            void go() {
                print("TTGO!!");
            }
        }
    }
}

void main(List<String> args) {
    package_test.go();
    package_test.package_test.go();
    package_test.CPackageTest t1 = new package_test.CPackageTest();
    package_test.package_test.CPackageTest t2 = new package_test.package_test.CPackageTest();
    t1.go();
    t2.go();
}
