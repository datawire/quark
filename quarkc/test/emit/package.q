// xfail:rb
// Ruby back-end upper-cases `test` namespace to `Test`,
// so it collides with `Test` class. The solution to that
// will be to reject programs with public identifiers
// distingushed only by case.

namespace test {
    void go() {
        print("GO!");
    }

    class Test {
        String name;
        void go() {
            print("TGO!");
        }
    }

    namespace test {
        void go() {
            print("GOGO!!");
        }

        class Test {
            int size;
            void go() {
                print("TTGO!!");
            }
        }
    }
}

void main() {
    test.go();
    test.test.go();
    test.Test t1 = new test.Test();
    test.test.Test t2 = new test.test.Test();
    t1.go();
    t2.go();
}
