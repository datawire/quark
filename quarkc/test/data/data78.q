
void test_Map_int_Map_Scalar_float___771() {
    int value_ktmp0 = 2147483651;
    Scalar value_vtmp0_ktmp0 = unsafe(-3).asScalar();
    float value_vtmp0_vtmp0 = 0.0;
    Map<Scalar,float> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    int value_ktmp1 = 4294967293;
    Scalar value_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    float value_vtmp1_vtmp0 = -0.0;
    Scalar value_vtmp1_ktmp1 = unsafe("").asScalar();
    float value_vtmp1_vtmp1 = 3.14;
    Map<Scalar,float> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<int,Map<Scalar,float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 2147483651;
    Scalar copy_vtmp0_ktmp0 = unsafe(-3).asScalar();
    float copy_vtmp0_vtmp0 = 0.0;
    Map<Scalar,float> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    int copy_ktmp1 = 4294967293;
    Scalar copy_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    float copy_vtmp1_vtmp0 = -0.0;
    Scalar copy_vtmp1_ktmp1 = unsafe("").asScalar();
    float copy_vtmp1_vtmp1 = 3.14;
    Map<Scalar,float> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<int,Map<Scalar,float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,Map<Scalar,float>> other = {};
    assert(value == copy, "equals Map<int,Map<Scalar,float>>: {2147483651: {<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}, 4294967293: {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}}");
    assert(!(value == other), "different Map<int,Map<Scalar,float>>: {2147483651: {<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}, 4294967293: {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}} {}");
    assertEqual(true, true);
}
        
void test_Map_int_Map_Scalar_String___772() {
    
    Map<int,Map<Scalar,String>> value = {};
    
    Map<int,Map<Scalar,String>> copy = {};
    int other_ktmp0 = 4294967294;
    
    Map<Scalar,String> other_vtmp0 = {};
    Map<int,Map<Scalar,String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,Map<Scalar,String>>: {}");
    assert(!(value == other), "different Map<int,Map<Scalar,String>>: {} {4294967294: {}}");
    assertEqual(true, true);
}
        
void test_Map_int_Map_Scalar_String___773() {
    int value_ktmp0 = 4294967294;
    
    Map<Scalar,String> value_vtmp0 = {};
    Map<int,Map<Scalar,String>> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 4294967294;
    
    Map<Scalar,String> copy_vtmp0 = {};
    Map<int,Map<Scalar,String>> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 4294967295;
    Scalar other_vtmp0_ktmp0 = unsafe(false).asScalar();
    String other_vtmp0_vtmp0 = "\n";
    Map<Scalar,String> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    int other_ktmp1 = 4294967296;
    Scalar other_vtmp1_ktmp0 = unsafe(-2).asScalar();
    String other_vtmp1_vtmp0 = "asdf\n";
    Scalar other_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    String other_vtmp1_vtmp1 = "";
    Map<Scalar,String> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<int,Map<Scalar,String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,Map<Scalar,String>>: {4294967294: {}}");
    assert(!(value == other), "different Map<int,Map<Scalar,String>>: {4294967294: {}} {4294967295: {<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}, 4294967296: {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}}");
    assertEqual(true, true);
}
        
void test_Map_int_Map_Scalar_String___774() {
    int value_ktmp0 = 4294967295;
    Scalar value_vtmp0_ktmp0 = unsafe(false).asScalar();
    String value_vtmp0_vtmp0 = "\n";
    Map<Scalar,String> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    int value_ktmp1 = 4294967296;
    Scalar value_vtmp1_ktmp0 = unsafe(-2).asScalar();
    String value_vtmp1_vtmp0 = "asdf\n";
    Scalar value_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    String value_vtmp1_vtmp1 = "";
    Map<Scalar,String> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<int,Map<Scalar,String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 4294967295;
    Scalar copy_vtmp0_ktmp0 = unsafe(false).asScalar();
    String copy_vtmp0_vtmp0 = "\n";
    Map<Scalar,String> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    int copy_ktmp1 = 4294967296;
    Scalar copy_vtmp1_ktmp0 = unsafe(-2).asScalar();
    String copy_vtmp1_vtmp0 = "asdf\n";
    Scalar copy_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    String copy_vtmp1_vtmp1 = "";
    Map<Scalar,String> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<int,Map<Scalar,String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,Map<Scalar,String>> other = {};
    assert(value == copy, "equals Map<int,Map<Scalar,String>>: {4294967295: {<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}, 4294967296: {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}}");
    assert(!(value == other), "different Map<int,Map<Scalar,String>>: {4294967295: {<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}, 4294967296: {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}} {}");
    assertEqual(true, true);
}
        
