quark 0.6.100;
class Pie {
    macro int slice() 3;
    void test() {
        Pie p = Pie();
        int x = p.slice();
    }
}

void main(List<String> args) {
    print(new Pie().slice());
}
