quark *;

bool intListsEqual(List<int> one, List<int> two) {
    if (one.size() != two.size()) {
        return false;
    }
    int idx = 0;
    while (idx < one.size()) {
        if (one[idx] != two[idx]) {
            return false;
        }
        idx = idx + 1;
    }
    return true;
}

class ListTest {

    void testEquality() {
        assertEqual(true, intListsEqual([], []));
        assertEqual(true, intListsEqual([1], [1]));
        assertEqual(true, intListsEqual([1, 2], [1, 2]));
        assertEqual(false, intListsEqual([], [0]));
        assertEqual(false, intListsEqual([1], [0, 1]));
        assertEqual(false, intListsEqual([1, 2], [0, 1, 2]));
        assertEqual(false, intListsEqual([2, 2], [1, 2]));
        assertEqual(false, intListsEqual([1, 0], [1, 2]));
    }

    void testAppendAdd() {
        List<int> l = [1, 2, 3];
        l.append(4);
        assertEqual(l[3], 4);

        l.add(5);
        assertEqual(l[4], 5);

        assertEqual(true, intListsEqual([1, 2, 3, 4, 5], l));
    }

    void testSlice() {
        List<int> l = [1, 2, 3, 4];
        assertEqual(true, intListsEqual([2, 3], l.slice(1, 3)));
        assertEqual(true, intListsEqual([1, 2], l.slice(0, 2)));
        assertEqual(true, intListsEqual([3, 4], l.slice(2, 4)));
        assertEqual(true, intListsEqual([1, 2, 3], l.slice(0, -1)));
        assertEqual(true, intListsEqual([1, 2, 3, 4], l.slice(0, 10)));
        assertEqual(true, intListsEqual([], l.slice(3, 2)));
        assertEqual(true, intListsEqual([4], l.slice(-1, 10)));
    }

    void testInsert() {
        List<int> l = [1, 2, 3, 4];

        l.insert(0, 0);
        assertEqual(true, intListsEqual([0, 1, 2, 3, 4], l));

        l.insert(3, 300);
        assertEqual(true, intListsEqual([0, 1, 2, 300, 3, 4], l));

        l.insert(6, 999);
        assertEqual(true, intListsEqual([0, 1, 2, 300, 3, 4, 999], l));
    }

    void testRemove() {
        List<int> l = [0, 1, 2, 3, 4, 5];

        assertEqual(0, l.remove(0));
        assertEqual(true, intListsEqual([1, 2, 3, 4, 5], l));

        assertEqual(5, l.remove(4));
        assertEqual(true, intListsEqual([1, 2, 3, 4], l));

        assertEqual(3, l.remove(2));
        assertEqual(true, intListsEqual([1, 2, 4], l));

        // Because Java is confusing...
        List<String> another = ["zero", "one", "two"];
        int idx = 0;
        String res = another.remove(idx);
        assertEqual("zero", res);
    }

}