void test_Map_int_Map_Scalar_Scalar___775() {
    
    Map<int,Map<Scalar,Scalar>> value = {};
    
    Map<int,Map<Scalar,Scalar>> copy = {};
    int other_ktmp0 = 4294967297;
    
    Map<Scalar,Scalar> other_vtmp0 = {};
    Map<int,Map<Scalar,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,Map<Scalar,Scalar>>: {}");
    assert(!(value == other), "different Map<int,Map<Scalar,Scalar>>: {} {4294967297: {}}");
    assertEqual(true, true);
}
        
void test_Map_int_Map_Scalar_Scalar___776() {
    int value_ktmp0 = 4294967297;
    
    Map<Scalar,Scalar> value_vtmp0 = {};
    Map<int,Map<Scalar,Scalar>> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = 4294967297;
    
    Map<Scalar,Scalar> copy_vtmp0 = {};
    Map<int,Map<Scalar,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = 4294967298;
    Scalar other_vtmp0_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar other_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    int other_ktmp1 = 4294967299;
    Scalar other_vtmp1_ktmp0 = unsafe(-1).asScalar();
    Scalar other_vtmp1_vtmp0 = unsafe("pi").asScalar();
    Scalar other_vtmp1_ktmp1 = unsafe(3.14).asScalar();
    Scalar other_vtmp1_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<int,Map<Scalar,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,Map<Scalar,Scalar>>: {4294967297: {}}");
    assert(!(value == other), "different Map<int,Map<Scalar,Scalar>>: {4294967297: {}} {4294967298: {<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}, 4294967299: {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}}");
    assertEqual(true, true);
}
        
void test_Map_int_Map_Scalar_Scalar___777() {
    int value_ktmp0 = 4294967298;
    Scalar value_vtmp0_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar value_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    int value_ktmp1 = 4294967299;
    Scalar value_vtmp1_ktmp0 = unsafe(-1).asScalar();
    Scalar value_vtmp1_vtmp0 = unsafe("pi").asScalar();
    Scalar value_vtmp1_ktmp1 = unsafe(3.14).asScalar();
    Scalar value_vtmp1_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<int,Map<Scalar,Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = 4294967298;
    Scalar copy_vtmp0_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar copy_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    int copy_ktmp1 = 4294967299;
    Scalar copy_vtmp1_ktmp0 = unsafe(-1).asScalar();
    Scalar copy_vtmp1_vtmp0 = unsafe("pi").asScalar();
    Scalar copy_vtmp1_ktmp1 = unsafe(3.14).asScalar();
    Scalar copy_vtmp1_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<int,Map<Scalar,Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,Map<Scalar,Scalar>> other = {};
    assert(value == copy, "equals Map<int,Map<Scalar,Scalar>>: {4294967298: {<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}, 4294967299: {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}}");
    assert(!(value == other), "different Map<int,Map<Scalar,Scalar>>: {4294967298: {<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}, 4294967299: {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}} {}");
    assertEqual(true, true);
}
        
void test_Map_int_Map_Scalar_Any___778() {
    
    Map<int,Map<Scalar,Any>> value = {};
    
    Map<int,Map<Scalar,Any>> copy = {};
    int other_ktmp0 = -3;
    
    Map<Scalar,Any> other_vtmp0 = {};
    Map<int,Map<Scalar,Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<int,Map<Scalar,Any>>: {}");
    assert(!(value == other), "different Map<int,Map<Scalar,Any>>: {} {-3: {}}");
    assertEqual(true, true);
}
        
