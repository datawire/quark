
void test_Map_Scalar_Map_Scalar_int___1091() {
    Scalar value_ktmp0 = unsafe(0).asScalar();
    
    Map<Scalar,int> value_vtmp0 = {};
    Map<Scalar,Map<Scalar,int>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(0).asScalar();
    
    Map<Scalar,int> copy_vtmp0 = {};
    Map<Scalar,Map<Scalar,int>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(0.0).asScalar();
    Scalar other_vtmp0_ktmp0 = unsafe("").asScalar();
    int other_vtmp0_vtmp0 = 2147483650;
    Map<Scalar,int> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe("pie").asScalar();
    Scalar other_vtmp1_ktmp0 = unsafe(true).asScalar();
    int other_vtmp1_vtmp0 = 2147483651;
    Scalar other_vtmp1_ktmp1 = unsafe(true).asScalar();
    int other_vtmp1_vtmp1 = 4294967293;
    Map<Scalar,int> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,int>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,int>>: {<__main__.Scalar object at 0x7f9dce0f0450>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,int>>: {<__main__.Scalar object at 0x7f9dce0f0450>: {}} {<__main__.Scalar object at 0x7f9dce0f0490>: {<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}, <__main__.Scalar object at 0x7f9dce0f04d0>: {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_int___1092() {
    Scalar value_ktmp0 = unsafe(0.0).asScalar();
    Scalar value_vtmp0_ktmp0 = unsafe("").asScalar();
    int value_vtmp0_vtmp0 = 2147483650;
    Map<Scalar,int> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe("pie").asScalar();
    Scalar value_vtmp1_ktmp0 = unsafe(true).asScalar();
    int value_vtmp1_vtmp0 = 2147483651;
    Scalar value_vtmp1_ktmp1 = unsafe(true).asScalar();
    int value_vtmp1_vtmp1 = 4294967293;
    Map<Scalar,int> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,int>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(0.0).asScalar();
    Scalar copy_vtmp0_ktmp0 = unsafe("").asScalar();
    int copy_vtmp0_vtmp0 = 2147483650;
    Map<Scalar,int> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe("pie").asScalar();
    Scalar copy_vtmp1_ktmp0 = unsafe(true).asScalar();
    int copy_vtmp1_vtmp0 = 2147483651;
    Scalar copy_vtmp1_ktmp1 = unsafe(true).asScalar();
    int copy_vtmp1_vtmp1 = 4294967293;
    Map<Scalar,int> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,int>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<Scalar,int>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,int>>: {<__main__.Scalar object at 0x7f9dce0f0490>: {<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}, <__main__.Scalar object at 0x7f9dce0f04d0>: {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,int>>: {<__main__.Scalar object at 0x7f9dce0f0490>: {<__main__.Scalar object at 0x7f9dce0f08d0>: 2147483650}, <__main__.Scalar object at 0x7f9dce0f04d0>: {<__main__.Scalar object at 0x7f9dce0f0910>: 2147483651, <__main__.Scalar object at 0x7f9dce0e4f90>: 4294967293}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_float___1093() {
    
    Map<Scalar,Map<Scalar,float>> value = {};
    
    Map<Scalar,Map<Scalar,float>> copy = {};
    Scalar other_ktmp0 = unsafe(true).asScalar();
    
    Map<Scalar,float> other_vtmp0 = {};
    Map<Scalar,Map<Scalar,float>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,float>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,float>>: {} {<__main__.Scalar object at 0x7f9dce0f0510>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_float___1094() {
    Scalar value_ktmp0 = unsafe(true).asScalar();
    
    Map<Scalar,float> value_vtmp0 = {};
    Map<Scalar,Map<Scalar,float>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(true).asScalar();
    
    Map<Scalar,float> copy_vtmp0 = {};
    Map<Scalar,Map<Scalar,float>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(1).asScalar();
    Scalar other_vtmp0_ktmp0 = unsafe(-3).asScalar();
    float other_vtmp0_vtmp0 = 0.0;
    Map<Scalar,float> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(-0.0).asScalar();
    Scalar other_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    float other_vtmp1_vtmp0 = -0.0;
    Scalar other_vtmp1_ktmp1 = unsafe("").asScalar();
    float other_vtmp1_vtmp1 = 3.14;
    Map<Scalar,float> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,float>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,float>>: {<__main__.Scalar object at 0x7f9dce0f0510>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,float>>: {<__main__.Scalar object at 0x7f9dce0f0510>: {}} {<__main__.Scalar object at 0x7f9dce0f0550>: {<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}, <__main__.Scalar object at 0x7f9dce0f0590>: {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_float___1095() {
    Scalar value_ktmp0 = unsafe(1).asScalar();
    Scalar value_vtmp0_ktmp0 = unsafe(-3).asScalar();
    float value_vtmp0_vtmp0 = 0.0;
    Map<Scalar,float> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(-0.0).asScalar();
    Scalar value_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    float value_vtmp1_vtmp0 = -0.0;
    Scalar value_vtmp1_ktmp1 = unsafe("").asScalar();
    float value_vtmp1_vtmp1 = 3.14;
    Map<Scalar,float> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,float>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(1).asScalar();
    Scalar copy_vtmp0_ktmp0 = unsafe(-3).asScalar();
    float copy_vtmp0_vtmp0 = 0.0;
    Map<Scalar,float> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(-0.0).asScalar();
    Scalar copy_vtmp1_ktmp0 = unsafe(0.0).asScalar();
    float copy_vtmp1_vtmp0 = -0.0;
    Scalar copy_vtmp1_ktmp1 = unsafe("").asScalar();
    float copy_vtmp1_vtmp1 = 3.14;
    Map<Scalar,float> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,float>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<Scalar,float>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,float>>: {<__main__.Scalar object at 0x7f9dce0f0550>: {<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}, <__main__.Scalar object at 0x7f9dce0f0590>: {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,float>>: {<__main__.Scalar object at 0x7f9dce0f0550>: {<__main__.Scalar object at 0x7f9dce0e44d0>: 0.0}, <__main__.Scalar object at 0x7f9dce0f0590>: {<__main__.Scalar object at 0x7f9dce0f0110>: -0.0, <__main__.Scalar object at 0x7f9dce0f0090>: 3.14}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_String___1096() {
    
    Map<Scalar,Map<Scalar,String>> value = {};
    
    Map<Scalar,Map<Scalar,String>> copy = {};
    Scalar other_ktmp0 = unsafe(" ").asScalar();
    
    Map<Scalar,String> other_vtmp0 = {};
    Map<Scalar,Map<Scalar,String>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,String>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,String>>: {} {<__main__.Scalar object at 0x7f9dce0f05d0>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_String___1097() {
    Scalar value_ktmp0 = unsafe(" ").asScalar();
    
    Map<Scalar,String> value_vtmp0 = {};
    Map<Scalar,Map<Scalar,String>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(" ").asScalar();
    
    Map<Scalar,String> copy_vtmp0 = {};
    Map<Scalar,Map<Scalar,String>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    Scalar other_vtmp0_ktmp0 = unsafe(false).asScalar();
    String other_vtmp0_vtmp0 = "\n";
    Map<Scalar,String> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(2).asScalar();
    Scalar other_vtmp1_ktmp0 = unsafe(-2).asScalar();
    String other_vtmp1_vtmp0 = "asdf\n";
    Scalar other_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    String other_vtmp1_vtmp1 = "";
    Map<Scalar,String> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,String>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,String>>: {<__main__.Scalar object at 0x7f9dce0f05d0>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,String>>: {<__main__.Scalar object at 0x7f9dce0f05d0>: {}} {<__main__.Scalar object at 0x7f9dce0f0610>: {<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}, <__main__.Scalar object at 0x7f9dce0f0650>: {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_String___1098() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    Scalar value_vtmp0_ktmp0 = unsafe(false).asScalar();
    String value_vtmp0_vtmp0 = "\n";
    Map<Scalar,String> value_vtmp0 = {value_vtmp0_ktmp0: value_vtmp0_vtmp0};
    Scalar value_ktmp1 = unsafe(2).asScalar();
    Scalar value_vtmp1_ktmp0 = unsafe(-2).asScalar();
    String value_vtmp1_vtmp0 = "asdf\n";
    Scalar value_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    String value_vtmp1_vtmp1 = "";
    Map<Scalar,String> value_vtmp1 = {value_vtmp1_ktmp0: value_vtmp1_vtmp0, value_vtmp1_ktmp1: value_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,String>> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    Scalar copy_vtmp0_ktmp0 = unsafe(false).asScalar();
    String copy_vtmp0_vtmp0 = "\n";
    Map<Scalar,String> copy_vtmp0 = {copy_vtmp0_ktmp0: copy_vtmp0_vtmp0};
    Scalar copy_ktmp1 = unsafe(2).asScalar();
    Scalar copy_vtmp1_ktmp0 = unsafe(-2).asScalar();
    String copy_vtmp1_vtmp0 = "asdf\n";
    Scalar copy_vtmp1_ktmp1 = unsafe(-0.0).asScalar();
    String copy_vtmp1_vtmp1 = "";
    Map<Scalar,String> copy_vtmp1 = {copy_vtmp1_ktmp0: copy_vtmp1_vtmp0, copy_vtmp1_ktmp1: copy_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,String>> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Map<Scalar,String>> other = {};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,String>>: {<__main__.Scalar object at 0x7f9dce0f0610>: {<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}, <__main__.Scalar object at 0x7f9dce0f0650>: {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,String>>: {<__main__.Scalar object at 0x7f9dce0f0610>: {<__main__.Scalar object at 0x7f9dce0f01d0>: \"\n\"}, <__main__.Scalar object at 0x7f9dce0f0650>: {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_Scalar___1099() {
    
    Map<Scalar,Map<Scalar,Scalar>> value = {};
    
    Map<Scalar,Map<Scalar,Scalar>> copy = {};
    Scalar other_ktmp0 = unsafe(3.14).asScalar();
    
    Map<Scalar,Scalar> other_vtmp0 = {};
    Map<Scalar,Map<Scalar,Scalar>> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,Scalar>>: {}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,Scalar>>: {} {<__main__.Scalar object at 0x7f9dce0f0690>: {}}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Map_Scalar_Scalar___1100() {
    Scalar value_ktmp0 = unsafe(3.14).asScalar();
    
    Map<Scalar,Scalar> value_vtmp0 = {};
    Map<Scalar,Map<Scalar,Scalar>> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3.14).asScalar();
    
    Map<Scalar,Scalar> copy_vtmp0 = {};
    Map<Scalar,Map<Scalar,Scalar>> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe("\n").asScalar();
    Scalar other_vtmp0_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar other_vtmp0_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> other_vtmp0 = {other_vtmp0_ktmp0: other_vtmp0_vtmp0};
    Scalar other_ktmp1 = unsafe(true).asScalar();
    Scalar other_vtmp1_ktmp0 = unsafe(-1).asScalar();
    Scalar other_vtmp1_vtmp0 = unsafe("pi").asScalar();
    Scalar other_vtmp1_ktmp1 = unsafe(3.14).asScalar();
    Scalar other_vtmp1_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> other_vtmp1 = {other_vtmp1_ktmp0: other_vtmp1_vtmp0, other_vtmp1_ktmp1: other_vtmp1_vtmp1};
    Map<Scalar,Map<Scalar,Scalar>> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Map<Scalar,Scalar>>: {<__main__.Scalar object at 0x7f9dce0f0690>: {}}");
    assert(!(value == other), "different Map<Scalar,Map<Scalar,Scalar>>: {<__main__.Scalar object at 0x7f9dce0f0690>: {}} {<__main__.Scalar object at 0x7f9dce0f06d0>: {<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}, <__main__.Scalar object at 0x7f9dce0f0710>: {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}}");
    assertEqual(true, true);
}
        