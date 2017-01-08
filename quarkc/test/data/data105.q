
void test_Map_Scalar_Map_int_float___1041() {
    Scalar value_ktmp0 = unsafe(2147483645).asScalar();
    int value_vtmp0_ktmp0 = 4294967294;
    float value_vtmp0_vtmp0 = 0.0;
    Map<int,float> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(-0.0).asScalar();
    int value_vtmp1_ktmp0 = 4294967295;
    float value_vtmp1_vtmp0 = -0.0;
    int value_vtmp1_ktmp1 = 4294967296;
    float value_vtmp1_vtmp1 = 3.14;
    Map<int,float> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<int,float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(2147483645).asScalar();
    int copy_vtmp0_ktmp0 = 4294967294;
    float copy_vtmp0_vtmp0 = 0.0;
    Map<int,float> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(-0.0).asScalar();
    int copy_vtmp1_ktmp0 = 4294967295;
    float copy_vtmp1_vtmp0 = -0.0;
    int copy_vtmp1_ktmp1 = 4294967296;
    float copy_vtmp1_vtmp1 = 3.14;
    Map<int,float> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<int,float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<int,float>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<int,float>>: {<__main__.Scalar object at 0x7f9dce0f0850>: {4294967294: 0.0}, <__main__.Scalar object at 0x7f9dce0f0890>: {4294967295: -0.0, 4294967296: 3.14}}");
    assert(!(value == other), "different Map<Scalar,Map<int,float>>: {<__main__.Scalar object at 0x7f9dce0f0850>: {4294967294: 0.0}, <__main__.Scalar object at 0x7f9dce0f0890>: {4294967295: -0.0, 4294967296: 3.14}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_String___1042() {
    
    Map<Scalar,Map<int,String>> value = {};
    
    Map<Scalar,Map<int,String>> copy = {};
    Scalar other_ktmp0 = unsafe("").asScalar();
    
    Map<int,String> other_vtmp0 = {};
    Map<Scalar,Map<int,String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<int,String>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<int,String>>: {} {<__main__.Scalar object at 0x7f9dce0f08d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_String___1043() {
    Scalar value_ktmp0 = unsafe("").asScalar();
    
    Map<int,String> value_vtmp0 = {};
    Map<Scalar,Map<int,String>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe("").asScalar();
    
    Map<int,String> copy_vtmp0 = {};
    Map<Scalar,Map<int,String>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(true).asScalar();
    int other_vtmp0_ktmp0 = 4294967297;
    String other_vtmp0_vtmp0 = "asdf\n";
    Map<int,String> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(true).asScalar();
    int other_vtmp1_ktmp0 = 4294967298;
    String other_vtmp1_vtmp0 = "";
    int other_vtmp1_ktmp1 = 4294967299;
    String other_vtmp1_vtmp1 = "Hello World!";
    Map<int,String> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<int,String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<int,String>>: {<__main__.Scalar object at 0x7f9dce0f08d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<int,String>>: {<__main__.Scalar object at 0x7f9dce0f08d0>: {}} {<__main__.Scalar object at 0x7f9dce0f0910>: {4294967297: \"asdf\n\"}, <__main__.Scalar object at 0x7f9dce0e4f90>: {4294967298: \"\", 4294967299: \"Hello World!\"}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_String___1044() {
    Scalar value_ktmp0 = unsafe(true).asScalar();
    int value_vtmp0_ktmp0 = 4294967297;
    String value_vtmp0_vtmp0 = "asdf\n";
    Map<int,String> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(true).asScalar();
    int value_vtmp1_ktmp0 = 4294967298;
    String value_vtmp1_vtmp0 = "";
    int value_vtmp1_ktmp1 = 4294967299;
    String value_vtmp1_vtmp1 = "Hello World!";
    Map<int,String> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<int,String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(true).asScalar();
    int copy_vtmp0_ktmp0 = 4294967297;
    String copy_vtmp0_vtmp0 = "asdf\n";
    Map<int,String> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(true).asScalar();
    int copy_vtmp1_ktmp0 = 4294967298;
    String copy_vtmp1_vtmp0 = "";
    int copy_vtmp1_ktmp1 = 4294967299;
    String copy_vtmp1_vtmp1 = "Hello World!";
    Map<int,String> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<int,String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<int,String>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<int,String>>: {<__main__.Scalar object at 0x7f9dce0f0910>: {4294967297: \"asdf\n\"}, <__main__.Scalar object at 0x7f9dce0e4f90>: {4294967298: \"\", 4294967299: \"Hello World!\"}}");
    assert(!(value == other), "different Map<Scalar,Map<int,String>>: {<__main__.Scalar object at 0x7f9dce0f0910>: {4294967297: \"asdf\n\"}, <__main__.Scalar object at 0x7f9dce0e4f90>: {4294967298: \"\", 4294967299: \"Hello World!\"}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_Scalar___1045() {
    
    Map<Scalar,Map<int,Scalar>> value = {};
    
    Map<Scalar,Map<int,Scalar>> copy = {};
    Scalar other_ktmp0 = unsafe(-3).asScalar();
    
    Map<int,Scalar> other_vtmp0 = {};
    Map<Scalar,Map<int,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<int,Scalar>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<int,Scalar>>: {} {<__main__.Scalar object at 0x7f9dce0e44d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_Scalar___1046() {
    Scalar value_ktmp0 = unsafe(-3).asScalar();
    
    Map<int,Scalar> value_vtmp0 = {};
    Map<Scalar,Map<int,Scalar>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(-3).asScalar();
    
    Map<int,Scalar> copy_vtmp0 = {};
    Map<Scalar,Map<int,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(0.0).asScalar();
    int other_vtmp0_ktmp0 = -3;
    Scalar other_vtmp0_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe("").asScalar();
    int other_vtmp1_ktmp0 = -2;
    Scalar other_vtmp1_vtmp0 = unsafe(false).asScalar();
    int other_vtmp1_ktmp1 = -1;
    Scalar other_vtmp1_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<int,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<int,Scalar>>: {<__main__.Scalar object at 0x7f9dce0e44d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<int,Scalar>>: {<__main__.Scalar object at 0x7f9dce0e44d0>: {}} {<__main__.Scalar object at 0x7f9dce0f0110>: {-3: <__main__.Scalar object at 0x7f9dce0f05d0>}, <__main__.Scalar object at 0x7f9dce0f0090>: {-2: <__main__.Scalar object at 0x7f9dce0f0610>, -1: <__main__.Scalar object at 0x7f9dce0f0650>}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_Scalar___1047() {
    Scalar value_ktmp0 = unsafe(0.0).asScalar();
    int value_vtmp0_ktmp0 = -3;
    Scalar value_vtmp0_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe("").asScalar();
    int value_vtmp1_ktmp0 = -2;
    Scalar value_vtmp1_vtmp0 = unsafe(false).asScalar();
    int value_vtmp1_ktmp1 = -1;
    Scalar value_vtmp1_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<int,Scalar>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(0.0).asScalar();
    int copy_vtmp0_ktmp0 = -3;
    Scalar copy_vtmp0_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe("").asScalar();
    int copy_vtmp1_ktmp0 = -2;
    Scalar copy_vtmp1_vtmp0 = unsafe(false).asScalar();
    int copy_vtmp1_ktmp1 = -1;
    Scalar copy_vtmp1_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<int,Scalar>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<int,Scalar>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<int,Scalar>>: {<__main__.Scalar object at 0x7f9dce0f0110>: {-3: <__main__.Scalar object at 0x7f9dce0f05d0>}, <__main__.Scalar object at 0x7f9dce0f0090>: {-2: <__main__.Scalar object at 0x7f9dce0f0610>, -1: <__main__.Scalar object at 0x7f9dce0f0650>}}");
    assert(!(value == other), "different Map<Scalar,Map<int,Scalar>>: {<__main__.Scalar object at 0x7f9dce0f0110>: {-3: <__main__.Scalar object at 0x7f9dce0f05d0>}, <__main__.Scalar object at 0x7f9dce0f0090>: {-2: <__main__.Scalar object at 0x7f9dce0f0610>, -1: <__main__.Scalar object at 0x7f9dce0f0650>}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_Any___1048() {
    
    Map<Scalar,Map<int,Any>> value = {};
    
    Map<Scalar,Map<int,Any>> copy = {};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    
    Map<int,Any> other_vtmp0 = {};
    Map<Scalar,Map<int,Any>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<int,Any>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<int,Any>>: {} {<__main__.Scalar object at 0x7f9dce0f01d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_Any___1049() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    
    Map<int,Any> value_vtmp0 = {};
    Map<Scalar,Map<int,Any>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    
    Map<int,Any> copy_vtmp0 = {};
    Map<Scalar,Map<int,Any>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(-2).asScalar();
    int other_vtmp0_ktmp0 = 0;
    int other_vtmp0_vtmp0_tmp = 2147483647;
    Any other_vtmp0_vtmp0 = unsafe(other_vtmp0_vtmp0_tmp);
    Map<int,Any> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(-0.0).asScalar();
    int other_vtmp1_ktmp0 = 1;
    float other_vtmp1_vtmp0_tmp = 0.0;
    Any other_vtmp1_vtmp0 = unsafe(other_vtmp1_vtmp0_tmp);
    int other_vtmp1_ktmp1 = 2;
    String other_vtmp1_vtmp1_tmp = "pi";
    Any other_vtmp1_vtmp1 = unsafe(other_vtmp1_vtmp1_tmp);
    Map<int,Any> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<int,Any>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<int,Any>>: {<__main__.Scalar object at 0x7f9dce0f01d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<int,Any>>: {<__main__.Scalar object at 0x7f9dce0f01d0>: {}} {<__main__.Scalar object at 0x7f9dce0f0210>: {0: unsafe(2147483647)}, <__main__.Scalar object at 0x7f9dce0f0290>: {1: unsafe(0.0), 2: unsafe(\"pi\")}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_int_Any___1050() {
    Scalar value_ktmp0 = unsafe(-2).asScalar();
    int value_vtmp0_ktmp0 = 0;
    int value_vtmp0_vtmp0_tmp = 2147483647;
    Any value_vtmp0_vtmp0 = unsafe(value_vtmp0_vtmp0_tmp);
    Map<int,Any> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(-0.0).asScalar();
    int value_vtmp1_ktmp0 = 1;
    float value_vtmp1_vtmp0_tmp = 0.0;
    Any value_vtmp1_vtmp0 = unsafe(value_vtmp1_vtmp0_tmp);
    int value_vtmp1_ktmp1 = 2;
    String value_vtmp1_vtmp1_tmp = "pi";
    Any value_vtmp1_vtmp1 = unsafe(value_vtmp1_vtmp1_tmp);
    Map<int,Any> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<int,Any>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(-2).asScalar();
    int copy_vtmp0_ktmp0 = 0;
    int copy_vtmp0_vtmp0_tmp = 2147483647;
    Any copy_vtmp0_vtmp0 = unsafe(copy_vtmp0_vtmp0_tmp);
    Map<int,Any> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(-0.0).asScalar();
    int copy_vtmp1_ktmp0 = 1;
    float copy_vtmp1_vtmp0_tmp = 0.0;
    Any copy_vtmp1_vtmp0 = unsafe(copy_vtmp1_vtmp0_tmp);
    int copy_vtmp1_ktmp1 = 2;
    String copy_vtmp1_vtmp1_tmp = "pi";
    Any copy_vtmp1_vtmp1 = unsafe(copy_vtmp1_vtmp1_tmp);
    Map<int,Any> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<int,Any>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<int,Any>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<int,Any>>: {<__main__.Scalar object at 0x7f9dce0f0210>: {0: unsafe(2147483647)}, <__main__.Scalar object at 0x7f9dce0f0290>: {1: unsafe(0.0), 2: unsafe(\"pi\")}}");
    assert(!(value == other), "different Map<Scalar,Map<int,Any>>: {<__main__.Scalar object at 0x7f9dce0f0210>: {0: unsafe(2147483647)}, <__main__.Scalar object at 0x7f9dce0f0290>: {1: unsafe(0.0), 2: unsafe(\"pi\")}} {}");
    assertEqual(true, true);
}
        