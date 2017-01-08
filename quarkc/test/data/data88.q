
void test_Map_float_Map_Scalar_bool___871() {
    
    Map<float,Map<Scalar,bool>> value = {};
    
    Map<float,Map<Scalar,bool>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<Scalar,bool> other_vtmp0 = {};
    Map<float,Map<Scalar,bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<Scalar,bool>>: {}");
    assert(!(value == other), "different Map<float,Map<Scalar,bool>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_Scalar_bool___872() {
    float value_ktmp0 = 0.0;
    
    Map<Scalar,bool> value_vtmp0 = {};
    Map<float,Map<Scalar,bool>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<Scalar,bool> copy_vtmp0 = {};
    Map<float,Map<Scalar,bool>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    Scalar other_vtmp0_ktmp0 = unsafe(false).asScalar();
    bool other_vtmp0_vtmp0 = true;
    Map<Scalar,bool> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    Scalar other_vtmp1_ktmp0 = unsafe(2147483645).asScalar();
    bool other_vtmp1_vtmp0 = false;
    Scalar other_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    bool other_vtmp1_vtmp1 = true;
    Map<Scalar,bool> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<Scalar,bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<Scalar,bool>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<Scalar,bool>>: {0.0: {}} {-0.0: {<__main__.Scalar object at 0x7f9dce0f0810>: true}, 3.14: {<__main__.Scalar object at 0x7f9dce0f0850>: false, <__main__.Scalar object at 0x7f9dce0f0890>: true}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_Scalar_bool___873() {
    float value_ktmp0 = -0.0;
    Scalar value_vtmp0_ktmp0 = unsafe(false).asScalar();
    bool value_vtmp0_vtmp0 = true;
    Map<Scalar,bool> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    Scalar value_vtmp1_ktmp0 = unsafe(2147483645).asScalar();
    bool value_vtmp1_vtmp0 = false;
    Scalar value_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    bool value_vtmp1_vtmp1 = true;
    Map<Scalar,bool> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<Scalar,bool>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    Scalar copy_vtmp0_ktmp0 = unsafe(false).asScalar();
    bool copy_vtmp0_vtmp0 = true;
    Map<Scalar,bool> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    Scalar copy_vtmp1_ktmp0 = unsafe(2147483645).asScalar();
    bool copy_vtmp1_vtmp0 = false;
    Scalar copy_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    bool copy_vtmp1_vtmp1 = true;
    Map<Scalar,bool> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<Scalar,bool>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<Scalar,bool>> other = {};
    assert(value == copy, "equals Map<float,Map<Scalar,bool>>: {-0.0: {<__main__.Scalar object at 0x7f9dce0f0810>: true}, 3.14: {<__main__.Scalar object at 0x7f9dce0f0850>: false, <__main__.Scalar object at 0x7f9dce0f0890>: true}}");
    assert(!(value == other), "different Map<float,Map<Scalar,bool>>: {-0.0: {<__main__.Scalar object at 0x7f9dce0f0810>: true}, 3.14: {<__main__.Scalar object at 0x7f9dce0f0850>: false, <__main__.Scalar object at 0x7f9dce0f0890>: true}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_Scalar_int___874() {
    
    Map<float,Map<Scalar,int>> value = {};
    
    Map<float,Map<Scalar,int>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<Scalar,int> other_vtmp0 = {};
    Map<float,Map<Scalar,int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<Scalar,int>>: {}");
    assert(!(value == other), "different Map<float,Map<Scalar,int>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_Scalar_int___875() {
    float value_ktmp0 = 0.0;
    
    Map<Scalar,int> value_vtmp0 = {};
    Map<float,Map<Scalar,int>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<Scalar,int> copy_vtmp0 = {};
    Map<float,Map<Scalar,int>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    Scalar other_vtmp0_ktmp0 = unsafe("").asScalar();
    int other_vtmp0_vtmp0 = 2147483650;
    Map<Scalar,int> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    Scalar other_vtmp1_ktmp0 = unsafe(true).asScalar();
    int other_vtmp1_vtmp0 = 2147483651;
    Scalar other_vtmp1_ktmp1 = unsafe(true).asScalar();
    int other_vtmp1_vtmp1 = 4294967293;
    Map<Scalar,int> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<Scalar,int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<Scalar,int>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<Scalar,int>>: {0.0: {}} {-0.0: {<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}, 3.14: {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_Scalar_int___876() {
    float value_ktmp0 = -0.0;
    Scalar value_vtmp0_ktmp0 = unsafe("").asScalar();
    int value_vtmp0_vtmp0 = 2147483650;
    Map<Scalar,int> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    Scalar value_vtmp1_ktmp0 = unsafe(true).asScalar();
    int value_vtmp1_vtmp0 = 2147483651;
    Scalar value_vtmp1_ktmp1 = unsafe(true).asScalar();
    int value_vtmp1_vtmp1 = 4294967293;
    Map<Scalar,int> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<Scalar,int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    Scalar copy_vtmp0_ktmp0 = unsafe("").asScalar();
    int copy_vtmp0_vtmp0 = 2147483650;
    Map<Scalar,int> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    Scalar copy_vtmp1_ktmp0 = unsafe(true).asScalar();
    int copy_vtmp1_vtmp0 = 2147483651;
    Scalar copy_vtmp1_ktmp1 = unsafe(true).asScalar();
    int copy_vtmp1_vtmp1 = 4294967293;
    Map<Scalar,int> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<Scalar,int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<Scalar,int>> other = {};
    assert(value == copy, "equals Map<float,Map<Scalar,int>>: {-0.0: {<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}, 3.14: {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}}");
    assert(!(value == other), "different Map<float,Map<Scalar,int>>: {-0.0: {<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}, 3.14: {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_Scalar_float___877() {
    
    Map<float,Map<Scalar,float>> value = {};
    
    Map<float,Map<Scalar,float>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<Scalar,float> other_vtmp0 = {};
    Map<float,Map<Scalar,float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<Scalar,float>>: {}");
    assert(!(value == other), "different Map<float,Map<Scalar,float>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_Scalar_float___878() {
    float value_ktmp0 = 0.0;
    
    Map<Scalar,float> value_vtmp0 = {};
    Map<float,Map<Scalar,float>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<Scalar,float> copy_vtmp0 = {};
    Map<float,Map<Scalar,float>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    Scalar other_vtmp0_ktmp0 = unsafe(-3).asScalar();
    float other_vtmp0_vtmp0 = 0.0;
    Map<Scalar,float> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    Scalar other_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    float other_vtmp1_vtmp0 = -0.0;
    Scalar other_vtmp1_ktmp1 = unsafe("").asScalar();
    float other_vtmp1_vtmp1 = 3.14;
    Map<Scalar,float> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<Scalar,float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<Scalar,float>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<Scalar,float>>: {0.0: {}} {-0.0: {<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}, 3.14: {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_Scalar_float___879() {
    float value_ktmp0 = -0.0;
    Scalar value_vtmp0_ktmp0 = unsafe(-3).asScalar();
    float value_vtmp0_vtmp0 = 0.0;
    Map<Scalar,float> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    Scalar value_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    float value_vtmp1_vtmp0 = -0.0;
    Scalar value_vtmp1_ktmp1 = unsafe("").asScalar();
    float value_vtmp1_vtmp1 = 3.14;
    Map<Scalar,float> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<Scalar,float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    Scalar copy_vtmp0_ktmp0 = unsafe(-3).asScalar();
    float copy_vtmp0_vtmp0 = 0.0;
    Map<Scalar,float> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    Scalar copy_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    float copy_vtmp1_vtmp0 = -0.0;
    Scalar copy_vtmp1_ktmp1 = unsafe("").asScalar();
    float copy_vtmp1_vtmp1 = 3.14;
    Map<Scalar,float> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<Scalar,float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<Scalar,float>> other = {};
    assert(value == copy, "equals Map<float,Map<Scalar,float>>: {-0.0: {<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}, 3.14: {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}}");
    assert(!(value == other), "different Map<float,Map<Scalar,float>>: {-0.0: {<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}, 3.14: {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_Scalar_String___880() {
    
    Map<float,Map<Scalar,String>> value = {};
    
    Map<float,Map<Scalar,String>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<Scalar,String> other_vtmp0 = {};
    Map<float,Map<Scalar,String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<Scalar,String>>: {}");
    assert(!(value == other), "different Map<float,Map<Scalar,String>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        