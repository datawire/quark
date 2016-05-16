import quark.test;

void main(List<String> args) {
    test.run(args);
}

class ListTest {

    void testSlice1() {
        List<int> l = [1, 2, 3, 4];
        checkEqual([2, 3], l.slice(1, 3));
    }

    void testSlice2() {
        List<int> l = [1, 2, 3, 4];
        checkEqual([1, 2], l.slice(0, 2));
    }

    void testSlice3() {
        List<int> l = [1, 2, 3, 4];
        checkEqual([3, 4], l.slice(2, 4));
    }

    void testSlice4() {
        List<int> l = [1, 2, 3, 4];
        checkEqual([1, 2, 3], l.slice(0, -1));
    }

    void testSlice5() {
        List<int> l = [1, 2, 3, 4];
        checkEqual([1, 2, 3, 4], l.slice(0, 10));
    }

    void testSlice6() {
        List<int> l = [1, 2, 3, 4];
        checkEqual([], l.slice(3, 2));
    }

    void testSlice7() {
        List<int> l = [1, 2, 3, 4];
        checkEqual([4], l.slice(-1, 10));
    }

    void testInsert() {
        List<int> l = [1, 2, 3, 4];

        l.insert(0, 0);
        checkEqual([0, 1, 2, 3, 4], l);

        l.insert(3, 300);
        checkEqual([0, 1, 2, 300, 3, 4], l);
        
        l.insert(6, 999);
        checkEqual([0, 1, 2, 300, 3, 4, 999], l);
    }

}
