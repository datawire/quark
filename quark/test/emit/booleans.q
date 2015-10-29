void main() {
    if (true) {
	print("Hi!");
    }

    bool b = 1 > 0;

    if (b) {
	print("Hey!");
    }

    bool c = false;

    if (!c) {
	print("Ho!");
    }

    int count = 0;
    while (true) {
	if (count > 3) {
	    break;
	}
	count = count + 1;
    }

    bool troo = true && true;
    print(troo.toString());
    bool fols = false || false;
    print(fols.toString());

    String foo = "foo";
    String bar = "bar";
    if (foo == "foo" && bar == "bar") {
	print("foobar!!");
    }
}
