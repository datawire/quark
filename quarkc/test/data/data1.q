
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
        
void test_int_21() {
    int value = 4294967297;
    int copy = 4294967297;
    int other = 2147483647;
    assert(value == copy, "equals int: 4294967297");
    assert(!(value == other), "different int: 4294967297 2147483647");
    assertEqual(true, true);
}
        
void test_int_22() {
    int value = 4294967298;
    int copy = 4294967298;
    int other = 2147483648;
    assert(value == copy, "equals int: 4294967298");
    assert(!(value == other), "different int: 4294967298 2147483648");
    assertEqual(true, true);
}
        
void test_int_23() {
    int value = 4294967299;
    int copy = 4294967299;
    int other = 2147483649;
    assert(value == copy, "equals int: 4294967299");
    assert(!(value == other), "different int: 4294967299 2147483649");
    assertEqual(true, true);
}
        
void test_float_24() {
    float value = 0.0;
    float copy = 0.0;
    float other = 3.14;
    assert(value == copy, "equals float: 0.0");
    assert(!(value == other), "different float: 0.0 3.14");
    assertEqual(true, true);
}
        
void test_float_25() {
    float value = -0.0;
    float copy = -0.0;
    float other = 3.14;
    assert(value == copy, "equals float: -0.0");
    assert(!(value == other), "different float: -0.0 3.14");
    assertEqual(true, true);
}
        
void test_float_26() {
    float value = 3.14;
    float copy = 3.14;
    float other = 0.0;
    assert(value == copy, "equals float: 3.14");
    assert(!(value == other), "different float: 3.14 0.0");
    assertEqual(true, true);
}
        
void test_String_27() {
    String value = "";
    String copy = "";
    String other = "\n";
    assert(value == copy, "equals String: \"\"");
    assert(!(value == other), "different String: \"\" \"\n\"");
    assertEqual(true, true);
}
        
void test_String_28() {
    String value = "Hello World!";
    String copy = "Hello World!";
    String other = "asdf\n";
    assert(value == copy, "equals String: \"Hello World!\"");
    assert(!(value == other), "different String: \"Hello World!\" \"asdf\n\"");
    assertEqual(true, true);
}
        
void test_String_29() {
    String value = "pi";
    String copy = "pi";
    String other = "";
    assert(value == copy, "equals String: \"pi\"");
    assert(!(value == other), "different String: \"pi\" \"\"");
    assertEqual(true, true);
}
        
void test_String_30() {
    String value = "pie";
    String copy = "pie";
    String other = "Hello World!";
    assert(value == copy, "equals String: \"pie\"");
    assert(!(value == other), "different String: \"pie\" \"Hello World!\"");
    assertEqual(true, true);
}
        
void test_String_31() {
    String value = " ";
    String copy = " ";
    String other = "pi";
    assert(value == copy, "equals String: \" \"");
    assert(!(value == other), "different String: \" \" \"pi\"");
    assertEqual(true, true);
}
        
void test_String_32() {
    String value = "\n";
    String copy = "\n";
    String other = "pie";
    assert(value == copy, "equals String: \"\n\"");
    assert(!(value == other), "different String: \"\n\" \"pie\"");
    assertEqual(true, true);
}
        
void test_String_33() {
    String value = "asdf\n";
    String copy = "asdf\n";
    String other = " ";
    assert(value == copy, "equals String: \"asdf\n\"");
    assert(!(value == other), "different String: \"asdf\n\" \" \"");
    assertEqual(true, true);
}
        
