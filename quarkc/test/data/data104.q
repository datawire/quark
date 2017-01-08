
void test_Map_Scalar_Map_bool_Any___1031() {
    Scalar value_ktmp0 = unsafe(" ").asScalar();
    
    Map<bool,Any> value_vtmp0 = {};
    Map<Scalar,Map<bool,Any>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(" ").asScalar();
    
    Map<bool,Any> copy_vtmp0 = {};
    Map<Scalar,Map<bool,Any>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    bool other_vtmp0_ktmp0 = true;
    String other_vtmp0_vtmp0_tmp = "Hello World!";
    Any other_vtmp0_vtmp0 = unsafe(other_vtmp0_vtmp0_tmp);
    Map<bool,Any> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(2).asScalar();
    bool other_vtmp1_ktmp0 = false;
    bool other_vtmp1_vtmp0_tmp = true;
    Any other_vtmp1_vtmp0 = unsafe(other_vtmp1_vtmp0_tmp);
    bool other_vtmp1_ktmp1 = true;
    bool other_vtmp1_vtmp1_tmp = true;
    Any other_vtmp1_vtmp1 = unsafe(other_vtmp1_vtmp1_tmp);
    Map<bool,Any> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<bool,Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<bool,Any>>: {<__main__.Scalar object at 0x7f9dce0f05d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,Any>>: {<__main__.Scalar object at 0x7f9dce0f05d0>: {}} {<__main__.Scalar object at 0x7f9dce0f0610>: {true: unsafe(\"Hello World!\")}, <__main__.Scalar object at 0x7f9dce0f0650>: {false: unsafe(true), true: unsafe(true)}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_bool_Any___1032() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    bool value_vtmp0_ktmp0 = true;
    String value_vtmp0_vtmp0_tmp = "Hello World!";
    Any value_vtmp0_vtmp0 = unsafe(value_vtmp0_vtmp0_tmp);
    Map<bool,Any> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(2).asScalar();
    bool value_vtmp1_ktmp0 = false;
    bool value_vtmp1_vtmp0_tmp = true;
    Any value_vtmp1_vtmp0 = unsafe(value_vtmp1_vtmp0_tmp);
    bool value_vtmp1_ktmp1 = true;
    bool value_vtmp1_vtmp1_tmp = true;
    Any value_vtmp1_vtmp1 = unsafe(value_vtmp1_vtmp1_tmp);
    Map<bool,Any> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<bool,Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    bool copy_vtmp0_ktmp0 = true;
    String copy_vtmp0_vtmp0_tmp = "Hello World!";
    Any copy_vtmp0_vtmp0 = unsafe(copy_vtmp0_vtmp0_tmp);
    Map<bool,Any> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(2).asScalar();
    bool copy_vtmp1_ktmp0 = false;
    bool copy_vtmp1_vtmp0_tmp = true;
    Any copy_vtmp1_vtmp0 = unsafe(copy_vtmp1_vtmp0_tmp);
    bool copy_vtmp1_ktmp1 = true;
    bool copy_vtmp1_vtmp1_tmp = true;
    Any copy_vtmp1_vtmp1 = unsafe(copy_vtmp1_vtmp1_tmp);
    Map<bool,Any> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<bool,Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<bool,Any>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<bool,Any>>: {<__main__.Scalar object at 0x7f9dce0f0610>: {true: unsafe(\"Hello World!\")}, <__main__.Scalar object at 0x7f9dce0f0650>: {false: unsafe(true), true: unsafe(true)}}");
    assert(!(value == other), "different Map<Scalar,Map<bool,Any>>: {<__main__.Scalar object at 0x7f9dce0f0610>: {true: unsafe(\"Hello World!\")}, <__main__.Scalar object at 0x7f9dce0f0650>: {false: unsafe(true), true: unsafe(true)}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_bool___1033() {
    
    Map<Scalar,Map<int,bool>> value = {};
    
    Map<Scalar,Map<int,bool>> copy = {};
    Scalar other_ktmp0 = unsafe(3.14).asScalar();
    
    Map<int,bool> other_vtmp0 = {};
    Map<Scalar,Map<int,bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<int,bool>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<int,bool>>: {} {<__main__.Scalar object at 0x7f9dce0f0690>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_bool___1034() {
    Scalar value_ktmp0 = unsafe(3.14).asScalar();
    
    Map<int,bool> value_vtmp0 = {};
    Map<Scalar,Map<int,bool>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3.14).asScalar();
    
    Map<int,bool> copy_vtmp0 = {};
    Map<Scalar,Map<int,bool>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe("\n").asScalar();
    int other_vtmp0_ktmp0 = 3;
    bool other_vtmp0_vtmp0 = false;
    Map<int,bool> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(true).asScalar();
    int other_vtmp1_ktmp0 = 2147483645;
    bool other_vtmp1_vtmp0 = true;
    int other_vtmp1_ktmp1 = 2147483646;
    bool other_vtmp1_vtmp1 = false;
    Map<int,bool> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<int,bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<int,bool>>: {<__main__.Scalar object at 0x7f9dce0f0690>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<int,bool>>: {<__main__.Scalar object at 0x7f9dce0f0690>: {}} {<__main__.Scalar object at 0x7f9dce0f06d0>: {3: false}, <__main__.Scalar object at 0x7f9dce0f0710>: {2147483645: true, 2147483646: false}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_bool___1035() {
    Scalar value_ktmp0 = unsafe("\n").asScalar();
    int value_vtmp0_ktmp0 = 3;
    bool value_vtmp0_vtmp0 = false;
    Map<int,bool> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(true).asScalar();
    int value_vtmp1_ktmp0 = 2147483645;
    bool value_vtmp1_vtmp0 = true;
    int value_vtmp1_ktmp1 = 2147483646;
    bool value_vtmp1_vtmp1 = false;
    Map<int,bool> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<int,bool>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe("\n").asScalar();
    int copy_vtmp0_ktmp0 = 3;
    bool copy_vtmp0_vtmp0 = false;
    Map<int,bool> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(true).asScalar();
    int copy_vtmp1_ktmp0 = 2147483645;
    bool copy_vtmp1_vtmp0 = true;
    int copy_vtmp1_ktmp1 = 2147483646;
    bool copy_vtmp1_vtmp1 = false;
    Map<int,bool> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<int,bool>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<int,bool>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<int,bool>>: {<__main__.Scalar object at 0x7f9dce0f06d0>: {3: false}, <__main__.Scalar object at 0x7f9dce0f0710>: {2147483645: true, 2147483646: false}}");
    assert(!(value == other), "different Map<Scalar,Map<int,bool>>: {<__main__.Scalar object at 0x7f9dce0f06d0>: {3: false}, <__main__.Scalar object at 0x7f9dce0f0710>: {2147483645: true, 2147483646: false}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_int___1036() {
    
    Map<Scalar,Map<int,int>> value = {};
    
    Map<Scalar,Map<int,int>> copy = {};
    Scalar other_ktmp0 = unsafe(3).asScalar();
    
    Map<int,int> other_vtmp0 = {};
    Map<Scalar,Map<int,int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<int,int>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<int,int>>: {} {<__main__.Scalar object at 0x7f9dce0f0750>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_int___1037() {
    Scalar value_ktmp0 = unsafe(3).asScalar();
    
    Map<int,int> value_vtmp0 = {};
    Map<Scalar,Map<int,int>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3).asScalar();
    
    Map<int,int> copy_vtmp0 = {};
    Map<Scalar,Map<int,int>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(0.0).asScalar();
    int other_vtmp0_ktmp0 = 2147483647;
    int other_vtmp0_vtmp0 = 2147483648;
    Map<int,int> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe("asdf\n").asScalar();
    int other_vtmp1_ktmp0 = 2147483649;
    int other_vtmp1_vtmp0 = 2147483651;
    int other_vtmp1_ktmp1 = 2147483650;
    int other_vtmp1_vtmp1 = 4294967293;
    Map<int,int> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<int,int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<int,int>>: {<__main__.Scalar object at 0x7f9dce0f0750>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<int,int>>: {<__main__.Scalar object at 0x7f9dce0f0750>: {}} {<__main__.Scalar object at 0x7f9dce0f0790>: {2147483647: 2147483648}, <__main__.Scalar object at 0x7f9dce0f07d0>: {2147483649: 2147483651, 2147483650: 4294967293}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_int___1038() {
    Scalar value_ktmp0 = unsafe(0.0).asScalar();
    int value_vtmp0_ktmp0 = 2147483647;
    int value_vtmp0_vtmp0 = 2147483648;
    Map<int,int> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe("asdf\n").asScalar();
    int value_vtmp1_ktmp0 = 2147483649;
    int value_vtmp1_vtmp0 = 2147483651;
    int value_vtmp1_ktmp1 = 2147483650;
    int value_vtmp1_vtmp1 = 4294967293;
    Map<int,int> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<int,int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(0.0).asScalar();
    int copy_vtmp0_ktmp0 = 2147483647;
    int copy_vtmp0_vtmp0 = 2147483648;
    Map<int,int> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe("asdf\n").asScalar();
    int copy_vtmp1_ktmp0 = 2147483649;
    int copy_vtmp1_vtmp0 = 2147483651;
    int copy_vtmp1_ktmp1 = 2147483650;
    int copy_vtmp1_vtmp1 = 4294967293;
    Map<int,int> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<int,int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<int,int>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<int,int>>: {<__main__.Scalar object at 0x7f9dce0f0790>: {2147483647: 2147483648}, <__main__.Scalar object at 0x7f9dce0f07d0>: {2147483649: 2147483651, 2147483650: 4294967293}}");
    assert(!(value == other), "different Map<Scalar,Map<int,int>>: {<__main__.Scalar object at 0x7f9dce0f0790>: {2147483647: 2147483648}, <__main__.Scalar object at 0x7f9dce0f07d0>: {2147483649: 2147483651, 2147483650: 4294967293}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_float___1039() {
    
    Map<Scalar,Map<int,float>> value = {};
    
    Map<Scalar,Map<int,float>> copy = {};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    
    Map<int,float> other_vtmp0 = {};
    Map<Scalar,Map<int,float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<int,float>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<int,float>>: {} {<__main__.Scalar object at 0x7f9dce0f0810>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_float___1040() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    
    Map<int,float> value_vtmp0 = {};
    Map<Scalar,Map<int,float>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    
    Map<int,float> copy_vtmp0 = {};
    Map<Scalar,Map<int,float>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(2147483645).asScalar();
    int other_vtmp0_ktmp0 = 4294967294;
    float other_vtmp0_vtmp0 = 0.0;
    Map<int,float> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(-0.0).asScalar();
    int other_vtmp1_ktmp0 = 4294967295;
    float other_vtmp1_vtmp0 = -0.0;
    int other_vtmp1_ktmp1 = 4294967296;
    float other_vtmp1_vtmp1 = 3.14;
    Map<int,float> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<int,float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<int,float>>: {<__main__.Scalar object at 0x7f9dce0f0810>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<int,float>>: {<__main__.Scalar object at 0x7f9dce0f0810>: {}} {<__main__.Scalar object at 0x7f9dce0f0850>: {4294967294: 0.0}, <__main__.Scalar object at 0x7f9dce0f0890>: {4294967295: -0.0, 4294967296: 3.14}}");
    assertEqual(true, true);
}
        