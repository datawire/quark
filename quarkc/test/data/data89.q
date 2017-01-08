
void test_Map_float_Map_Scalar_String___881() {
    float value_ktmp0 = 0.0;
    
    Map<Scalar,String> value_vtmp0 = {};
    Map<float,Map<Scalar,String>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<Scalar,String> copy_vtmp0 = {};
    Map<float,Map<Scalar,String>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    Scalar other_vtmp0_ktmp0 = unsafe(false).asScalar();
    String other_vtmp0_vtmp0 = "\n";
    Map<Scalar,String> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    Scalar other_vtmp1_ktmp0 = unsafe(-2).asScalar();
    String other_vtmp1_vtmp0 = "asdf\n";
    Scalar other_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    String other_vtmp1_vtmp1 = "";
    Map<Scalar,String> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<Scalar,String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<Scalar,String>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<Scalar,String>>: {0.0: {}} {-0.0: {<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}, 3.14: {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_Scalar_String___882() {
    float value_ktmp0 = -0.0;
    Scalar value_vtmp0_ktmp0 = unsafe(false).asScalar();
    String value_vtmp0_vtmp0 = "\n";
    Map<Scalar,String> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    Scalar value_vtmp1_ktmp0 = unsafe(-2).asScalar();
    String value_vtmp1_vtmp0 = "asdf\n";
    Scalar value_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    String value_vtmp1_vtmp1 = "";
    Map<Scalar,String> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<Scalar,String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    Scalar copy_vtmp0_ktmp0 = unsafe(false).asScalar();
    String copy_vtmp0_vtmp0 = "\n";
    Map<Scalar,String> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    Scalar copy_vtmp1_ktmp0 = unsafe(-2).asScalar();
    String copy_vtmp1_vtmp0 = "asdf\n";
    Scalar copy_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    String copy_vtmp1_vtmp1 = "";
    Map<Scalar,String> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<Scalar,String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<Scalar,String>> other = {};
    assert(value == copy, "equals Map<float,Map<Scalar,String>>: {-0.0: {<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}, 3.14: {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}}");
    assert(!(value == other), "different Map<float,Map<Scalar,String>>: {-0.0: {<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}, 3.14: {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_Scalar_Scalar___883() {
    
    Map<float,Map<Scalar,Scalar>> value = {};
    
    Map<float,Map<Scalar,Scalar>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<Scalar,Scalar> other_vtmp0 = {};
    Map<float,Map<Scalar,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<Scalar,Scalar>>: {}");
    assert(!(value == other), "different Map<float,Map<Scalar,Scalar>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_Scalar_Scalar___884() {
    float value_ktmp0 = 0.0;
    
    Map<Scalar,Scalar> value_vtmp0 = {};
    Map<float,Map<Scalar,Scalar>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<Scalar,Scalar> copy_vtmp0 = {};
    Map<float,Map<Scalar,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    Scalar other_vtmp0_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar other_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    Scalar other_vtmp1_ktmp0 = unsafe(-1).asScalar();
    Scalar other_vtmp1_vtmp0 = unsafe("pi").asScalar();
    Scalar other_vtmp1_ktmp1 = unsafe(3.14).asScalar();
    Scalar other_vtmp1_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<Scalar,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<Scalar,Scalar>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<Scalar,Scalar>>: {0.0: {}} {-0.0: {<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}, 3.14: {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_Scalar_Scalar___885() {
    float value_ktmp0 = -0.0;
    Scalar value_vtmp0_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar value_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    Scalar value_vtmp1_ktmp0 = unsafe(-1).asScalar();
    Scalar value_vtmp1_vtmp0 = unsafe("pi").asScalar();
    Scalar value_vtmp1_ktmp1 = unsafe(3.14).asScalar();
    Scalar value_vtmp1_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<Scalar,Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    Scalar copy_vtmp0_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar copy_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    Scalar copy_vtmp1_ktmp0 = unsafe(-1).asScalar();
    Scalar copy_vtmp1_vtmp0 = unsafe("pi").asScalar();
    Scalar copy_vtmp1_ktmp1 = unsafe(3.14).asScalar();
    Scalar copy_vtmp1_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<Scalar,Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<Scalar,Scalar>> other = {};
    assert(value == copy, "equals Map<float,Map<Scalar,Scalar>>: {-0.0: {<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}, 3.14: {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}}");
    assert(!(value == other), "different Map<float,Map<Scalar,Scalar>>: {-0.0: {<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}, 3.14: {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_Scalar_Any___886() {
    
    Map<float,Map<Scalar,Any>> value = {};
    
    Map<float,Map<Scalar,Any>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<Scalar,Any> other_vtmp0 = {};
    Map<float,Map<Scalar,Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<Scalar,Any>>: {}");
    assert(!(value == other), "different Map<float,Map<Scalar,Any>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_Scalar_Any___887() {
    float value_ktmp0 = 0.0;
    
    Map<Scalar,Any> value_vtmp0 = {};
    Map<float,Map<Scalar,Any>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<Scalar,Any> copy_vtmp0 = {};
    Map<float,Map<Scalar,Any>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    Scalar other_vtmp0_ktmp0 = unsafe(0).asScalar();
    bool other_vtmp0_vtmp0_tmp = true;
    Any other_vtmp0_vtmp0 = unsafe(other_vtmp0_vtmp0_tmp);
    Map<Scalar,Any> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    Scalar other_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    int other_vtmp1_vtmp0_tmp = 2147483649;
    Any other_vtmp1_vtmp0 = unsafe(other_vtmp1_vtmp0_tmp);
    Scalar other_vtmp1_ktmp1 = unsafe("pie").asScalar();
    float other_vtmp1_vtmp1_tmp = 3.14;
    Any other_vtmp1_vtmp1 = unsafe(other_vtmp1_vtmp1_tmp);
    Map<Scalar,Any> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<Scalar,Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<Scalar,Any>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<Scalar,Any>>: {0.0: {}} {-0.0: {<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}, 3.14: {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_Scalar_Any___888() {
    float value_ktmp0 = -0.0;
    Scalar value_vtmp0_ktmp0 = unsafe(0).asScalar();
    bool value_vtmp0_vtmp0_tmp = true;
    Any value_vtmp0_vtmp0 = unsafe(value_vtmp0_vtmp0_tmp);
    Map<Scalar,Any> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    Scalar value_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    int value_vtmp1_vtmp0_tmp = 2147483649;
    Any value_vtmp1_vtmp0 = unsafe(value_vtmp1_vtmp0_tmp);
    Scalar value_vtmp1_ktmp1 = unsafe("pie").asScalar();
    float value_vtmp1_vtmp1_tmp = 3.14;
    Any value_vtmp1_vtmp1 = unsafe(value_vtmp1_vtmp1_tmp);
    Map<Scalar,Any> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<Scalar,Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    Scalar copy_vtmp0_ktmp0 = unsafe(0).asScalar();
    bool copy_vtmp0_vtmp0_tmp = true;
    Any copy_vtmp0_vtmp0 = unsafe(copy_vtmp0_vtmp0_tmp);
    Map<Scalar,Any> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    Scalar copy_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    int copy_vtmp1_vtmp0_tmp = 2147483649;
    Any copy_vtmp1_vtmp0 = unsafe(copy_vtmp1_vtmp0_tmp);
    Scalar copy_vtmp1_ktmp1 = unsafe("pie").asScalar();
    float copy_vtmp1_vtmp1_tmp = 3.14;
    Any copy_vtmp1_vtmp1 = unsafe(copy_vtmp1_vtmp1_tmp);
    Map<Scalar,Any> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<Scalar,Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<Scalar,Any>> other = {};
    assert(value == copy, "equals Map<float,Map<Scalar,Any>>: {-0.0: {<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}, 3.14: {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}}");
    assert(!(value == other), "different Map<float,Map<Scalar,Any>>: {-0.0: {<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}, 3.14: {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}} {}");
    assertEqual(true, true);
}
        
void test_Map_String_List_bool___889() {
    
    Map<String,List<bool>> value = {};
    
    Map<String,List<bool>> copy = {};
    String other_ktmp0 = "asdf\n";
    
    List<bool> other_vtmp0 = [];
    Map<String,List<bool>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<String,List<bool>>: {}");
    assert(!(value == other), "different Map<String,List<bool>>: {} {\"asdf\n\": []}");
    assertEqual(true, true);
}
        
void test_Map_String_List_bool___890() {
    String value_ktmp0 = "asdf\n";
    
    List<bool> value_vtmp0 = [];
    Map<String,List<bool>> value = {value_ktmp0: value_vtmp0};
    String copy_ktmp0 = "asdf\n";
    
    List<bool> copy_vtmp0 = [];
    Map<String,List<bool>> copy = {copy_ktmp0: copy_vtmp0};
    String other_ktmp0 = "";
    bool other_vtmp0_tmp0 = false;
    List<bool> other_vtmp0 = [other_vtmp0_tmp0];
    String other_ktmp1 = "Hello World!";
    bool other_vtmp1_tmp0 = true;
    bool other_vtmp1_tmp1 = false;
    List<bool> other_vtmp1 = [other_vtmp1_tmp0, other_vtmp1_tmp1];
    Map<String,List<bool>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<String,List<bool>>: {\"asdf\n\": []}");
    assert(!(value == other), "different Map<String,List<bool>>: {\"asdf\n\": []} {\"\": [false], \"Hello World!\": [true, false]}");
    assertEqual(true, true);
}
        