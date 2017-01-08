
void test_Any_171() {
    int value_tmp_ktmp0 = 2147483645;
    bool value_tmp_vtmp0 = true;
    int value_tmp_ktmp1 = 2147483646;
    bool value_tmp_vtmp1 = false;
    Map<int,bool> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    int copy_tmp_ktmp0 = 2147483645;
    bool copy_tmp_vtmp0 = true;
    int copy_tmp_ktmp1 = 2147483646;
    bool copy_tmp_vtmp1 = false;
    Map<int,bool> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    String other_tmp_ktmp0 = "Hello World!";
    int other_tmp_vtmp0 = 2147483647;
    Map<String,int> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({2147483645: true, 2147483646: false})");
    assert(!(value == other), "different Any: unsafe({2147483645: true, 2147483646: false}) unsafe({\"Hello World!\": 2147483647})");
    assertEqual(true, true);
}
        
void test_Any_172() {
    
    Map<int,int> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<int,int> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    String other_tmp_ktmp0 = "pi";
    int other_tmp_vtmp0 = 2147483648;
    String other_tmp_ktmp1 = "pie";
    int other_tmp_vtmp1 = 2147483649;
    Map<String,int> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({\"pi\": 2147483648, \"pie\": 2147483649})");
    assertEqual(true, true);
}
        
void test_Any_173() {
    int value_tmp_ktmp0 = 2147483647;
    int value_tmp_vtmp0 = 2147483648;
    Map<int,int> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    int copy_tmp_ktmp0 = 2147483647;
    int copy_tmp_vtmp0 = 2147483648;
    Map<int,int> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<String,float> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({2147483647: 2147483648})");
    assert(!(value == other), "different Any: unsafe({2147483647: 2147483648}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_174() {
    int value_tmp_ktmp0 = 2147483649;
    int value_tmp_vtmp0 = 2147483651;
    int value_tmp_ktmp1 = 2147483650;
    int value_tmp_vtmp1 = 4294967293;
    Map<int,int> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    int copy_tmp_ktmp0 = 2147483649;
    int copy_tmp_vtmp0 = 2147483651;
    int copy_tmp_ktmp1 = 2147483650;
    int copy_tmp_vtmp1 = 4294967293;
    Map<int,int> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    String other_tmp_ktmp0 = " ";
    float other_tmp_vtmp0 = 0.0;
    Map<String,float> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({2147483649: 2147483651, 2147483650: 4294967293})");
    assert(!(value == other), "different Any: unsafe({2147483649: 2147483651, 2147483650: 4294967293}) unsafe({\" \": 0.0})");
    assertEqual(true, true);
}
        
void test_Any_175() {
    
    Map<int,float> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<int,float> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    String other_tmp_ktmp0 = "\n";
    float other_tmp_vtmp0 = -0.0;
    String other_tmp_ktmp1 = "asdf\n";
    float other_tmp_vtmp1 = 3.14;
    Map<String,float> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({\"\n\": -0.0, \"asdf\n\": 3.14})");
    assertEqual(true, true);
}
        
void test_Any_176() {
    int value_tmp_ktmp0 = 4294967294;
    float value_tmp_vtmp0 = 0.0;
    Map<int,float> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    int copy_tmp_ktmp0 = 4294967294;
    float copy_tmp_vtmp0 = 0.0;
    Map<int,float> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<String,String> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({4294967294: 0.0})");
    assert(!(value == other), "different Any: unsafe({4294967294: 0.0}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_177() {
    int value_tmp_ktmp0 = 4294967295;
    float value_tmp_vtmp0 = -0.0;
    int value_tmp_ktmp1 = 4294967296;
    float value_tmp_vtmp1 = 3.14;
    Map<int,float> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    int copy_tmp_ktmp0 = 4294967295;
    float copy_tmp_vtmp0 = -0.0;
    int copy_tmp_ktmp1 = 4294967296;
    float copy_tmp_vtmp1 = 3.14;
    Map<int,float> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    String other_tmp_ktmp0 = "";
    String other_tmp_vtmp0 = "Hello World!";
    Map<String,String> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({4294967295: -0.0, 4294967296: 3.14})");
    assert(!(value == other), "different Any: unsafe({4294967295: -0.0, 4294967296: 3.14}) unsafe({\"\": \"Hello World!\"})");
    assertEqual(true, true);
}
        
void test_Any_178() {
    
    Map<int,String> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<int,String> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    String other_tmp_ktmp0 = "pi";
    String other_tmp_vtmp0 = " ";
    String other_tmp_ktmp1 = "pie";
    String other_tmp_vtmp1 = "\n";
    Map<String,String> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({\"pi\": \" \", \"pie\": \"\n\"})");
    assertEqual(true, true);
}
        
void test_Any_179() {
    int value_tmp_ktmp0 = 4294967297;
    String value_tmp_vtmp0 = "asdf\n";
    Map<int,String> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    int copy_tmp_ktmp0 = 4294967297;
    String copy_tmp_vtmp0 = "asdf\n";
    Map<int,String> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<String,Scalar> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({4294967297: \"asdf\n\"})");
    assert(!(value == other), "different Any: unsafe({4294967297: \"asdf\n\"}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_180() {
    int value_tmp_ktmp0 = 4294967298;
    String value_tmp_vtmp0 = "";
    int value_tmp_ktmp1 = 4294967299;
    String value_tmp_vtmp1 = "Hello World!";
    Map<int,String> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    int copy_tmp_ktmp0 = 4294967298;
    String copy_tmp_vtmp0 = "";
    int copy_tmp_ktmp1 = 4294967299;
    String copy_tmp_vtmp1 = "Hello World!";
    Map<int,String> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    String other_tmp_ktmp0 = "asdf\n";
    Scalar other_tmp_vtmp0 = unsafe(3).asScalar();
    Map<String,Scalar> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({4294967298: \"\", 4294967299: \"Hello World!\"})");
    assert(!(value == other), "different Any: unsafe({4294967298: \"\", 4294967299: \"Hello World!\"}) unsafe({\"asdf\n\": <__main__.Scalar object at 0x7f9dce0f0750>})");
    assertEqual(true, true);
}
        