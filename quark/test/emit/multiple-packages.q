package p1 {
    package p2 {
        void a() {
	    print("a");
	}
    }
    package p2 {
        void b() {
	    print("b");
	}
    }
    void c() {
        print("c");
    }
}

package p1 {
    void d() {
        print("d");
    }
}

void main() {
    p1.p2.a();
    p1.p2.b();
    p1.c();
    p1.d();
}
