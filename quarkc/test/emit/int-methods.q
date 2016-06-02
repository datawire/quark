quark *;
class Test {
    void test() {
        int x = 1;
        int y = 2;
        int z = x.__add__(y).__sub__(3).__mul__(4);
	print(z);
        int four = 2.__add__(2);
	print(four);
    }
}

void main(List<String> args) {
    new Test().test();
}
