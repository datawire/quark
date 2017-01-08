
void test_Map_float_Map_int_int___821() {
    float value_ktmp0 = 0.0;
    
    Map<int,int> value_vtmp0 = {};
    Map<float,Map<int,int>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<int,int> copy_vtmp0 = {};
    Map<float,Map<int,int>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    int other_vtmp0_ktmp0 = 2147483647;
    int other_vtmp0_vtmp0 = 2147483648;
    Map<int,int> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    int other_vtmp1_ktmp0 = 2147483649;
    int other_vtmp1_vtmp0 = 2147483651;
    int other_vtmp1_ktmp1 = 2147483650;
    int other_vtmp1_vtmp1 = 4294967293;
    Map<int,int> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<int,int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<int,int>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<int,int>>: {0.0: {}} {-0.0: {2147483647: 2147483648}, 3.14: {2147483649: 2147483651, 2147483650: 4294967293}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_int_int___822() {
    float value_ktmp0 = -0.0;
    int value_vtmp0_ktmp0 = 2147483647;
    int value_vtmp0_vtmp0 = 2147483648;
    Map<int,int> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    int value_vtmp1_ktmp0 = 2147483649;
    int value_vtmp1_vtmp0 = 2147483651;
    int value_vtmp1_ktmp1 = 2147483650;
    int value_vtmp1_vtmp1 = 4294967293;
    Map<int,int> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<int,int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    int copy_vtmp0_ktmp0 = 2147483647;
    int copy_vtmp0_vtmp0 = 2147483648;
    Map<int,int> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    int copy_vtmp1_ktmp0 = 2147483649;
    int copy_vtmp1_vtmp0 = 2147483651;
    int copy_vtmp1_ktmp1 = 2147483650;
    int copy_vtmp1_vtmp1 = 4294967293;
    Map<int,int> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<int,int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<int,int>> other = {};
    assert(value == copy, "equals Map<float,Map<int,int>>: {-0.0: {2147483647: 2147483648}, 3.14: {2147483649: 2147483651, 2147483650: 4294967293}}");
    assert(!(value == other), "different Map<float,Map<int,int>>: {-0.0: {2147483647: 2147483648}, 3.14: {2147483649: 2147483651, 2147483650: 4294967293}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_int_float___823() {
    
    Map<float,Map<int,float>> value = {};
    
    Map<float,Map<int,float>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<int,float> other_vtmp0 = {};
    Map<float,Map<int,float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<int,float>>: {}");
    assert(!(value == other), "different Map<float,Map<int,float>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_int_float___824() {
    float value_ktmp0 = 0.0;
    
    Map<int,float> value_vtmp0 = {};
    Map<float,Map<int,float>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<int,float> copy_vtmp0 = {};
    Map<float,Map<int,float>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    int other_vtmp0_ktmp0 = 4294967294;
    float other_vtmp0_vtmp0 = 0.0;
    Map<int,float> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    int other_vtmp1_ktmp0 = 4294967295;
    float other_vtmp1_vtmp0 = -0.0;
    int other_vtmp1_ktmp1 = 4294967296;
    float other_vtmp1_vtmp1 = 3.14;
    Map<int,float> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<int,float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<int,float>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<int,float>>: {0.0: {}} {-0.0: {4294967294: 0.0}, 3.14: {4294967295: -0.0, 4294967296: 3.14}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_int_float___825() {
    float value_ktmp0 = -0.0;
    int value_vtmp0_ktmp0 = 4294967294;
    float value_vtmp0_vtmp0 = 0.0;
    Map<int,float> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    int value_vtmp1_ktmp0 = 4294967295;
    float value_vtmp1_vtmp0 = -0.0;
    int value_vtmp1_ktmp1 = 4294967296;
    float value_vtmp1_vtmp1 = 3.14;
    Map<int,float> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<int,float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    int copy_vtmp0_ktmp0 = 4294967294;
    float copy_vtmp0_vtmp0 = 0.0;
    Map<int,float> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    int copy_vtmp1_ktmp0 = 4294967295;
    float copy_vtmp1_vtmp0 = -0.0;
    int copy_vtmp1_ktmp1 = 4294967296;
    float copy_vtmp1_vtmp1 = 3.14;
    Map<int,float> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<int,float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<int,float>> other = {};
    assert(value == copy, "equals Map<float,Map<int,float>>: {-0.0: {4294967294: 0.0}, 3.14: {4294967295: -0.0, 4294967296: 3.14}}");
    assert(!(value == other), "different Map<float,Map<int,float>>: {-0.0: {4294967294: 0.0}, 3.14: {4294967295: -0.0, 4294967296: 3.14}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_int_String___826() {
    
    Map<float,Map<int,String>> value = {};
    
    Map<float,Map<int,String>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<int,String> other_vtmp0 = {};
    Map<float,Map<int,String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<int,String>>: {}");
    assert(!(value == other), "different Map<float,Map<int,String>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_int_String___827() {
    float value_ktmp0 = 0.0;
    
    Map<int,String> value_vtmp0 = {};
    Map<float,Map<int,String>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<int,String> copy_vtmp0 = {};
    Map<float,Map<int,String>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    int other_vtmp0_ktmp0 = 4294967297;
    String other_vtmp0_vtmp0 = "asdf\n";
    Map<int,String> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    int other_vtmp1_ktmp0 = 4294967298;
    String other_vtmp1_vtmp0 = "";
    int other_vtmp1_ktmp1 = 4294967299;
    String other_vtmp1_vtmp1 = "Hello World!";
    Map<int,String> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<int,String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<int,String>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<int,String>>: {0.0: {}} {-0.0: {4294967297: \"asdf\n\"}, 3.14: {4294967298: \"\", 4294967299: \"Hello World!\"}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_int_String___828() {
    float value_ktmp0 = -0.0;
    int value_vtmp0_ktmp0 = 4294967297;
    String value_vtmp0_vtmp0 = "asdf\n";
    Map<int,String> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    int value_vtmp1_ktmp0 = 4294967298;
    String value_vtmp1_vtmp0 = "";
    int value_vtmp1_ktmp1 = 4294967299;
    String value_vtmp1_vtmp1 = "Hello World!";
    Map<int,String> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<int,String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    int copy_vtmp0_ktmp0 = 4294967297;
    String copy_vtmp0_vtmp0 = "asdf\n";
    Map<int,String> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    int copy_vtmp1_ktmp0 = 4294967298;
    String copy_vtmp1_vtmp0 = "";
    int copy_vtmp1_ktmp1 = 4294967299;
    String copy_vtmp1_vtmp1 = "Hello World!";
    Map<int,String> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<int,String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<int,String>> other = {};
    assert(value == copy, "equals Map<float,Map<int,String>>: {-0.0: {4294967297: \"asdf\n\"}, 3.14: {4294967298: \"\", 4294967299: \"Hello World!\"}}");
    assert(!(value == other), "different Map<float,Map<int,String>>: {-0.0: {4294967297: \"asdf\n\"}, 3.14: {4294967298: \"\", 4294967299: \"Hello World!\"}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_int_Scalar___829() {
    
    Map<float,Map<int,Scalar>> value = {};
    
    Map<float,Map<int,Scalar>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<int,Scalar> other_vtmp0 = {};
    Map<float,Map<int,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<int,Scalar>>: {}");
    assert(!(value == other), "different Map<float,Map<int,Scalar>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_int_Scalar___830() {
    float value_ktmp0 = 0.0;
    
    Map<int,Scalar> value_vtmp0 = {};
    Map<float,Map<int,Scalar>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<int,Scalar> copy_vtmp0 = {};
    Map<float,Map<int,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    int other_vtmp0_ktmp0 = -3;
    Scalar other_vtmp0_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    int other_vtmp1_ktmp0 = -2;
    Scalar other_vtmp1_vtmp0 = unsafe(false).asScalar();
    int other_vtmp1_ktmp1 = -1;
    Scalar other_vtmp1_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<int,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<int,Scalar>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<int,Scalar>>: {0.0: {}} {-0.0: {-3: <__main__.Scalar object at 0x7f9dce0f05d0>}, 3.14: {-2: <__main__.Scalar object at 0x7f9dce0f0610>, -1: <__main__.Scalar object at 0x7f9dce0f0650>}}");
    assertEqual(true, true);
}
        