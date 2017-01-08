
void test_Map_bool_Map_Scalar_float___661() {
    
    Map<bool,Map<Scalar,float>> value = {};
    
    Map<bool,Map<Scalar,float>> copy = {};
    bool other_ktmp0 = false;
    
    Map<Scalar,float> other_vtmp0 = {};
    Map<bool,Map<Scalar,float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Map<Scalar,float>>: {}");
    assert(!(value == other), "different Map<bool,Map<Scalar,float>>: {} {false: {}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_Scalar_float___662() {
    bool value_ktmp0 = false;
    
    Map<Scalar,float> value_vtmp0 = {};
    Map<bool,Map<Scalar,float>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = false;
    
    Map<Scalar,float> copy_vtmp0 = {};
    Map<bool,Map<Scalar,float>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    Scalar other_vtmp0_ktmp0 = unsafe(-3).asScalar();
    float other_vtmp0_vtmp0 = 0.0;
    Map<Scalar,float> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    bool other_ktmp1 = false;
    Scalar other_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    float other_vtmp1_vtmp0 = -0.0;
    Scalar other_vtmp1_ktmp1 = unsafe("").asScalar();
    float other_vtmp1_vtmp1 = 3.14;
    Map<Scalar,float> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<bool,Map<Scalar,float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Map<Scalar,float>>: {false: {}}");
    assert(!(value == other), "different Map<bool,Map<Scalar,float>>: {false: {}} {true: {<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}, false: {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_Scalar_float___663() {
    bool value_ktmp0 = true;
    Scalar value_vtmp0_ktmp0 = unsafe(-3).asScalar();
    float value_vtmp0_vtmp0 = 0.0;
    Map<Scalar,float> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    bool value_ktmp1 = false;
    Scalar value_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    float value_vtmp1_vtmp0 = -0.0;
    Scalar value_vtmp1_ktmp1 = unsafe("").asScalar();
    float value_vtmp1_vtmp1 = 3.14;
    Map<Scalar,float> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<bool,Map<Scalar,float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    Scalar copy_vtmp0_ktmp0 = unsafe(-3).asScalar();
    float copy_vtmp0_vtmp0 = 0.0;
    Map<Scalar,float> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    bool copy_ktmp1 = false;
    Scalar copy_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    float copy_vtmp1_vtmp0 = -0.0;
    Scalar copy_vtmp1_ktmp1 = unsafe("").asScalar();
    float copy_vtmp1_vtmp1 = 3.14;
    Map<Scalar,float> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<bool,Map<Scalar,float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Map<Scalar,float>> other = {};
    assert(value == copy, "equals Map<bool,Map<Scalar,float>>: {true: {<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}, false: {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}}");
    assert(!(value == other), "different Map<bool,Map<Scalar,float>>: {true: {<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}, false: {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_Scalar_String___664() {
    
    Map<bool,Map<Scalar,String>> value = {};
    
    Map<bool,Map<Scalar,String>> copy = {};
    bool other_ktmp0 = true;
    
    Map<Scalar,String> other_vtmp0 = {};
    Map<bool,Map<Scalar,String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Map<Scalar,String>>: {}");
    assert(!(value == other), "different Map<bool,Map<Scalar,String>>: {} {true: {}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_Scalar_String___665() {
    bool value_ktmp0 = true;
    
    Map<Scalar,String> value_vtmp0 = {};
    Map<bool,Map<Scalar,String>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = true;
    
    Map<Scalar,String> copy_vtmp0 = {};
    Map<bool,Map<Scalar,String>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = false;
    Scalar other_vtmp0_ktmp0 = unsafe(false).asScalar();
    String other_vtmp0_vtmp0 = "\n";
    Map<Scalar,String> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    bool other_ktmp1 = true;
    Scalar other_vtmp1_ktmp0 = unsafe(-2).asScalar();
    String other_vtmp1_vtmp0 = "asdf\n";
    Scalar other_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    String other_vtmp1_vtmp1 = "";
    Map<Scalar,String> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<bool,Map<Scalar,String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Map<Scalar,String>>: {true: {}}");
    assert(!(value == other), "different Map<bool,Map<Scalar,String>>: {true: {}} {false: {<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}, true: {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_Scalar_String___666() {
    bool value_ktmp0 = false;
    Scalar value_vtmp0_ktmp0 = unsafe(false).asScalar();
    String value_vtmp0_vtmp0 = "\n";
    Map<Scalar,String> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    bool value_ktmp1 = true;
    Scalar value_vtmp1_ktmp0 = unsafe(-2).asScalar();
    String value_vtmp1_vtmp0 = "asdf\n";
    Scalar value_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    String value_vtmp1_vtmp1 = "";
    Map<Scalar,String> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<bool,Map<Scalar,String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = false;
    Scalar copy_vtmp0_ktmp0 = unsafe(false).asScalar();
    String copy_vtmp0_vtmp0 = "\n";
    Map<Scalar,String> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    bool copy_ktmp1 = true;
    Scalar copy_vtmp1_ktmp0 = unsafe(-2).asScalar();
    String copy_vtmp1_vtmp0 = "asdf\n";
    Scalar copy_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    String copy_vtmp1_vtmp1 = "";
    Map<Scalar,String> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<bool,Map<Scalar,String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Map<Scalar,String>> other = {};
    assert(value == copy, "equals Map<bool,Map<Scalar,String>>: {false: {<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}, true: {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}}");
    assert(!(value == other), "different Map<bool,Map<Scalar,String>>: {false: {<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}, true: {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_Scalar_Scalar___667() {
    
    Map<bool,Map<Scalar,Scalar>> value = {};
    
    Map<bool,Map<Scalar,Scalar>> copy = {};
    bool other_ktmp0 = false;
    
    Map<Scalar,Scalar> other_vtmp0 = {};
    Map<bool,Map<Scalar,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Map<Scalar,Scalar>>: {}");
    assert(!(value == other), "different Map<bool,Map<Scalar,Scalar>>: {} {false: {}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_Scalar_Scalar___668() {
    bool value_ktmp0 = false;
    
    Map<Scalar,Scalar> value_vtmp0 = {};
    Map<bool,Map<Scalar,Scalar>> value = {value_ktmp0: value_vtmp0};
    bool copy_ktmp0 = false;
    
    Map<Scalar,Scalar> copy_vtmp0 = {};
    Map<bool,Map<Scalar,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    bool other_ktmp0 = true;
    Scalar other_vtmp0_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar other_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    bool other_ktmp1 = false;
    Scalar other_vtmp1_ktmp0 = unsafe(-1).asScalar();
    Scalar other_vtmp1_vtmp0 = unsafe("pi").asScalar();
    Scalar other_vtmp1_ktmp1 = unsafe(3.14).asScalar();
    Scalar other_vtmp1_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<bool,Map<Scalar,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<bool,Map<Scalar,Scalar>>: {false: {}}");
    assert(!(value == other), "different Map<bool,Map<Scalar,Scalar>>: {false: {}} {true: {<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}, false: {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_Scalar_Scalar___669() {
    bool value_ktmp0 = true;
    Scalar value_vtmp0_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar value_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    bool value_ktmp1 = false;
    Scalar value_vtmp1_ktmp0 = unsafe(-1).asScalar();
    Scalar value_vtmp1_vtmp0 = unsafe("pi").asScalar();
    Scalar value_vtmp1_ktmp1 = unsafe(3.14).asScalar();
    Scalar value_vtmp1_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<bool,Map<Scalar,Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    bool copy_ktmp0 = true;
    Scalar copy_vtmp0_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar copy_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    bool copy_ktmp1 = false;
    Scalar copy_vtmp1_ktmp0 = unsafe(-1).asScalar();
    Scalar copy_vtmp1_vtmp0 = unsafe("pi").asScalar();
    Scalar copy_vtmp1_ktmp1 = unsafe(3.14).asScalar();
    Scalar copy_vtmp1_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<bool,Map<Scalar,Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<bool,Map<Scalar,Scalar>> other = {};
    assert(value == copy, "equals Map<bool,Map<Scalar,Scalar>>: {true: {<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}, false: {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}}");
    assert(!(value == other), "different Map<bool,Map<Scalar,Scalar>>: {true: {<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}, false: {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}} {}");
    assertEqual(true, true);
}
        
void test_Map_bool_Map_Scalar_Any___670() {
    
    Map<bool,Map<Scalar,Any>> value = {};
    
    Map<bool,Map<Scalar,Any>> copy = {};
    bool other_ktmp0 = true;
    
    Map<Scalar,Any> other_vtmp0 = {};
    Map<bool,Map<Scalar,Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<bool,Map<Scalar,Any>>: {}");
    assert(!(value == other), "different Map<bool,Map<Scalar,Any>>: {} {true: {}}");
    assertEqual(true, true);
}
        