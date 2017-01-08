
void test_Map_bool_Scalar__301() {
    
    Map<bool,Scalar> value = {};
    
    Map<bool,Scalar> copy = {};
    bool other_ktmp0 = false;
    Scalar other_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Scalar>: {}");
    assert(!(value == other), "different Map<bool,Scalar>: {} {false: <__main__.Scalar object at 0x7f9dce0f0510>}");
    assertEqual(true, true);
}
        
void test_Map_bool_Scalar__302() {
    bool value_ktmp0 = false;
    Scalar value_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = false;
    Scalar copy_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    Scalar other_vtmp0 = unsafe(1).asScalar();
    bool other_ktmp1 = false;
    Scalar other_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Scalar>: {false: <__main__.Scalar object at 0x7f9dce0f0510>}");
    assert(!(value == other), "different Map<bool,Scalar>: {false: <__main__.Scalar object at 0x7f9dce0f0510>} {true: <__main__.Scalar object at 0x7f9dce0f0550>, false: <__main__.Scalar object at 0x7f9dce0f0590>}");
    assertEqual(true, true);
}
        
void test_Map_bool_Scalar__303() {
    bool value_ktmp0 = true;
    Scalar value_vtmp0 = unsafe(1).asScalar();
    bool value_ktmp1 = false;
    Scalar value_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    Scalar copy_vtmp0 = unsafe(1).asScalar();
    bool copy_ktmp1 = false;
    Scalar copy_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Scalar> other = {};
    assert(value == copy, "equals Map<bool,Scalar>: {true: <__main__.Scalar object at 0x7f9dce0f0550>, false: <__main__.Scalar object at 0x7f9dce0f0590>}");
    assert(!(value == other), "different Map<bool,Scalar>: {true: <__main__.Scalar object at 0x7f9dce0f0550>, false: <__main__.Scalar object at 0x7f9dce0f0590>} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Scalar__304() {
    
    Map<bool,Scalar> value = {};
    
    Map<bool,Scalar> copy = {};
    bool other_ktmp0 = false;
    Scalar other_vtmp0 = unsafe(" ").asScalar();
    Map<bool,Scalar> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Scalar>: {}");
    assert(!(value == other), "different Map<bool,Scalar>: {} {false: <__main__.Scalar object at 0x7f9dce0f05d0>}");
    assertEqual(true, true);
}
        
void test_Map_bool_Scalar__305() {
    bool value_ktmp0 = false;
    Scalar value_vtmp0 = unsafe(" ").asScalar();
    Map<bool,Scalar> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = false;
    Scalar copy_vtmp0 = unsafe(" ").asScalar();
    Map<bool,Scalar> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    Scalar other_vtmp0 = unsafe(false).asScalar();
    bool other_ktmp1 = false;
    Scalar other_vtmp1 = unsafe(2).asScalar();
    Map<bool,Scalar> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Scalar>: {false: <__main__.Scalar object at 0x7f9dce0f05d0>}");
    assert(!(value == other), "different Map<bool,Scalar>: {false: <__main__.Scalar object at 0x7f9dce0f05d0>} {true: <__main__.Scalar object at 0x7f9dce0f0610>, false: <__main__.Scalar object at 0x7f9dce0f0650>}");
    assertEqual(true, true);
}
        
void test_Map_bool_Scalar__306() {
    bool value_ktmp0 = true;
    Scalar value_vtmp0 = unsafe(false).asScalar();
    bool value_ktmp1 = false;
    Scalar value_vtmp1 = unsafe(2).asScalar();
    Map<bool,Scalar> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    Scalar copy_vtmp0 = unsafe(false).asScalar();
    bool copy_ktmp1 = false;
    Scalar copy_vtmp1 = unsafe(2).asScalar();
    Map<bool,Scalar> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Scalar> other = {};
    assert(value == copy, "equals Map<bool,Scalar>: {true: <__main__.Scalar object at 0x7f9dce0f0610>, false: <__main__.Scalar object at 0x7f9dce0f0650>}");
    assert(!(value == other), "different Map<bool,Scalar>: {true: <__main__.Scalar object at 0x7f9dce0f0610>, false: <__main__.Scalar object at 0x7f9dce0f0650>} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Any__307() {
    
    Map<bool,Any> value = {};
    
    Map<bool,Any> copy = {};
    bool other_ktmp0 = true;
    String other_vtmp0_tmp = "Hello World!";
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    Map<bool,Any> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Any>: {}");
    assert(!(value == other), "different Map<bool,Any>: {} {true: unsafe(\"Hello World!\")}");
    assertEqual(true, true);
}
        
void test_Map_bool_Any__308() {
    bool value_ktmp0 = true;
    String value_vtmp0_tmp = "Hello World!";
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    Map<bool,Any> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    String copy_vtmp0_tmp = "Hello World!";
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    Map<bool,Any> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    bool other_vtmp0_tmp = true;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    bool other_ktmp1 = true;
    bool other_vtmp1_tmp = true;
    Any other_vtmp1 = unsafe(other_vtmp1_tmp);
    Map<bool,Any> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Any>: {true: unsafe(\"Hello World!\")}");
    assert(!(value == other), "different Map<bool,Any>: {true: unsafe(\"Hello World!\")} {false: unsafe(true), true: unsafe(true)}");
    assertEqual(true, true);
}
        
void test_Map_bool_Any__309() {
    bool value_ktmp0 = false;
    bool value_vtmp0_tmp = true;
    Any value_vtmp0 = unsafe(value_vtmp0_tmp);
    bool value_ktmp1 = true;
    bool value_vtmp1_tmp = true;
    Any value_vtmp1 = unsafe(value_vtmp1_tmp);
    Map<bool,Any> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    bool copy_vtmp0_tmp = true;
    Any copy_vtmp0 = unsafe(copy_vtmp0_tmp);
    bool copy_ktmp1 = true;
    bool copy_vtmp1_tmp = true;
    Any copy_vtmp1 = unsafe(copy_vtmp1_tmp);
    Map<bool,Any> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Any> other = {};
    assert(value == copy, "equals Map<bool,Any>: {false: unsafe(true), true: unsafe(true)}");
    assert(!(value == other), "different Map<bool,Any>: {false: unsafe(true), true: unsafe(true)} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Any__310() {
    
    Map<bool,Any> value = {};
    
    Map<bool,Any> copy = {};
    bool other_ktmp0 = true;
    int other_vtmp0_tmp = 2147483650;
    Any other_vtmp0 = unsafe(other_vtmp0_tmp);
    Map<bool,Any> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Any>: {}");
    assert(!(value == other), "different Map<bool,Any>: {} {true: unsafe(2147483650)}");
    assertEqual(true, true);
}
        