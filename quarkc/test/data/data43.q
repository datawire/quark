
void test_Map_Scalar_bool__421() {
    
    Map<Scalar,bool> value = {};
    
    Map<Scalar,bool> copy = {};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    bool other_vtmp0 = true;
    Map<Scalar,bool> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,bool>: {}");
    assert(!(value == other), "different Map<Scalar,bool>: {} {<__main__.Scalar object at 0x7f9dce0f0810>: true}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_bool__422() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    bool value_vtmp0 = true;
    Map<Scalar,bool> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    bool copy_vtmp0 = true;
    Map<Scalar,bool> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(2147483645).asScalar();
    bool other_vtmp0 = false;
    Scalar other_ktmp1 = unsafe(-0.0).asScalar();
    bool other_vtmp1 = true;
    Map<Scalar,bool> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,bool>: {<__main__.Scalar object at 0x7f9dce0f0810>: true}");
    assert(!(value == other), "different Map<Scalar,bool>: {<__main__.Scalar object at 0x7f9dce0f0810>: true} {<__main__.Scalar object at 0x7f9dce0f0850>: false, <__main__.Scalar object at 0x7f9dce0f0890>: true}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_bool__423() {
    Scalar value_ktmp0 = unsafe(2147483645).asScalar();
    bool value_vtmp0 = false;
    Scalar value_ktmp1 = unsafe(-0.0).asScalar();
    bool value_vtmp1 = true;
    Map<Scalar,bool> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(2147483645).asScalar();
    bool copy_vtmp0 = false;
    Scalar copy_ktmp1 = unsafe(-0.0).asScalar();
    bool copy_vtmp1 = true;
    Map<Scalar,bool> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,bool> other = {};
    assert(value == copy, "equals Map<Scalar,bool>: {<__main__.Scalar object at 0x7f9dce0f0850>: false, <__main__.Scalar object at 0x7f9dce0f0890>: true}");
    assert(!(value == other), "different Map<Scalar,bool>: {<__main__.Scalar object at 0x7f9dce0f0850>: false, <__main__.Scalar object at 0x7f9dce0f0890>: true} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_bool__424() {
    
    Map<Scalar,bool> value = {};
    
    Map<Scalar,bool> copy = {};
    Scalar other_ktmp0 = unsafe("").asScalar();
    bool other_vtmp0 = true;
    Map<Scalar,bool> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,bool>: {}");
    assert(!(value == other), "different Map<Scalar,bool>: {} {<__main__.Scalar object at 0x7f9dce0f08d0>: true}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_bool__425() {
    Scalar value_ktmp0 = unsafe("").asScalar();
    bool value_vtmp0 = true;
    Map<Scalar,bool> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe("").asScalar();
    bool copy_vtmp0 = true;
    Map<Scalar,bool> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(true).asScalar();
    bool other_vtmp0 = false;
    Scalar other_ktmp1 = unsafe(true).asScalar();
    bool other_vtmp1 = true;
    Map<Scalar,bool> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,bool>: {<__main__.Scalar object at 0x7f9dce0f08d0>: true}");
    assert(!(value == other), "different Map<Scalar,bool>: {<__main__.Scalar object at 0x7f9dce0f08d0>: true} {<__main__.Scalar object at 0x7f9dce0f0910>: false, <__main__.Scalar object at 0x7f9dce0e4f90>: true}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_bool__426() {
    Scalar value_ktmp0 = unsafe(true).asScalar();
    bool value_vtmp0 = false;
    Scalar value_ktmp1 = unsafe(true).asScalar();
    bool value_vtmp1 = true;
    Map<Scalar,bool> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(true).asScalar();
    bool copy_vtmp0 = false;
    Scalar copy_ktmp1 = unsafe(true).asScalar();
    bool copy_vtmp1 = true;
    Map<Scalar,bool> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,bool> other = {};
    assert(value == copy, "equals Map<Scalar,bool>: {<__main__.Scalar object at 0x7f9dce0f0910>: false, <__main__.Scalar object at 0x7f9dce0e4f90>: true}");
    assert(!(value == other), "different Map<Scalar,bool>: {<__main__.Scalar object at 0x7f9dce0f0910>: false, <__main__.Scalar object at 0x7f9dce0e4f90>: true} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_int__427() {
    
    Map<Scalar,int> value = {};
    
    Map<Scalar,int> copy = {};
    Scalar other_ktmp0 = unsafe("").asScalar();
    int other_vtmp0 = 2147483650;
    Map<Scalar,int> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,int>: {}");
    assert(!(value == other), "different Map<Scalar,int>: {} {<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_int__428() {
    Scalar value_ktmp0 = unsafe("").asScalar();
    int value_vtmp0 = 2147483650;
    Map<Scalar,int> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe("").asScalar();
    int copy_vtmp0 = 2147483650;
    Map<Scalar,int> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(true).asScalar();
    int other_vtmp0 = 2147483651;
    Scalar other_ktmp1 = unsafe(true).asScalar();
    int other_vtmp1 = 4294967293;
    Map<Scalar,int> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,int>: {<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}");
    assert(!(value == other), "different Map<Scalar,int>: {<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650} {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_int__429() {
    Scalar value_ktmp0 = unsafe(true).asScalar();
    int value_vtmp0 = 2147483651;
    Scalar value_ktmp1 = unsafe(true).asScalar();
    int value_vtmp1 = 4294967293;
    Map<Scalar,int> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(true).asScalar();
    int copy_vtmp0 = 2147483651;
    Scalar copy_ktmp1 = unsafe(true).asScalar();
    int copy_vtmp1 = 4294967293;
    Map<Scalar,int> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,int> other = {};
    assert(value == copy, "equals Map<Scalar,int>: {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}");
    assert(!(value == other), "different Map<Scalar,int>: {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_int__430() {
    
    Map<Scalar,int> value = {};
    
    Map<Scalar,int> copy = {};
    Scalar other_ktmp0 = unsafe(-3).asScalar();
    int other_vtmp0 = 2147483647;
    Map<Scalar,int> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,int>: {}");
    assert(!(value == other), "different Map<Scalar,int>: {} {<__main__.Scalar object at 0x7f9dce0e44d0>: 2147483647}");
    assertEqual(true, true);
}
        