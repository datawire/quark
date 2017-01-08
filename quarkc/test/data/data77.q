
void test_Map_int_Map_String_Any___761() {
    int value_ktmp0 = 0;
    
    Map<String,Any> value_vtmp0 = {};
    Map<int,Map<String,Any>> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 0;
    
    Map<String,Any> copy_vtmp0 = {};
    Map<int,Map<String,Any>> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 1;
    String other_vtmp0_ktmp0 = "pi";
    float other_vtmp0_vtmp0_tmp = -0.0;
    Any other_vtmp0_vtmp0 = unsafe(other_vtmp0_vtmp0_tmp);
    Map<String,Any> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    int other_ktmp1 = 2;
    String other_vtmp1_ktmp0 = "pie";
    String other_vtmp1_vtmp0_tmp = "pie";
    Any other_vtmp1_vtmp0 = unsafe(other_vtmp1_vtmp0_tmp);
    String other_vtmp1_ktmp1 = " ";
    float other_vtmp1_vtmp1_tmp = 0.0;
    Any other_vtmp1_vtmp1 = unsafe(other_vtmp1_vtmp1_tmp);
    Map<String,Any> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<int,Map<String,Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,Map<String,Any>>: {0: {}}");
    assert(!(value == other), "different Map<int,Map<String,Any>>: {0: {}} {1: {\"pi\": unsafe(-0.0)}, 2: {\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)}}");
    assertEqual(true, true);
}
        
void test_Map_int_Map_String_Any___762() {
    int value_ktmp0 = 1;
    String value_vtmp0_ktmp0 = "pi";
    float value_vtmp0_vtmp0_tmp = -0.0;
    Any value_vtmp0_vtmp0 = unsafe(value_vtmp0_vtmp0_tmp);
    Map<String,Any> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    int value_ktmp1 = 2;
    String value_vtmp1_ktmp0 = "pie";
    String value_vtmp1_vtmp0_tmp = "pie";
    Any value_vtmp1_vtmp0 = unsafe(value_vtmp1_vtmp0_tmp);
    String value_vtmp1_ktmp1 = " ";
    float value_vtmp1_vtmp1_tmp = 0.0;
    Any value_vtmp1_vtmp1 = unsafe(value_vtmp1_vtmp1_tmp);
    Map<String,Any> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<int,Map<String,Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 1;
    String copy_vtmp0_ktmp0 = "pi";
    float copy_vtmp0_vtmp0_tmp = -0.0;
    Any copy_vtmp0_vtmp0 = unsafe(copy_vtmp0_vtmp0_tmp);
    Map<String,Any> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    int copy_ktmp1 = 2;
    String copy_vtmp1_ktmp0 = "pie";
    String copy_vtmp1_vtmp0_tmp = "pie";
    Any copy_vtmp1_vtmp0 = unsafe(copy_vtmp1_vtmp0_tmp);
    String copy_vtmp1_ktmp1 = " ";
    float copy_vtmp1_vtmp1_tmp = 0.0;
    Any copy_vtmp1_vtmp1 = unsafe(copy_vtmp1_vtmp1_tmp);
    Map<String,Any> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<int,Map<String,Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,Map<String,Any>> other = {};
    assert(value == copy, "equals Map<int,Map<String,Any>>: {1: {\"pi\": unsafe(-0.0)}, 2: {\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)}}");
    assert(!(value == other), "different Map<int,Map<String,Any>>: {1: {\"pi\": unsafe(-0.0)}, 2: {\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)}} {}");
    assertEqual(true, true);
}
        
void test_Map_int_Map_Scalar_bool___763() {
    
    Map<int,Map<Scalar,bool>> value = {};
    
    Map<int,Map<Scalar,bool>> copy = {};
    int other_ktmp0 = 3;
    
    Map<Scalar,bool> other_vtmp0 = {};
    Map<int,Map<Scalar,bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,Map<Scalar,bool>>: {}");
    assert(!(value == other), "different Map<int,Map<Scalar,bool>>: {} {3: {}}");
    assertEqual(true, true);
}
        
