quark 0.6.100;
namespace p1 {
    namespace p2 {
        void a() {
	    print("a");
	}
    }
    namespace p2 {
        void b() {
	    print("b");
	}
    }
    void c() {
        print("c");
    }
}

namespace p1 {
    void d() {
        print("d");
    }
}

void main(List<String> args) {
    p1.p2.a();
    p1.p2.b();
    p1.c();
    p1.d();
}
