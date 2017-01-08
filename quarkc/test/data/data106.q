
void test_Map_Scalar_Map_float_bool___1051() {
    
    Map<Scalar,Map<float,bool>> value = {};
    
    Map<Scalar,Map<float,bool>> copy = {};
    Scalar other_ktmp0 = unsafe("Hello World!").asScalar();
    
    Map<float,bool> other_vtmp0 = {};
    Map<Scalar,Map<float,bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<float,bool>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<float,bool>>: {} {<__main__.Scalar object at 0x7f9dce0f02d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_bool___1052() {
    Scalar value_ktmp0 = unsafe("Hello World!").asScalar();
    
    Map<float,bool> value_vtmp0 = {};
    Map<Scalar,Map<float,bool>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe("Hello World!").asScalar();
    
    Map<float,bool> copy_vtmp0 = {};
    Map<Scalar,Map<float,bool>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(true).asScalar();
    float other_vtmp0_ktmp0 = 0.0;
    bool other_vtmp0_vtmp0 = true;
    Map<float,bool> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(-1).asScalar();
    float other_vtmp1_ktmp0 = -0.0;
    bool other_vtmp1_vtmp0 = false;
    float other_vtmp1_ktmp1 = 3.14;
    bool other_vtmp1_vtmp1 = true;
    Map<float,bool> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<float,bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<float,bool>>: {<__main__.Scalar object at 0x7f9dce0f02d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<float,bool>>: {<__main__.Scalar object at 0x7f9dce0f02d0>: {}} {<__main__.Scalar object at 0x7f9dce0f0310>: {0.0: true}, <__main__.Scalar object at 0x7f9dce0f0350>: {-0.0: false, 3.14: true}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_bool___1053() {
    Scalar value_ktmp0 = unsafe(true).asScalar();
    float value_vtmp0_ktmp0 = 0.0;
    bool value_vtmp0_vtmp0 = true;
    Map<float,bool> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(-1).asScalar();
    float value_vtmp1_ktmp0 = -0.0;
    bool value_vtmp1_vtmp0 = false;
    float value_vtmp1_ktmp1 = 3.14;
    bool value_vtmp1_vtmp1 = true;
    Map<float,bool> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<float,bool>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(true).asScalar();
    float copy_vtmp0_ktmp0 = 0.0;
    bool copy_vtmp0_vtmp0 = true;
    Map<float,bool> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(-1).asScalar();
    float copy_vtmp1_ktmp0 = -0.0;
    bool copy_vtmp1_vtmp0 = false;
    float copy_vtmp1_ktmp1 = 3.14;
    bool copy_vtmp1_vtmp1 = true;
    Map<float,bool> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<float,bool>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<float,bool>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<float,bool>>: {<__main__.Scalar object at 0x7f9dce0f0310>: {0.0: true}, <__main__.Scalar object at 0x7f9dce0f0350>: {-0.0: false, 3.14: true}}");
    assert(!(value == other), "different Map<Scalar,Map<float,bool>>: {<__main__.Scalar object at 0x7f9dce0f0310>: {0.0: true}, <__main__.Scalar object at 0x7f9dce0f0350>: {-0.0: false, 3.14: true}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_int___1054() {
    
    Map<Scalar,Map<float,int>> value = {};
    
    Map<Scalar,Map<float,int>> copy = {};
    Scalar other_ktmp0 = unsafe(3.14).asScalar();
    
    Map<float,int> other_vtmp0 = {};
    Map<Scalar,Map<float,int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<float,int>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<float,int>>: {} {<__main__.Scalar object at 0x7f9dce0f0390>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_int___1055() {
    Scalar value_ktmp0 = unsafe(3.14).asScalar();
    
    Map<float,int> value_vtmp0 = {};
    Map<Scalar,Map<float,int>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3.14).asScalar();
    
    Map<float,int> copy_vtmp0 = {};
    Map<Scalar,Map<float,int>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe("pi").asScalar();
    float other_vtmp0_ktmp0 = 0.0;
    int other_vtmp0_vtmp0 = 3;
    Map<float,int> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(false).asScalar();
    float other_vtmp1_ktmp0 = -0.0;
    int other_vtmp1_vtmp0 = 2147483645;
    float other_vtmp1_ktmp1 = 3.14;
    int other_vtmp1_vtmp1 = 2147483646;
    Map<float,int> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<float,int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<float,int>>: {<__main__.Scalar object at 0x7f9dce0f0390>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<float,int>>: {<__main__.Scalar object at 0x7f9dce0f0390>: {}} {<__main__.Scalar object at 0x7f9dce0f03d0>: {0.0: 3}, <__main__.Scalar object at 0x7f9dce0f0410>: {-0.0: 2147483645, 3.14: 2147483646}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_int___1056() {
    Scalar value_ktmp0 = unsafe("pi").asScalar();
    float value_vtmp0_ktmp0 = 0.0;
    int value_vtmp0_vtmp0 = 3;
    Map<float,int> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(false).asScalar();
    float value_vtmp1_ktmp0 = -0.0;
    int value_vtmp1_vtmp0 = 2147483645;
    float value_vtmp1_ktmp1 = 3.14;
    int value_vtmp1_vtmp1 = 2147483646;
    Map<float,int> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<float,int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe("pi").asScalar();
    float copy_vtmp0_ktmp0 = 0.0;
    int copy_vtmp0_vtmp0 = 3;
    Map<float,int> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(false).asScalar();
    float copy_vtmp1_ktmp0 = -0.0;
    int copy_vtmp1_vtmp0 = 2147483645;
    float copy_vtmp1_ktmp1 = 3.14;
    int copy_vtmp1_vtmp1 = 2147483646;
    Map<float,int> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<float,int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<float,int>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<float,int>>: {<__main__.Scalar object at 0x7f9dce0f03d0>: {0.0: 3}, <__main__.Scalar object at 0x7f9dce0f0410>: {-0.0: 2147483645, 3.14: 2147483646}}");
    assert(!(value == other), "different Map<Scalar,Map<float,int>>: {<__main__.Scalar object at 0x7f9dce0f03d0>: {0.0: 3}, <__main__.Scalar object at 0x7f9dce0f0410>: {-0.0: 2147483645, 3.14: 2147483646}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_float___1057() {
    
    Map<Scalar,Map<float,float>> value = {};
    
    Map<Scalar,Map<float,float>> copy = {};
    Scalar other_ktmp0 = unsafe(0).asScalar();
    
    Map<float,float> other_vtmp0 = {};
    Map<Scalar,Map<float,float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<float,float>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<float,float>>: {} {<__main__.Scalar object at 0x7f9dce0f0450>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_float___1058() {
    Scalar value_ktmp0 = unsafe(0).asScalar();
    
    Map<float,float> value_vtmp0 = {};
    Map<Scalar,Map<float,float>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(0).asScalar();
    
    Map<float,float> copy_vtmp0 = {};
    Map<Scalar,Map<float,float>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(0.0).asScalar();
    float other_vtmp0_ktmp0 = 0.0;
    float other_vtmp0_vtmp0 = -0.0;
    Map<float,float> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe("pie").asScalar();
    float other_vtmp1_ktmp0 = 3.14;
    float other_vtmp1_vtmp0 = -0.0;
    float other_vtmp1_ktmp1 = 0.0;
    float other_vtmp1_vtmp1 = 3.14;
    Map<float,float> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<float,float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<float,float>>: {<__main__.Scalar object at 0x7f9dce0f0450>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<float,float>>: {<__main__.Scalar object at 0x7f9dce0f0450>: {}} {<__main__.Scalar object at 0x7f9dce0f0490>: {0.0: -0.0}, <__main__.Scalar object at 0x7f9dce0f04d0>: {3.14: -0.0, 0.0: 3.14}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_float___1059() {
    Scalar value_ktmp0 = unsafe(0.0).asScalar();
    float value_vtmp0_ktmp0 = 0.0;
    float value_vtmp0_vtmp0 = -0.0;
    Map<float,float> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe("pie").asScalar();
    float value_vtmp1_ktmp0 = 3.14;
    float value_vtmp1_vtmp0 = -0.0;
    float value_vtmp1_ktmp1 = 0.0;
    float value_vtmp1_vtmp1 = 3.14;
    Map<float,float> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<float,float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(0.0).asScalar();
    float copy_vtmp0_ktmp0 = 0.0;
    float copy_vtmp0_vtmp0 = -0.0;
    Map<float,float> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe("pie").asScalar();
    float copy_vtmp1_ktmp0 = 3.14;
    float copy_vtmp1_vtmp0 = -0.0;
    float copy_vtmp1_ktmp1 = 0.0;
    float copy_vtmp1_vtmp1 = 3.14;
    Map<float,float> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<float,float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<float,float>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<float,float>>: {<__main__.Scalar object at 0x7f9dce0f0490>: {0.0: -0.0}, <__main__.Scalar object at 0x7f9dce0f04d0>: {3.14: -0.0, 0.0: 3.14}}");
    assert(!(value == other), "different Map<Scalar,Map<float,float>>: {<__main__.Scalar object at 0x7f9dce0f0490>: {0.0: -0.0}, <__main__.Scalar object at 0x7f9dce0f04d0>: {3.14: -0.0, 0.0: 3.14}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_float_String___1060() {
    
    Map<Scalar,Map<float,String>> value = {};
    
    Map<Scalar,Map<float,String>> copy = {};
    Scalar other_ktmp0 = unsafe(true).asScalar();
    
    Map<float,String> other_vtmp0 = {};
    Map<Scalar,Map<float,String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<float,String>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<float,String>>: {} {<__main__.Scalar object at 0x7f9dce0f0510>: {}}");
    assertEqual(true, true);
}
        