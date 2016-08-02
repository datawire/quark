quark *;
namespace pkg_im {

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

void main(List<String> args) {
    pkg_im.C c = new pkg_im.C();
    c.event1();
    c.event2();
    c.run();
}
