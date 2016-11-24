macro void print(Any o) $java{
    System.out.println($o);
};

void test() {
    print(unsafe("yay, it works!!!"));
    assertEqual(1, 1);
}