void test_Scalar_34() {
    Scalar value = unsafe(true).asScalar();
    Scalar copy = unsafe(true).asScalar();
    Scalar other = unsafe(false).asScalar();
    assert(value == copy, "equals Scalar: unsafe(true).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(true).asScalar() unsafe(false).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_35() {
    Scalar value = unsafe(-3).asScalar();
    Scalar copy = unsafe(-3).asScalar();
    Scalar other = unsafe(2147483645).asScalar();
    assert(value == copy, "equals Scalar: unsafe(-3).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(-3).asScalar() unsafe(2147483645).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_36() {
    Scalar value = unsafe(0.0).asScalar();
    Scalar copy = unsafe(0.0).asScalar();
    Scalar other = unsafe("").asScalar();
    assert(value == copy, "equals Scalar: unsafe(0.0).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(0.0).asScalar() unsafe(\"\").asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_37() {
    Scalar value = unsafe("").asScalar();
    Scalar copy = unsafe("").asScalar();
    Scalar other = unsafe(true).asScalar();
    assert(value == copy, "equals Scalar: unsafe(\"\").asScalar()");
    assert(!(value == other), "different Scalar: unsafe(\"\").asScalar() unsafe(true).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_38() {
    Scalar value = unsafe(false).asScalar();
    Scalar copy = unsafe(false).asScalar();
    Scalar other = unsafe(true).asScalar();
    assert(value == copy, "equals Scalar: unsafe(false).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(false).asScalar() unsafe(true).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_39() {
    Scalar value = unsafe(-2).asScalar();
    Scalar copy = unsafe(-2).asScalar();
    Scalar other = unsafe(-3).asScalar();
    assert(value == copy, "equals Scalar: unsafe(-2).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(-2).asScalar() unsafe(-3).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_40() {
    Scalar value = unsafe(-0.0).asScalar();
    Scalar copy = unsafe(-0.0).asScalar();
    Scalar other = unsafe("").asScalar();
    assert(value == copy, "equals Scalar: unsafe(-0.0).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(-0.0).asScalar() unsafe(\"\").asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_41() {
    Scalar value = unsafe("Hello World!").asScalar();
    Scalar copy = unsafe("Hello World!").asScalar();
    Scalar other = unsafe(false).asScalar();
    assert(value == copy, "equals Scalar: unsafe(\"Hello World!\").asScalar()");
    assert(!(value == other), "different Scalar: unsafe(\"Hello World!\").asScalar() unsafe(false).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_42() {
    Scalar value = unsafe(true).asScalar();
    Scalar copy = unsafe(true).asScalar();
    Scalar other = unsafe(-2).asScalar();
    assert(value == copy, "equals Scalar: unsafe(true).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(true).asScalar() unsafe(-2).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_43() {
    Scalar value = unsafe(-1).asScalar();
    Scalar copy = unsafe(-1).asScalar();
    Scalar other = unsafe(-0.0).asScalar();
    assert(value == copy, "equals Scalar: unsafe(-1).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(-1).asScalar() unsafe(-0.0).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_44() {
    Scalar value = unsafe(3.14).asScalar();
    Scalar copy = unsafe(3.14).asScalar();
    Scalar other = unsafe("Hello World!").asScalar();
    assert(value == copy, "equals Scalar: unsafe(3.14).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(3.14).asScalar() unsafe(\"Hello World!\").asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_45() {
    Scalar value = unsafe("pi").asScalar();
    Scalar copy = unsafe("pi").asScalar();
    Scalar other = unsafe(true).asScalar();
    assert(value == copy, "equals Scalar: unsafe(\"pi\").asScalar()");
    assert(!(value == other), "different Scalar: unsafe(\"pi\").asScalar() unsafe(true).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_46() {
    Scalar value = unsafe(false).asScalar();
    Scalar copy = unsafe(false).asScalar();
    Scalar other = unsafe(-1).asScalar();
    assert(value == copy, "equals Scalar: unsafe(false).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(false).asScalar() unsafe(-1).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_47() {
    Scalar value = unsafe(0).asScalar();
    Scalar copy = unsafe(0).asScalar();
    Scalar other = unsafe(3.14).asScalar();
    assert(value == copy, "equals Scalar: unsafe(0).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(0).asScalar() unsafe(3.14).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_48() {
    Scalar value = unsafe(0.0).asScalar();
    Scalar copy = unsafe(0.0).asScalar();
    Scalar other = unsafe("pi").asScalar();
    assert(value == copy, "equals Scalar: unsafe(0.0).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(0.0).asScalar() unsafe(\"pi\").asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_49() {
    Scalar value = unsafe("pie").asScalar();
    Scalar copy = unsafe("pie").asScalar();
    Scalar other = unsafe(false).asScalar();
    assert(value == copy, "equals Scalar: unsafe(\"pie\").asScalar()");
    assert(!(value == other), "different Scalar: unsafe(\"pie\").asScalar() unsafe(false).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_50() {
    Scalar value = unsafe(true).asScalar();
    Scalar copy = unsafe(true).asScalar();
    Scalar other = unsafe(0).asScalar();
    assert(value == copy, "equals Scalar: unsafe(true).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(true).asScalar() unsafe(0).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_51() {
    Scalar value = unsafe(1).asScalar();
    Scalar copy = unsafe(1).asScalar();
    Scalar other = unsafe(0.0).asScalar();
    assert(value == copy, "equals Scalar: unsafe(1).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(1).asScalar() unsafe(0.0).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_52() {
    Scalar value = unsafe(-0.0).asScalar();
    Scalar copy = unsafe(-0.0).asScalar();
    Scalar other = unsafe("pie").asScalar();
    assert(value == copy, "equals Scalar: unsafe(-0.0).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(-0.0).asScalar() unsafe(\"pie\").asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_53() {
    Scalar value = unsafe(" ").asScalar();
    Scalar copy = unsafe(" ").asScalar();
    Scalar other = unsafe(true).asScalar();
    assert(value == copy, "equals Scalar: unsafe(\" \").asScalar()");
    assert(!(value == other), "different Scalar: unsafe(\" \").asScalar() unsafe(true).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_54() {
    Scalar value = unsafe(false).asScalar();
    Scalar copy = unsafe(false).asScalar();
    Scalar other = unsafe(1).asScalar();
    assert(value == copy, "equals Scalar: unsafe(false).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(false).asScalar() unsafe(1).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_55() {
    Scalar value = unsafe(2).asScalar();
    Scalar copy = unsafe(2).asScalar();
    Scalar other = unsafe(-0.0).asScalar();
    assert(value == copy, "equals Scalar: unsafe(2).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(2).asScalar() unsafe(-0.0).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_56() {
    Scalar value = unsafe(3.14).asScalar();
    Scalar copy = unsafe(3.14).asScalar();
    Scalar other = unsafe(" ").asScalar();
    assert(value == copy, "equals Scalar: unsafe(3.14).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(3.14).asScalar() unsafe(\" \").asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_57() {
    Scalar value = unsafe("\n").asScalar();
    Scalar copy = unsafe("\n").asScalar();
    Scalar other = unsafe(false).asScalar();
    assert(value == copy, "equals Scalar: unsafe(\"\n\").asScalar()");
    assert(!(value == other), "different Scalar: unsafe(\"\n\").asScalar() unsafe(false).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_58() {
    Scalar value = unsafe(true).asScalar();
    Scalar copy = unsafe(true).asScalar();
    Scalar other = unsafe(2).asScalar();
    assert(value == copy, "equals Scalar: unsafe(true).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(true).asScalar() unsafe(2).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_59() {
    Scalar value = unsafe(3).asScalar();
    Scalar copy = unsafe(3).asScalar();
    Scalar other = unsafe(3.14).asScalar();
    assert(value == copy, "equals Scalar: unsafe(3).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(3).asScalar() unsafe(3.14).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_60() {
    Scalar value = unsafe(0.0).asScalar();
    Scalar copy = unsafe(0.0).asScalar();
    Scalar other = unsafe("\n").asScalar();
    assert(value == copy, "equals Scalar: unsafe(0.0).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(0.0).asScalar() unsafe(\"\n\").asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_61() {
    Scalar value = unsafe("asdf\n").asScalar();
    Scalar copy = unsafe("asdf\n").asScalar();
    Scalar other = unsafe(true).asScalar();
    assert(value == copy, "equals Scalar: unsafe(\"asdf\n\").asScalar()");
    assert(!(value == other), "different Scalar: unsafe(\"asdf\n\").asScalar() unsafe(true).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_62() {
    Scalar value = unsafe(false).asScalar();
    Scalar copy = unsafe(false).asScalar();
    Scalar other = unsafe(3).asScalar();
    assert(value == copy, "equals Scalar: unsafe(false).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(false).asScalar() unsafe(3).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_63() {
    Scalar value = unsafe(2147483645).asScalar();
    Scalar copy = unsafe(2147483645).asScalar();
    Scalar other = unsafe(0.0).asScalar();
    assert(value == copy, "equals Scalar: unsafe(2147483645).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(2147483645).asScalar() unsafe(0.0).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_64() {
    Scalar value = unsafe(-0.0).asScalar();
    Scalar copy = unsafe(-0.0).asScalar();
    Scalar other = unsafe("asdf\n").asScalar();
    assert(value == copy, "equals Scalar: unsafe(-0.0).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(-0.0).asScalar() unsafe(\"asdf\n\").asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_65() {
    Scalar value = unsafe("").asScalar();
    Scalar copy = unsafe("").asScalar();
    Scalar other = unsafe(false).asScalar();
    assert(value == copy, "equals Scalar: unsafe(\"\").asScalar()");
    assert(!(value == other), "different Scalar: unsafe(\"\").asScalar() unsafe(false).asScalar()");
    assertEqual(true, true);
}
        
void test_Scalar_66() {
    Scalar value = unsafe(true).asScalar();
    Scalar copy = unsafe(true).asScalar();
    Scalar other = unsafe(2147483645).asScalar();
    assert(value == copy, "equals Scalar: unsafe(true).asScalar()");
    assert(!(value == other), "different Scalar: unsafe(true).asScalar() unsafe(2147483645).asScalar()");
    assertEqual(true, true);
}
        
void test_Any_67() {
    bool value_tmp = false;
    Any value = unsafe(value_tmp);
    bool copy_tmp = false;
    Any copy = unsafe(copy_tmp);
    int other_tmp = 4294967294;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(false)");
    assert(!(value == other), "different Any: unsafe(false) unsafe(4294967294)");
    assertEqual(true, true);
}
        
void test_Any_68() {
    int value_tmp = 2147483646;
    Any value = unsafe(value_tmp);
    int copy_tmp = 2147483646;
    Any copy = unsafe(copy_tmp);
    float other_tmp = 0.0;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(2147483646)");
    assert(!(value == other), "different Any: unsafe(2147483646) unsafe(0.0)");
    assertEqual(true, true);
}
        
void test_Any_69() {
    float value_tmp = 3.14;
    Any value = unsafe(value_tmp);
    float copy_tmp = 3.14;
    Any copy = unsafe(copy_tmp);
    String other_tmp = "Hello World!";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(3.14)");
    assert(!(value == other), "different Any: unsafe(3.14) unsafe(\"Hello World!\")");
    assertEqual(true, true);
}
        
void test_Any_70() {
    String value_tmp = "Hello World!";
    Any value = unsafe(value_tmp);
    String copy_tmp = "Hello World!";
    Any copy = unsafe(copy_tmp);
    bool other_tmp = false;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"Hello World!\")");
    assert(!(value == other), "different Any: unsafe(\"Hello World!\") unsafe(false)");
    assertEqual(true, true);
}
        
void test_Any_71() {
    bool value_tmp = true;
    Any value = unsafe(value_tmp);
    bool copy_tmp = true;
    Any copy = unsafe(copy_tmp);
    int other_tmp = 4294967295;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(true)");
    assert(!(value == other), "different Any: unsafe(true) unsafe(4294967295)");
    assertEqual(true, true);
}
        
void test_Any_72() {
    bool value_tmp = true;
    Any value = unsafe(value_tmp);
    bool copy_tmp = true;
    Any copy = unsafe(copy_tmp);
    float other_tmp = -0.0;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(true)");
    assert(!(value == other), "different Any: unsafe(true) unsafe(-0.0)");
    assertEqual(true, true);
}
        
void test_Any_73() {
    int value_tmp = 2147483647;
    Any value = unsafe(value_tmp);
    int copy_tmp = 2147483647;
    Any copy = unsafe(copy_tmp);
    String other_tmp = "pi";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(2147483647)");
    assert(!(value == other), "different Any: unsafe(2147483647) unsafe(\"pi\")");
    assertEqual(true, true);
}
        
void test_Any_74() {
    float value_tmp = 0.0;
    Any value = unsafe(value_tmp);
    float copy_tmp = 0.0;
    Any copy = unsafe(copy_tmp);
    bool other_tmp = true;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(0.0)");
    assert(!(value == other), "different Any: unsafe(0.0) unsafe(true)");
    assertEqual(true, true);
}
        
void test_Any_75() {
    String value_tmp = "pi";
    Any value = unsafe(value_tmp);
    String copy_tmp = "pi";
    Any copy = unsafe(copy_tmp);
    bool other_tmp = true;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"pi\")");
    assert(!(value == other), "different Any: unsafe(\"pi\") unsafe(true)");
    assertEqual(true, true);
}
        
void test_Any_76() {
    int value_tmp = -3;
    Any value = unsafe(value_tmp);
    int copy_tmp = -3;
    Any copy = unsafe(copy_tmp);
    int other_tmp = 4294967296;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(-3)");
    assert(!(value == other), "different Any: unsafe(-3) unsafe(4294967296)");
    assertEqual(true, true);
}
        
void test_Any_77() {
    bool value_tmp = false;
    Any value = unsafe(value_tmp);
    bool copy_tmp = false;
    Any copy = unsafe(copy_tmp);
    float other_tmp = 3.14;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(false)");
    assert(!(value == other), "different Any: unsafe(false) unsafe(3.14)");
    assertEqual(true, true);
}
        
void test_Any_78() {
    int value_tmp = 2147483648;
    Any value = unsafe(value_tmp);
    int copy_tmp = 2147483648;
    Any copy = unsafe(copy_tmp);
    String other_tmp = "pie";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(2147483648)");
    assert(!(value == other), "different Any: unsafe(2147483648) unsafe(\"pie\")");
    assertEqual(true, true);
}
        
void test_Any_79() {
    float value_tmp = -0.0;
    Any value = unsafe(value_tmp);
    float copy_tmp = -0.0;
    Any copy = unsafe(copy_tmp);
    int other_tmp = -1;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(-0.0)");
    assert(!(value == other), "different Any: unsafe(-0.0) unsafe(-1)");
    assertEqual(true, true);
}
        
void test_Any_80() {
    String value_tmp = "pie";
    Any value = unsafe(value_tmp);
    String copy_tmp = "pie";
    Any copy = unsafe(copy_tmp);
    bool other_tmp = false;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"pie\")");
    assert(!(value == other), "different Any: unsafe(\"pie\") unsafe(false)");
    assertEqual(true, true);
}
        
void test_Any_81() {
    float value_tmp = 0.0;
    Any value = unsafe(value_tmp);
    float copy_tmp = 0.0;
    Any copy = unsafe(copy_tmp);
    int other_tmp = 4294967297;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(0.0)");
    assert(!(value == other), "different Any: unsafe(0.0) unsafe(4294967297)");
    assertEqual(true, true);
}
        
void test_Any_82() {
    bool value_tmp = true;
    Any value = unsafe(value_tmp);
    bool copy_tmp = true;
    Any copy = unsafe(copy_tmp);
    float other_tmp = 0.0;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(true)");
    assert(!(value == other), "different Any: unsafe(true) unsafe(0.0)");
    assertEqual(true, true);
}
        
void test_Any_83() {
    int value_tmp = 2147483649;
    Any value = unsafe(value_tmp);
    int copy_tmp = 2147483649;
    Any copy = unsafe(copy_tmp);
    String other_tmp = " ";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(2147483649)");
    assert(!(value == other), "different Any: unsafe(2147483649) unsafe(\" \")");
    assertEqual(true, true);
}
        
void test_Any_84() {
    float value_tmp = 3.14;
    Any value = unsafe(value_tmp);
    float copy_tmp = 3.14;
    Any copy = unsafe(copy_tmp);
    bool other_tmp = true;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(3.14)");
    assert(!(value == other), "different Any: unsafe(3.14) unsafe(true)");
    assertEqual(true, true);
}
        
void test_Any_85() {
    String value_tmp = " ";
    Any value = unsafe(value_tmp);
    String copy_tmp = " ";
    Any copy = unsafe(copy_tmp);
    int other_tmp = 4294967298;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\" \")");
    assert(!(value == other), "different Any: unsafe(\" \") unsafe(4294967298)");
    assertEqual(true, true);
}
        
void test_Any_86() {
    String value_tmp = "";
    Any value = unsafe(value_tmp);
    String copy_tmp = "";
    Any copy = unsafe(copy_tmp);
    float other_tmp = -0.0;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"\")");
    assert(!(value == other), "different Any: unsafe(\"\") unsafe(-0.0)");
    assertEqual(true, true);
}
        
void test_Any_87() {
    bool value_tmp = false;
    Any value = unsafe(value_tmp);
    bool copy_tmp = false;
    Any copy = unsafe(copy_tmp);
    String other_tmp = "\n";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(false)");
    assert(!(value == other), "different Any: unsafe(false) unsafe(\"\n\")");
    assertEqual(true, true);
}
        
void test_Any_88() {
    int value_tmp = 2147483650;
    Any value = unsafe(value_tmp);
    int copy_tmp = 2147483650;
    Any copy = unsafe(copy_tmp);
    String other_tmp = "pi";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(2147483650)");
    assert(!(value == other), "different Any: unsafe(2147483650) unsafe(\"pi\")");
    assertEqual(true, true);
}
        
void test_Any_89() {
    float value_tmp = 0.0;
    Any value = unsafe(value_tmp);
    float copy_tmp = 0.0;
    Any copy = unsafe(copy_tmp);
    bool other_tmp = false;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(0.0)");
    assert(!(value == other), "different Any: unsafe(0.0) unsafe(false)");
    assertEqual(true, true);
}
        
void test_Any_90() {
    String value_tmp = "\n";
    Any value = unsafe(value_tmp);
    String copy_tmp = "\n";
    Any copy = unsafe(copy_tmp);
    int other_tmp = 4294967299;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"\n\")");
    assert(!(value == other), "different Any: unsafe(\"\n\") unsafe(4294967299)");
    assertEqual(true, true);
}
        
void test_Any_91() {
    bool value_tmp = false;
    Any value = unsafe(value_tmp);
    bool copy_tmp = false;
    Any copy = unsafe(copy_tmp);
    float other_tmp = 3.14;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(false)");
    assert(!(value == other), "different Any: unsafe(false) unsafe(3.14)");
    assertEqual(true, true);
}
        
void test_Any_92() {
    bool value_tmp = true;
    Any value = unsafe(value_tmp);
    bool copy_tmp = true;
    Any copy = unsafe(copy_tmp);
    String other_tmp = "asdf\n";
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(true)");
    assert(!(value == other), "different Any: unsafe(true) unsafe(\"asdf\n\")");
    assertEqual(true, true);
}
        
void test_Any_93() {
    int value_tmp = 2147483651;
    Any value = unsafe(value_tmp);
    int copy_tmp = 2147483651;
    Any copy = unsafe(copy_tmp);
    bool other_tmp = false;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(2147483651)");
    assert(!(value == other), "different Any: unsafe(2147483651) unsafe(false)");
    assertEqual(true, true);
}
        
void test_Any_94() {
    float value_tmp = -0.0;
    Any value = unsafe(value_tmp);
    float copy_tmp = -0.0;
    Any copy = unsafe(copy_tmp);
    bool other_tmp = true;
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(-0.0)");
    assert(!(value == other), "different Any: unsafe(-0.0) unsafe(true)");
    assertEqual(true, true);
}
        
void test_Any_95() {
    String value_tmp = "asdf\n";
    Any value = unsafe(value_tmp);
    String copy_tmp = "asdf\n";
    Any copy = unsafe(copy_tmp);
    
    List<bool> other_tmp = [];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"asdf\n\")");
    assert(!(value == other), "different Any: unsafe(\"asdf\n\") unsafe([])");
    assertEqual(true, true);
}
        
void test_Any_96() {
    int value_tmp = -2;
    Any value = unsafe(value_tmp);
    int copy_tmp = -2;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_tmp0 = false;
    List<bool> other_tmp = [other_tmp_tmp0];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(-2)");
    assert(!(value == other), "different Any: unsafe(-2) unsafe([false])");
    assertEqual(true, true);
}
        
void test_Any_97() {
    bool value_tmp = false;
    Any value = unsafe(value_tmp);
    bool copy_tmp = false;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_tmp0 = true;
    bool other_tmp_tmp1 = false;
    List<bool> other_tmp = [other_tmp_tmp0, other_tmp_tmp1];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(false)");
    assert(!(value == other), "different Any: unsafe(false) unsafe([true, false])");
    assertEqual(true, true);
}
        
void test_Any_98() {
    int value_tmp = 4294967293;
    Any value = unsafe(value_tmp);
    int copy_tmp = 4294967293;
    Any copy = unsafe(copy_tmp);
    
    List<int> other_tmp = [];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(4294967293)");
    assert(!(value == other), "different Any: unsafe(4294967293) unsafe([])");
    assertEqual(true, true);
}
        
void test_Any_99() {
    float value_tmp = 3.14;
    Any value = unsafe(value_tmp);
    float copy_tmp = 3.14;
    Any copy = unsafe(copy_tmp);
    int other_tmp_tmp0 = -3;
    List<int> other_tmp = [other_tmp_tmp0];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(3.14)");
    assert(!(value == other), "different Any: unsafe(3.14) unsafe([-3])");
    assertEqual(true, true);
}
        
void test_Any_100() {
    String value_tmp = "";
    Any value = unsafe(value_tmp);
    String copy_tmp = "";
    Any copy = unsafe(copy_tmp);
    int other_tmp_tmp0 = -2;
    int other_tmp_tmp1 = -1;
    List<int> other_tmp = [other_tmp_tmp0, other_tmp_tmp1];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"\")");
    assert(!(value == other), "different Any: unsafe(\"\") unsafe([-2, -1])");
    assertEqual(true, true);
}
        