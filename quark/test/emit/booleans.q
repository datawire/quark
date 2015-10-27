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
	    return;
	}
	count = count + 1;
    }
}
