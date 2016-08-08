quark *;

class I {
    void defaultImplementation() {
	return;
    }
}

// defaultImplementation implementation should be inherited:
class C extends I {}
