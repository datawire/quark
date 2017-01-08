
void test_Map_int_String__331() {
    
    Map<int,String> value = {};
    
    Map<int,String> copy = {};
    int other_ktmp0 = 4294967297;
    String other_vtmp0 = "asdf\n";
    Map<int,String> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,String>: {}");
    assert(!(value == other), "different Map<int,String>: {} {4294967297: \"asdf\n\"}");
    assertEqual(true, true);
}
        
void test_Map_int_String__332() {
    int value_ktmp0 = 4294967297;
    String value_vtmp0 = "asdf\n";
    Map<int,String> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 4294967297;
    String copy_vtmp0 = "asdf\n";
    Map<int,String> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 4294967298;
    String other_vtmp0 = "";
    int other_ktmp1 = 4294967299;
    String other_vtmp1 = "Hello World!";
    Map<int,String> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,String>: {4294967297: \"asdf\n\"}");
    assert(!(value == other), "different Map<int,String>: {4294967297: \"asdf\n\"} {4294967298: \"\", 4294967299: \"Hello World!\"}");
    assertEqual(true, true);
}
        
void test_Map_int_String__333() {
    int value_ktmp0 = 4294967298;
    String value_vtmp0 = "";
    int value_ktmp1 = 4294967299;
    String value_vtmp1 = "Hello World!";
    Map<int,String> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 4294967298;
    String copy_vtmp0 = "";
    int copy_ktmp1 = 4294967299;
    String copy_vtmp1 = "Hello World!";
    Map<int,String> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,String> other = {};
    assert(value == copy, "equals Map<int,String>: {4294967298: \"\", 4294967299: \"Hello World!\"}");
    assert(!(value == other), "different Map<int,String>: {4294967298: \"\", 4294967299: \"Hello World!\"} {}");
    assertEqual(true, true);
}
        
void test_Map_int_String__334() {
    
    Map<int,String> value = {};
    
    Map<int,String> copy = {};
    int other_ktmp0 = 2147483650;
    String other_vtmp0 = "";
    Map<int,String> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,String>: {}");
    assert(!(value == other), "different Map<int,String>: {} {2147483650: \"\"}");
    assertEqual(true, true);
}
        
void test_Map_int_String__335() {
    int value_ktmp0 = 2147483650;
    String value_vtmp0 = "";
    Map<int,String> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 2147483650;
    String copy_vtmp0 = "";
    Map<int,String> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 2147483651;
    String other_vtmp0 = "Hello World!";
    int other_ktmp1 = 4294967293;
    String other_vtmp1 = "pi";
    Map<int,String> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,String>: {2147483650: \"\"}");
    assert(!(value == other), "different Map<int,String>: {2147483650: \"\"} {2147483651: \"Hello World!\", 4294967293: \"pi\"}");
    assertEqual(true, true);
}
        
void test_Map_int_String__336() {
    int value_ktmp0 = 2147483651;
    String value_vtmp0 = "Hello World!";
    int value_ktmp1 = 4294967293;
    String value_vtmp1 = "pi";
    Map<int,String> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 2147483651;
    String copy_vtmp0 = "Hello World!";
    int copy_ktmp1 = 4294967293;
    String copy_vtmp1 = "pi";
    Map<int,String> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,String> other = {};
    assert(value == copy, "equals Map<int,String>: {2147483651: \"Hello World!\", 4294967293: \"pi\"}");
    assert(!(value == other), "different Map<int,String>: {2147483651: \"Hello World!\", 4294967293: \"pi\"} {}");
    assertEqual(true, true);
}
        
void test_Map_int_Scalar__337() {
    
    Map<int,Scalar> value = {};
    
    Map<int,Scalar> copy = {};
    int other_ktmp0 = -3;
    Scalar other_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,Scalar>: {}");
    assert(!(value == other), "different Map<int,Scalar>: {} {-3: <__main__.Scalar object at 0x7f9dce0f05d0>}");
    assertEqual(true, true);
}
        
void test_Map_int_Scalar__338() {
    int value_ktmp0 = -3;
    Scalar value_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = -3;
    Scalar copy_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = -2;
    Scalar other_vtmp0 = unsafe(false).asScalar();
    int other_ktmp1 = -1;
    Scalar other_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,Scalar>: {-3: <__main__.Scalar object at 0x7f9dce0f05d0>}");
    assert(!(value == other), "different Map<int,Scalar>: {-3: <__main__.Scalar object at 0x7f9dce0f05d0>} {-2: <__main__.Scalar object at 0x7f9dce0f0610>, -1: <__main__.Scalar object at 0x7f9dce0f0650>}");
    assertEqual(true, true);
}
        
void test_Map_int_Scalar__339() {
    int value_ktmp0 = -2;
    Scalar value_vtmp0 = unsafe(false).asScalar();
    int value_ktmp1 = -1;
    Scalar value_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = -2;
    Scalar copy_vtmp0 = unsafe(false).asScalar();
    int copy_ktmp1 = -1;
    Scalar copy_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,Scalar> other = {};
    assert(value == copy, "equals Map<int,Scalar>: {-2: <__main__.Scalar object at 0x7f9dce0f0610>, -1: <__main__.Scalar object at 0x7f9dce0f0650>}");
    assert(!(value == other), "different Map<int,Scalar>: {-2: <__main__.Scalar object at 0x7f9dce0f0610>, -1: <__main__.Scalar object at 0x7f9dce0f0650>} {}");
    assertEqual(true, true);
}
        
void test_Map_int_Scalar__340() {
    
    Map<int,Scalar> value = {};
    
    Map<int,Scalar> copy = {};
    int other_ktmp0 = 4294967294;
    Scalar other_vtmp0 = unsafe(3.14).asScalar();
    Map<int,Scalar> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,Scalar>: {}");
    assert(!(value == other), "different Map<int,Scalar>: {} {4294967294: <__main__.Scalar object at 0x7f9dce0f0690>}");
    assertEqual(true, true);
}
        