void test_Map_int_Map_Scalar_bool___764() {
    int value_ktmp0 = 3;
    
    Map<Scalar,bool> value_vtmp0 = {};
    Map<int,Map<Scalar,bool>> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 3;
    
    Map<Scalar,bool> copy_vtmp0 = {};
    Map<int,Map<Scalar,bool>> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 2147483645;
    Scalar other_vtmp0_ktmp0 = unsafe(false).asScalar();
    bool other_vtmp0_vtmp0 = true;
    Map<Scalar,bool> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    int other_ktmp1 = 2147483646;
    Scalar other_vtmp1_ktmp0 = unsafe(2147483645).asScalar();
    bool other_vtmp1_vtmp0 = false;
    Scalar other_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    bool other_vtmp1_vtmp1 = true;
    Map<Scalar,bool> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<int,Map<Scalar,bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,Map<Scalar,bool>>: {3: {}}");
    assert(!(value == other), "different Map<int,Map<Scalar,bool>>: {3: {}} {2147483645: {<__main__.Scalar object at 0x7f9dce0f0810>: true}, 2147483646: {<__main__.Scalar object at 0x7f9dce0f0850>: false, <__main__.Scalar object at 0x7f9dce0f0890>: true}}");
    assertEqual(true, true);
}
        
void test_Map_int_Map_Scalar_bool___765() {
    int value_ktmp0 = 2147483645;
    Scalar value_vtmp0_ktmp0 = unsafe(false).asScalar();
    bool value_vtmp0_vtmp0 = true;
    Map<Scalar,bool> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    int value_ktmp1 = 2147483646;
    Scalar value_vtmp1_ktmp0 = unsafe(2147483645).asScalar();
    bool value_vtmp1_vtmp0 = false;
    Scalar value_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    bool value_vtmp1_vtmp1 = true;
    Map<Scalar,bool> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<int,Map<Scalar,bool>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 2147483645;
    Scalar copy_vtmp0_ktmp0 = unsafe(false).asScalar();
    bool copy_vtmp0_vtmp0 = true;
    Map<Scalar,bool> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    int copy_ktmp1 = 2147483646;
    Scalar copy_vtmp1_ktmp0 = unsafe(2147483645).asScalar();
    bool copy_vtmp1_vtmp0 = false;
    Scalar copy_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    bool copy_vtmp1_vtmp1 = true;
    Map<Scalar,bool> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<int,Map<Scalar,bool>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,Map<Scalar,bool>> other = {};
    assert(value == copy, "equals Map<int,Map<Scalar,bool>>: {2147483645: {<__main__.Scalar object at 0x7f9dce0f0810>: true}, 2147483646: {<__main__.Scalar object at 0x7f9dce0f0850>: false, <__main__.Scalar object at 0x7f9dce0f0890>: true}}");
    assert(!(value == other), "different Map<int,Map<Scalar,bool>>: {2147483645: {<__main__.Scalar object at 0x7f9dce0f0810>: true}, 2147483646: {<__main__.Scalar object at 0x7f9dce0f0850>: false, <__main__.Scalar object at 0x7f9dce0f0890>: true}} {}");
    assertEqual(true, true);
}
        
void test_Map_int_Map_Scalar_int___766() {
    
    Map<int,Map<Scalar,int>> value = {};
    
    Map<int,Map<Scalar,int>> copy = {};
    int other_ktmp0 = 2147483647;
    
    Map<Scalar,int> other_vtmp0 = {};
    Map<int,Map<Scalar,int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,Map<Scalar,int>>: {}");
    assert(!(value == other), "different Map<int,Map<Scalar,int>>: {} {2147483647: {}}");
    assertEqual(true, true);
}
        
