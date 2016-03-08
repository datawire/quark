namespace test_n0 {
    void go() {
        print("GO!");
    }

    class Test_c1 {
        String name;
        void go() {
            print("TGO!");
        }
    }

    namespace test_n1 {
        void go() {
            print("GOGO!!");
        }

        class Test_c2 {
            int size;
            void go() {
                print("TTGO!!");
            }
        }
    }
}

void main() {
    // test.go();
    // test.test.go();
    // test.Test t1 = new test.Test();
    // test.test.Test t2 = new test.test.Test();
    // t1.go();
    // t2.go();
}
