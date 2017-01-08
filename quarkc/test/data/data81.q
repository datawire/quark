
void test_Map_float_Map_bool_bool___801() {
    float value_ktmp0 = -0.0;
    bool value_vtmp0_ktmp0 = true;
    bool value_vtmp0_vtmp0 = false;
    Map<bool,bool> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    bool value_vtmp1_ktmp0 = true;
    bool value_vtmp1_vtmp0 = true;
    bool value_vtmp1_ktmp1 = false;
    bool value_vtmp1_vtmp1 = false;
    Map<bool,bool> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<bool,bool>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    bool copy_vtmp0_ktmp0 = true;
    bool copy_vtmp0_vtmp0 = false;
    Map<bool,bool> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    bool copy_vtmp1_ktmp0 = true;
    bool copy_vtmp1_vtmp0 = true;
    bool copy_vtmp1_ktmp1 = false;
    bool copy_vtmp1_vtmp1 = false;
    Map<bool,bool> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<bool,bool>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<bool,bool>> other = {};
    assert(value == copy, "equals Map<float,Map<bool,bool>>: {-0.0: {true: false}, 3.14: {true: true, false: false}}");
    assert(!(value == other), "different Map<float,Map<bool,bool>>: {-0.0: {true: false}, 3.14: {true: true, false: false}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_bool_int___802() {
    
    Map<float,Map<bool,int>> value = {};
    
    Map<float,Map<bool,int>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<bool,int> other_vtmp0 = {};
    Map<float,Map<bool,int>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<bool,int>>: {}");
    assert(!(value == other), "different Map<float,Map<bool,int>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_bool_int___803() {
    float value_ktmp0 = 0.0;
    
    Map<bool,int> value_vtmp0 = {};
    Map<float,Map<bool,int>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<bool,int> copy_vtmp0 = {};
    Map<float,Map<bool,int>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    bool other_vtmp0_ktmp0 = true;
    int other_vtmp0_vtmp0 = 0;
    Map<bool,int> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    bool other_vtmp1_ktmp0 = false;
    int other_vtmp1_vtmp0 = 1;
    bool other_vtmp1_ktmp1 = true;
    int other_vtmp1_vtmp1 = 2;
    Map<bool,int> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<bool,int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<bool,int>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<bool,int>>: {0.0: {}} {-0.0: {true: 0}, 3.14: {false: 1, true: 2}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_bool_int___804() {
    float value_ktmp0 = -0.0;
    bool value_vtmp0_ktmp0 = true;
    int value_vtmp0_vtmp0 = 0;
    Map<bool,int> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    bool value_vtmp1_ktmp0 = false;
    int value_vtmp1_vtmp0 = 1;
    bool value_vtmp1_ktmp1 = true;
    int value_vtmp1_vtmp1 = 2;
    Map<bool,int> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<bool,int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    bool copy_vtmp0_ktmp0 = true;
    int copy_vtmp0_vtmp0 = 0;
    Map<bool,int> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    bool copy_vtmp1_ktmp0 = false;
    int copy_vtmp1_vtmp0 = 1;
    bool copy_vtmp1_ktmp1 = true;
    int copy_vtmp1_vtmp1 = 2;
    Map<bool,int> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<bool,int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<bool,int>> other = {};
    assert(value == copy, "equals Map<float,Map<bool,int>>: {-0.0: {true: 0}, 3.14: {false: 1, true: 2}}");
    assert(!(value == other), "different Map<float,Map<bool,int>>: {-0.0: {true: 0}, 3.14: {false: 1, true: 2}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_bool_float___805() {
    
    Map<float,Map<bool,float>> value = {};
    
    Map<float,Map<bool,float>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<bool,float> other_vtmp0 = {};
    Map<float,Map<bool,float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<bool,float>>: {}");
    assert(!(value == other), "different Map<float,Map<bool,float>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_bool_float___806() {
    float value_ktmp0 = 0.0;
    
    Map<bool,float> value_vtmp0 = {};
    Map<float,Map<bool,float>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<bool,float> copy_vtmp0 = {};
    Map<float,Map<bool,float>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    bool other_vtmp0_ktmp0 = false;
    float other_vtmp0_vtmp0 = 0.0;
    Map<bool,float> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    bool other_vtmp1_ktmp0 = true;
    float other_vtmp1_vtmp0 = -0.0;
    bool other_vtmp1_ktmp1 = false;
    float other_vtmp1_vtmp1 = 3.14;
    Map<bool,float> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<bool,float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<bool,float>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<bool,float>>: {0.0: {}} {-0.0: {false: 0.0}, 3.14: {true: -0.0, false: 3.14}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_bool_float___807() {
    float value_ktmp0 = -0.0;
    bool value_vtmp0_ktmp0 = false;
    float value_vtmp0_vtmp0 = 0.0;
    Map<bool,float> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    bool value_vtmp1_ktmp0 = true;
    float value_vtmp1_vtmp0 = -0.0;
    bool value_vtmp1_ktmp1 = false;
    float value_vtmp1_vtmp1 = 3.14;
    Map<bool,float> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<bool,float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    bool copy_vtmp0_ktmp0 = false;
    float copy_vtmp0_vtmp0 = 0.0;
    Map<bool,float> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    bool copy_vtmp1_ktmp0 = true;
    float copy_vtmp1_vtmp0 = -0.0;
    bool copy_vtmp1_ktmp1 = false;
    float copy_vtmp1_vtmp1 = 3.14;
    Map<bool,float> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<bool,float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<bool,float>> other = {};
    assert(value == copy, "equals Map<float,Map<bool,float>>: {-0.0: {false: 0.0}, 3.14: {true: -0.0, false: 3.14}}");
    assert(!(value == other), "different Map<float,Map<bool,float>>: {-0.0: {false: 0.0}, 3.14: {true: -0.0, false: 3.14}} {}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_bool_String___808() {
    
    Map<float,Map<bool,String>> value = {};
    
    Map<float,Map<bool,String>> copy = {};
    float other_ktmp0 = 0.0;
    
    Map<bool,String> other_vtmp0 = {};
    Map<float,Map<bool,String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<float,Map<bool,String>>: {}");
    assert(!(value == other), "different Map<float,Map<bool,String>>: {} {0.0: {}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_bool_String___809() {
    float value_ktmp0 = 0.0;
    
    Map<bool,String> value_vtmp0 = {};
    Map<float,Map<bool,String>> value = {value_ktmp0: value_vtmp0};
    float copy_ktmp0 = 0.0;
    
    Map<bool,String> copy_vtmp0 = {};
    Map<float,Map<bool,String>> copy = {copy_ktmp0: copy_vtmp0};
    float other_ktmp0 = -0.0;
    bool other_vtmp0_ktmp0 = true;
    String other_vtmp0_vtmp0 = "pie";
    Map<bool,String> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    float other_ktmp1 = 3.14;
    bool other_vtmp1_ktmp0 = false;
    String other_vtmp1_vtmp0 = " ";
    bool other_vtmp1_ktmp1 = true;
    String other_vtmp1_vtmp1 = "\n";
    Map<bool,String> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<float,Map<bool,String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<float,Map<bool,String>>: {0.0: {}}");
    assert(!(value == other), "different Map<float,Map<bool,String>>: {0.0: {}} {-0.0: {true: \"pie\"}, 3.14: {false: \" \", true: \"\n\"}}");
    assertEqual(true, true);
}
        
void test_Map_float_Map_bool_String___810() {
    float value_ktmp0 = -0.0;
    bool value_vtmp0_ktmp0 = true;
    String value_vtmp0_vtmp0 = "pie";
    Map<bool,String> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    float value_ktmp1 = 3.14;
    bool value_vtmp1_ktmp0 = false;
    String value_vtmp1_vtmp0 = " ";
    bool value_vtmp1_ktmp1 = true;
    String value_vtmp1_vtmp1 = "\n";
    Map<bool,String> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<float,Map<bool,String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    float copy_ktmp0 = -0.0;
    bool copy_vtmp0_ktmp0 = true;
    String copy_vtmp0_vtmp0 = "pie";
    Map<bool,String> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    float copy_ktmp1 = 3.14;
    bool copy_vtmp1_ktmp0 = false;
    String copy_vtmp1_vtmp0 = " ";
    bool copy_vtmp1_ktmp1 = true;
    String copy_vtmp1_vtmp1 = "\n";
    Map<bool,String> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<float,Map<bool,String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<float,Map<bool,String>> other = {};
    assert(value == copy, "equals Map<float,Map<bool,String>>: {-0.0: {true: \"pie\"}, 3.14: {false: \" \", true: \"\n\"}}");
    assert(!(value == other), "different Map<float,Map<bool,String>>: {-0.0: {true: \"pie\"}, 3.14: {false: \" \", true: \"\n\"}} {}");
    assertEqual(true, true);
}
        