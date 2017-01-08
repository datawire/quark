
void test_bool_1() {
    bool value = true;
    bool copy = true;
    bool other = false;
    assert(value == copy, "equals bool: true");
    assert(!(value == other), "different bool: true false");
    assertEqual(true, true);
}
        
void test_bool_2() {
    bool value = false;
    bool copy = false;
    bool other = true;
    assert(value == copy, "equals bool: false");
    assert(!(value == other), "different bool: false true");
    assertEqual(true, true);
}
        
void test_int_3() {
    int value = -3;
    int copy = -3;
    int other = 2147483650;
    assert(value == copy, "equals int: -3");
    assert(!(value == other), "different int: -3 2147483650");
    assertEqual(true, true);
}
        
void test_int_4() {
    int value = -2;
    int copy = -2;
    int other = 2147483651;
    assert(value == copy, "equals int: -2");
    assert(!(value == other), "different int: -2 2147483651");
    assertEqual(true, true);
}
        
void test_int_5() {
    int value = -1;
    int copy = -1;
    int other = 4294967293;
    assert(value == copy, "equals int: -1");
    assert(!(value == other), "different int: -1 4294967293");
    assertEqual(true, true);
}
        
void test_int_6() {
    int value = 0;
    int copy = 0;
    int other = 4294967294;
    assert(value == copy, "equals int: 0");
    assert(!(value == other), "different int: 0 4294967294");
    assertEqual(true, true);
}
        
void test_int_7() {
    int value = 1;
    int copy = 1;
    int other = 4294967295;
    assert(value == copy, "equals int: 1");
    assert(!(value == other), "different int: 1 4294967295");
    assertEqual(true, true);
}
        
void test_int_8() {
    int value = 2;
    int copy = 2;
    int other = 4294967296;
    assert(value == copy, "equals int: 2");
    assert(!(value == other), "different int: 2 4294967296");
    assertEqual(true, true);
}
        
void test_int_9() {
    int value = 3;
    int copy = 3;
    int other = 4294967297;
    assert(value == copy, "equals int: 3");
    assert(!(value == other), "different int: 3 4294967297");
    assertEqual(true, true);
}
        
void test_int_10() {
    int value = 2147483645;
    int copy = 2147483645;
    int other = 4294967298;
    assert(value == copy, "equals int: 2147483645");
    assert(!(value == other), "different int: 2147483645 4294967298");
    assertEqual(true, true);
}
        