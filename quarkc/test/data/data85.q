
void test_Map_float_Map_float_float___841() {
    
    Map<float,Map<float,float>> value = {};
    
    Map<float,Map<float,float>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<float,float> other_vtmp0 = {};
    Map<float,Map<float,float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<float,float>>: {}");
    assert(!(value == other), "different Map<float,Map<float,float>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_float_float___842() {
    float value_ktmp0 = 0.0;
    
    Map<float,float> value_vtmp0 = {};
    Map<float,Map<float,float>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<float,float> copy_vtmp0 = {};
    Map<float,Map<float,float>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    float other_vtmp0_ktmp0 = 0.0;
    float other_vtmp0_vtmp0 = -0.0;
    Map<float,float> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    float other_vtmp1_ktmp0 = 3.14;
    float other_vtmp1_vtmp0 = -0.0;
    float other_vtmp1_ktmp1 = 0.0;
    float other_vtmp1_vtmp1 = 3.14;
    Map<float,float> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<float,float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<float,float>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<float,float>>: {0.0: {}} {-0.0: {0.0: -0.0}, 3.14: {3.14: -0.0, 0.0: 3.14}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_float_float___843() {
    float value_ktmp0 = -0.0;
    float value_vtmp0_ktmp0 = 0.0;
    float value_vtmp0_vtmp0 = -0.0;
    Map<float,float> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    float value_vtmp1_ktmp0 = 3.14;
    float value_vtmp1_vtmp0 = -0.0;
    float value_vtmp1_ktmp1 = 0.0;
    float value_vtmp1_vtmp1 = 3.14;
    Map<float,float> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<float,float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    float copy_vtmp0_ktmp0 = 0.0;
    float copy_vtmp0_vtmp0 = -0.0;
    Map<float,float> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    float copy_vtmp1_ktmp0 = 3.14;
    float copy_vtmp1_vtmp0 = -0.0;
    float copy_vtmp1_ktmp1 = 0.0;
    float copy_vtmp1_vtmp1 = 3.14;
    Map<float,float> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<float,float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<float,float>> other = {};
    assert(value == copy, "equals Map<float,Map<float,float>>: {-0.0: {0.0: -0.0}, 3.14: {3.14: -0.0, 0.0: 3.14}}");
    assert(!(value == other), "different Map<float,Map<float,float>>: {-0.0: {0.0: -0.0}, 3.14: {3.14: -0.0, 0.0: 3.14}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_float_String___844() {
    
    Map<float,Map<float,String>> value = {};
    
    Map<float,Map<float,String>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<float,String> other_vtmp0 = {};
    Map<float,Map<float,String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<float,String>>: {}");
    assert(!(value == other), "different Map<float,Map<float,String>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_float_String___845() {
    float value_ktmp0 = 0.0;
    
    Map<float,String> value_vtmp0 = {};
    Map<float,Map<float,String>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<float,String> copy_vtmp0 = {};
    Map<float,Map<float,String>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    float other_vtmp0_ktmp0 = 0.0;
    String other_vtmp0_vtmp0 = "pi";
    Map<float,String> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    float other_vtmp1_ktmp0 = -0.0;
    String other_vtmp1_vtmp0 = "pie";
    float other_vtmp1_ktmp1 = 3.14;
    String other_vtmp1_vtmp1 = " ";
    Map<float,String> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<float,String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<float,String>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<float,String>>: {0.0: {}} {-0.0: {0.0: \"pi\"}, 3.14: {-0.0: \"pie\", 3.14: \" \"}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_float_String___846() {
    float value_ktmp0 = -0.0;
    float value_vtmp0_ktmp0 = 0.0;
    String value_vtmp0_vtmp0 = "pi";
    Map<float,String> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    float value_vtmp1_ktmp0 = -0.0;
    String value_vtmp1_vtmp0 = "pie";
    float value_vtmp1_ktmp1 = 3.14;
    String value_vtmp1_vtmp1 = " ";
    Map<float,String> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<float,String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    float copy_vtmp0_ktmp0 = 0.0;
    String copy_vtmp0_vtmp0 = "pi";
    Map<float,String> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    float copy_vtmp1_ktmp0 = -0.0;
    String copy_vtmp1_vtmp0 = "pie";
    float copy_vtmp1_ktmp1 = 3.14;
    String copy_vtmp1_vtmp1 = " ";
    Map<float,String> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<float,String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<float,String>> other = {};
    assert(value == copy, "equals Map<float,Map<float,String>>: {-0.0: {0.0: \"pi\"}, 3.14: {-0.0: \"pie\", 3.14: \" \"}}");
    assert(!(value == other), "different Map<float,Map<float,String>>: {-0.0: {0.0: \"pi\"}, 3.14: {-0.0: \"pie\", 3.14: \" \"}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_float_Scalar___847() {
    
    Map<float,Map<float,Scalar>> value = {};
    
    Map<float,Map<float,Scalar>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<float,Scalar> other_vtmp0 = {};
    Map<float,Map<float,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<float,Scalar>>: {}");
    assert(!(value == other), "different Map<float,Map<float,Scalar>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_float_Scalar___848() {
    float value_ktmp0 = 0.0;
    
    Map<float,Scalar> value_vtmp0 = {};
    Map<float,Map<float,Scalar>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<float,Scalar> copy_vtmp0 = {};
    Map<float,Map<float,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    float other_vtmp0_ktmp0 = 0.0;
    Scalar other_vtmp0_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    float other_vtmp1_ktmp0 = -0.0;
    Scalar other_vtmp1_vtmp0 = unsafe("\n").asScalar();
    float other_vtmp1_ktmp1 = 3.14;
    Scalar other_vtmp1_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<float,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<float,Scalar>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<float,Scalar>>: {0.0: {}} {-0.0: {0.0: <__main__.Scalar object at 0x7f9dce0f0690>}, 3.14: {-0.0: <__main__.Scalar object at 0x7f9dce0f06d0>, 3.14: <__main__.Scalar object at 0x7f9dce0f0710>}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_float_Scalar___849() {
    float value_ktmp0 = -0.0;
    float value_vtmp0_ktmp0 = 0.0;
    Scalar value_vtmp0_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    float value_vtmp1_ktmp0 = -0.0;
    Scalar value_vtmp1_vtmp0 = unsafe("\n").asScalar();
    float value_vtmp1_ktmp1 = 3.14;
    Scalar value_vtmp1_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<float,Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    float copy_vtmp0_ktmp0 = 0.0;
    Scalar copy_vtmp0_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    float copy_vtmp1_ktmp0 = -0.0;
    Scalar copy_vtmp1_vtmp0 = unsafe("\n").asScalar();
    float copy_vtmp1_ktmp1 = 3.14;
    Scalar copy_vtmp1_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<float,Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<float,Scalar>> other = {};
    assert(value == copy, "equals Map<float,Map<float,Scalar>>: {-0.0: {0.0: <__main__.Scalar object at 0x7f9dce0f0690>}, 3.14: {-0.0: <__main__.Scalar object at 0x7f9dce0f06d0>, 3.14: <__main__.Scalar object at 0x7f9dce0f0710>}}");
    assert(!(value == other), "different Map<float,Map<float,Scalar>>: {-0.0: {0.0: <__main__.Scalar object at 0x7f9dce0f0690>}, 3.14: {-0.0: <__main__.Scalar object at 0x7f9dce0f06d0>, 3.14: <__main__.Scalar object at 0x7f9dce0f0710>}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_float_Any___850() {
    
    Map<float,Map<float,Any>> value = {};
    
    Map<float,Map<float,Any>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<float,Any> other_vtmp0 = {};
    Map<float,Map<float,Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<float,Any>>: {}");
    assert(!(value == other), "different Map<float,Map<float,Any>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        