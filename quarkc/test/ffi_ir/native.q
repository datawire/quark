macro void print(Any o) $java{
    System.out.println($o);
};

void test() {
    print(unsafe(3));
    assertEqual(1, 1);
}
