
void test_int_11() {
    int value = 2147483646;
    int copy = 2147483646;
    int other = 4294967299;
    assert(value == copy, "equals int: 2147483646");
    assert(!(value == other), "different int: 2147483646 4294967299");
    assertEqual(true, true);
}
        
void test_int_12() {
    int value = 2147483647;
    int copy = 2147483647;
    int other = -3;
    assert(value == copy, "equals int: 2147483647");
    assert(!(value == other), "different int: 2147483647 -3");
    assertEqual(true, true);
}
        
void test_int_13() {
    int value = 2147483648;
    int copy = 2147483648;
    int other = -2;
    assert(value == copy, "equals int: 2147483648");
    assert(!(value == other), "different int: 2147483648 -2");
    assertEqual(true, true);
}
        
void test_int_14() {
    int value = 2147483649;
    int copy = 2147483649;
    int other = -1;
    assert(value == copy, "equals int: 2147483649");
    assert(!(value == other), "different int: 2147483649 -1");
    assertEqual(true, true);
}
        
void test_int_15() {
    int value = 2147483650;
    int copy = 2147483650;
    int other = 0;
    assert(value == copy, "equals int: 2147483650");
    assert(!(value == other), "different int: 2147483650 0");
    assertEqual(true, true);
}
        
void test_int_16() {
    int value = 2147483651;
    int copy = 2147483651;
    int other = 1;
    assert(value == copy, "equals int: 2147483651");
    assert(!(value == other), "different int: 2147483651 1");
    assertEqual(true, true);
}
        
void test_int_17() {
    int value = 4294967293;
    int copy = 4294967293;
    int other = 2;
    assert(value == copy, "equals int: 4294967293");
    assert(!(value == other), "different int: 4294967293 2");
    assertEqual(true, true);
}
        
void test_int_18() {
    int value = 4294967294;
    int copy = 4294967294;
    int other = 3;
    assert(value == copy, "equals int: 4294967294");
    assert(!(value == other), "different int: 4294967294 3");
    assertEqual(true, true);
}
        
void test_int_19() {
    int value = 4294967295;
    int copy = 4294967295;
    int other = 2147483645;
    assert(value == copy, "equals int: 4294967295");
    assert(!(value == other), "different int: 4294967295 2147483645");
    assertEqual(true, true);
}
        
void test_int_20() {
    int value = 4294967296;
    int copy = 4294967296;
    int other = 2147483646;
    assert(value == copy, "equals int: 4294967296");
    assert(!(value == other), "different int: 4294967296 2147483646");
    assertEqual(true, true);
}
        