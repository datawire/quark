void main() {
    List<String> stuff = ["one", "two", "three", "four"];

    int idx = 0;
    while (true) {
	String s = stuff[idx];
	if (s == "three") {
	    print("breaking");
	    break;
	}
	print("not breaking");
	idx = idx + 1;
    }

    idx = 0;
    bool loop = true;
    while (loop) {
	String s2 = stuff[idx];
	if (s2 != "three") {
	    idx = idx + 1;
	    print("continuing");
	    continue;
	}
	print("not continuing");
	loop = false;
    }
}
