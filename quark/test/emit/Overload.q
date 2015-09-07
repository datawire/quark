class Overload {

    Overload __add__(Overload o) {
        return o;
    }

    Overload __mul__(Overload o) {
        return o;
    }

    void test() {
        Overload o1 = Overload();
        Overload o2 = Overload();
        Overload o3 = o1 + o2;
        o3 = o1 * o2;
    }
}