void test_Map_int_Map_Scalar_int___767() {
    int value_ktmp0 = 2147483647;
    
    Map<Scalar,int> value_vtmp0 = {};
    Map<int,Map<Scalar,int>> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 2147483647;
    
    Map<Scalar,int> copy_vtmp0 = {};
    Map<int,Map<Scalar,int>> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 2147483648;
    Scalar other_vtmp0_ktmp0 = unsafe("").asScalar();
    int other_vtmp0_vtmp0 = 2147483650;
    Map<Scalar,int> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    int other_ktmp1 = 2147483649;
    Scalar other_vtmp1_ktmp0 = unsafe(true).asScalar();
    int other_vtmp1_vtmp0 = 2147483651;
    Scalar other_vtmp1_ktmp1 = unsafe(true).asScalar();
    int other_vtmp1_vtmp1 = 4294967293;
    Map<Scalar,int> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<int,Map<Scalar,int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,Map<Scalar,int>>: {2147483647: {}}");
    assert(!(value == other), "different Map<int,Map<Scalar,int>>: {2147483647: {}} {2147483648: {<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}, 2147483649: {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}}");
    assertEqual(true, true);
}
        
void test_Map_int_Map_Scalar_int___768() {
    int value_ktmp0 = 2147483648;
    Scalar value_vtmp0_ktmp0 = unsafe("").asScalar();
    int value_vtmp0_vtmp0 = 2147483650;
    Map<Scalar,int> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    int value_ktmp1 = 2147483649;
    Scalar value_vtmp1_ktmp0 = unsafe(true).asScalar();
    int value_vtmp1_vtmp0 = 2147483651;
    Scalar value_vtmp1_ktmp1 = unsafe(true).asScalar();
    int value_vtmp1_vtmp1 = 4294967293;
    Map<Scalar,int> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<int,Map<Scalar,int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 2147483648;
    Scalar copy_vtmp0_ktmp0 = unsafe("").asScalar();
    int copy_vtmp0_vtmp0 = 2147483650;
    Map<Scalar,int> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    int copy_ktmp1 = 2147483649;
    Scalar copy_vtmp1_ktmp0 = unsafe(true).asScalar();
    int copy_vtmp1_vtmp0 = 2147483651;
    Scalar copy_vtmp1_ktmp1 = unsafe(true).asScalar();
    int copy_vtmp1_vtmp1 = 4294967293;
    Map<Scalar,int> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<int,Map<Scalar,int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,Map<Scalar,int>> other = {};
    assert(value == copy, "equals Map<int,Map<Scalar,int>>: {2147483648: {<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}, 2147483649: {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}}");
    assert(!(value == other), "different Map<int,Map<Scalar,int>>: {2147483648: {<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}, 2147483649: {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}} {}");
    assertEqual(true, true);
}
        
void test_Map_int_Map_Scalar_float___769() {
    
    Map<int,Map<Scalar,float>> value = {};
    
    Map<int,Map<Scalar,float>> copy = {};
    int other_ktmp0 = 2147483650;
    
    Map<Scalar,float> other_vtmp0 = {};
    Map<int,Map<Scalar,float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,Map<Scalar,float>>: {}");
    assert(!(value == other), "different Map<int,Map<Scalar,float>>: {} {2147483650: {}}");
    assertEqual(true, true);
}
        
void test_Map_int_Map_Scalar_float___770() {
    int value_ktmp0 = 2147483650;
    
    Map<Scalar,float> value_vtmp0 = {};
    Map<int,Map<Scalar,float>> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 2147483650;
    
    Map<Scalar,float> copy_vtmp0 = {};
    Map<int,Map<Scalar,float>> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 2147483651;
    Scalar other_vtmp0_ktmp0 = unsafe(-3).asScalar();
    float other_vtmp0_vtmp0 = 0.0;
    Map<Scalar,float> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    int other_ktmp1 = 4294967293;
    Scalar other_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    float other_vtmp1_vtmp0 = -0.0;
    Scalar other_vtmp1_ktmp1 = unsafe("").asScalar();
    float other_vtmp1_vtmp1 = 3.14;
    Map<Scalar,float> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<int,Map<Scalar,float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,Map<Scalar,float>>: {2147483650: {}}");
    assert(!(value == other), "different Map<int,Map<Scalar,float>>: {2147483650: {}} {2147483651: {<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}, 4294967293: {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}}");
    assertEqual(true, true);
}
        