void test_Map_int_Map_Scalar_Any___779() {
    int value_ktmp0 = -3;
    
    Map<Scalar,Any> value_vtmp0 = {};
    Map<int,Map<Scalar,Any>> value = {value_ktmp0: value_vtmp0};
    int copy_ktmp0 = -3;
    
    Map<Scalar,Any> copy_vtmp0 = {};
    Map<int,Map<Scalar,Any>> copy = {copy_ktmp0: copy_vtmp0};
    int other_ktmp0 = -2;
    Scalar other_vtmp0_ktmp0 = unsafe(0).asScalar();
    bool other_vtmp0_vtmp0_tmp = true;
    Any other_vtmp0_vtmp0 = unsafe(other_vtmp0_vtmp0_tmp);
    Map<Scalar,Any> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    int other_ktmp1 = -1;
    Scalar other_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    int other_vtmp1_vtmp0_tmp = 2147483649;
    Any other_vtmp1_vtmp0 = unsafe(other_vtmp1_vtmp0_tmp);
    Scalar other_vtmp1_ktmp1 = unsafe("pie").asScalar();
    float other_vtmp1_vtmp1_tmp = 3.14;
    Any other_vtmp1_vtmp1 = unsafe(other_vtmp1_vtmp1_tmp);
    Map<Scalar,Any> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<int,Map<Scalar,Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<int,Map<Scalar,Any>>: {-3: {}}");
    assert(!(value == other), "different Map<int,Map<Scalar,Any>>: {-3: {}} {-2: {<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}, -1: {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}}");
    assertEqual(true, true);
}
        
void test_Map_int_Map_Scalar_Any___780() {
    int value_ktmp0 = -2;
    Scalar value_vtmp0_ktmp0 = unsafe(0).asScalar();
    bool value_vtmp0_vtmp0_tmp = true;
    Any value_vtmp0_vtmp0 = unsafe(value_vtmp0_vtmp0_tmp);
    Map<Scalar,Any> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    int value_ktmp1 = -1;
    Scalar value_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    int value_vtmp1_vtmp0_tmp = 2147483649;
    Any value_vtmp1_vtmp0 = unsafe(value_vtmp1_vtmp0_tmp);
    Scalar value_vtmp1_ktmp1 = unsafe("pie").asScalar();
    float value_vtmp1_vtmp1_tmp = 3.14;
    Any value_vtmp1_vtmp1 = unsafe(value_vtmp1_vtmp1_tmp);
    Map<Scalar,Any> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<int,Map<Scalar,Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    int copy_ktmp0 = -2;
    Scalar copy_vtmp0_ktmp0 = unsafe(0).asScalar();
    bool copy_vtmp0_vtmp0_tmp = true;
    Any copy_vtmp0_vtmp0 = unsafe(copy_vtmp0_vtmp0_tmp);
    Map<Scalar,Any> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    int copy_ktmp1 = -1;
    Scalar copy_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    int copy_vtmp1_vtmp0_tmp = 2147483649;
    Any copy_vtmp1_vtmp0 = unsafe(copy_vtmp1_vtmp0_tmp);
    Scalar copy_vtmp1_ktmp1 = unsafe("pie").asScalar();
    float copy_vtmp1_vtmp1_tmp = 3.14;
    Any copy_vtmp1_vtmp1 = unsafe(copy_vtmp1_vtmp1_tmp);
    Map<Scalar,Any> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<int,Map<Scalar,Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<int,Map<Scalar,Any>> other = {};
    assert(value == copy, "equals Map<int,Map<Scalar,Any>>: {-2: {<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}, -1: {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}}");
    assert(!(value == other), "different Map<int,Map<Scalar,Any>>: {-2: {<__main__.Scalar object at 0x7f9dce0f0450>: unsafe(true)}, -1: {<__main__.Scalar object at 0x7f9dce0f0490>: unsafe(2147483649), <__main__.Scalar object at 0x7f9dce0f04d0>: unsafe(3.14)}} {}");
    assertEqual(true, true);
}
        