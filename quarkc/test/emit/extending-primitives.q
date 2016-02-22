namespace pkg {

    @mapping($java{java.lang.Runnable})
    primitive Runnable {
        void event1() {
            print("default event1");
        }
        void run() {
            print("running");
        }
    }

    @mapping($java{java.lang.Cloneable})
    primitive Cloneable {
        void event2() {
            print("default event2");
        }
    }

    class C extends Runnable, Cloneable {
        void event1() {
            print("event1");
        }
    }

}

void main() {
    pkg.C c = new pkg.C();
    c.event1();
    c.event2();
    c.run();
}
