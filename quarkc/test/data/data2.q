
void test_Any_101() {
    float value_tmp = -0.0;
    Any value = unsafe(value_tmp);
    float copy_tmp = -0.0;
    Any copy = unsafe(copy_tmp);
    
    List<float> other_tmp = [];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(-0.0)");
    assert(!(value == other), "different Any: unsafe(-0.0) unsafe([])");
    assertEqual(true, true);
}
        
void test_Any_102() {
    bool value_tmp = true;
    Any value = unsafe(value_tmp);
    bool copy_tmp = true;
    Any copy = unsafe(copy_tmp);
    float other_tmp_tmp0 = 0.0;
    List<float> other_tmp = [other_tmp_tmp0];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(true)");
    assert(!(value == other), "different Any: unsafe(true) unsafe([0.0])");
    assertEqual(true, true);
}
        
void test_Any_103() {
    int value_tmp = 4294967294;
    Any value = unsafe(value_tmp);
    int copy_tmp = 4294967294;
    Any copy = unsafe(copy_tmp);
    float other_tmp_tmp0 = -0.0;
    float other_tmp_tmp1 = 3.14;
    List<float> other_tmp = [other_tmp_tmp0, other_tmp_tmp1];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(4294967294)");
    assert(!(value == other), "different Any: unsafe(4294967294) unsafe([-0.0, 3.14])");
    assertEqual(true, true);
}
        
void test_Any_104() {
    float value_tmp = 0.0;
    Any value = unsafe(value_tmp);
    float copy_tmp = 0.0;
    Any copy = unsafe(copy_tmp);
    
    List<String> other_tmp = [];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(0.0)");
    assert(!(value == other), "different Any: unsafe(0.0) unsafe([])");
    assertEqual(true, true);
}
        
void test_Any_105() {
    String value_tmp = "Hello World!";
    Any value = unsafe(value_tmp);
    String copy_tmp = "Hello World!";
    Any copy = unsafe(copy_tmp);
    String other_tmp_tmp0 = "";
    List<String> other_tmp = [other_tmp_tmp0];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"Hello World!\")");
    assert(!(value == other), "different Any: unsafe(\"Hello World!\") unsafe([\"\"])");
    assertEqual(true, true);
}
        
void test_Any_106() {
    String value_tmp = "Hello World!";
    Any value = unsafe(value_tmp);
    String copy_tmp = "Hello World!";
    Any copy = unsafe(copy_tmp);
    String other_tmp_tmp0 = "Hello World!";
    String other_tmp_tmp1 = "pi";
    List<String> other_tmp = [other_tmp_tmp0, other_tmp_tmp1];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"Hello World!\")");
    assert(!(value == other), "different Any: unsafe(\"Hello World!\") unsafe([\"Hello World!\", \"pi\"])");
    assertEqual(true, true);
}
        
void test_Any_107() {
    bool value_tmp = false;
    Any value = unsafe(value_tmp);
    bool copy_tmp = false;
    Any copy = unsafe(copy_tmp);
    
    List<Scalar> other_tmp = [];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(false)");
    assert(!(value == other), "different Any: unsafe(false) unsafe([])");
    assertEqual(true, true);
}
        
void test_Any_108() {
    int value_tmp = 4294967295;
    Any value = unsafe(value_tmp);
    int copy_tmp = 4294967295;
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_tmp0 = unsafe(0).asScalar();
    List<Scalar> other_tmp = [other_tmp_tmp0];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(4294967295)");
    assert(!(value == other), "different Any: unsafe(4294967295) unsafe([unsafe(0).asScalar()])");
    assertEqual(true, true);
}
        
void test_Any_109() {
    float value_tmp = -0.0;
    Any value = unsafe(value_tmp);
    float copy_tmp = -0.0;
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_tmp0 = unsafe(0.0).asScalar();
    Scalar other_tmp_tmp1 = unsafe("pie").asScalar();
    List<Scalar> other_tmp = [other_tmp_tmp0, other_tmp_tmp1];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(-0.0)");
    assert(!(value == other), "different Any: unsafe(-0.0) unsafe([unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()])");
    assertEqual(true, true);
}
        
void test_Any_110() {
    String value_tmp = "pi";
    Any value = unsafe(value_tmp);
    String copy_tmp = "pi";
    Any copy = unsafe(copy_tmp);
    
    List<Any> other_tmp = [];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"pi\")");
    assert(!(value == other), "different Any: unsafe(\"pi\") unsafe([])");
    assertEqual(true, true);
}
        
void test_Any_111() {
    bool value_tmp = true;
    Any value = unsafe(value_tmp);
    bool copy_tmp = true;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_tmp0_tmp = false;
    Any other_tmp_tmp0 = unsafe(other_tmp_tmp0_tmp);
    List<Any> other_tmp = [other_tmp_tmp0];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(true)");
    assert(!(value == other), "different Any: unsafe(true) unsafe([unsafe(false)])");
    assertEqual(true, true);
}
        
void test_Any_112() {
    bool value_tmp = true;
    Any value = unsafe(value_tmp);
    bool copy_tmp = true;
    Any copy = unsafe(copy_tmp);
    int other_tmp_tmp0_tmp = 2147483646;
    Any other_tmp_tmp0 = unsafe(other_tmp_tmp0_tmp);
    float other_tmp_tmp1_tmp = 3.14;
    Any other_tmp_tmp1 = unsafe(other_tmp_tmp1_tmp);
    List<Any> other_tmp = [other_tmp_tmp0, other_tmp_tmp1];
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(true)");
    assert(!(value == other), "different Any: unsafe(true) unsafe([unsafe(2147483646), unsafe(3.14)])");
    assertEqual(true, true);
}
        
void test_Any_113() {
    int value_tmp = 4294967296;
    Any value = unsafe(value_tmp);
    int copy_tmp = 4294967296;
    Any copy = unsafe(copy_tmp);
    
    Map<bool,bool> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(4294967296)");
    assert(!(value == other), "different Any: unsafe(4294967296) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_114() {
    float value_tmp = 3.14;
    Any value = unsafe(value_tmp);
    float copy_tmp = 3.14;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = true;
    bool other_tmp_vtmp0 = false;
    Map<bool,bool> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(3.14)");
    assert(!(value == other), "different Any: unsafe(3.14) unsafe({true: false})");
    assertEqual(true, true);
}
        
void test_Any_115() {
    String value_tmp = "pie";
    Any value = unsafe(value_tmp);
    String copy_tmp = "pie";
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = true;
    bool other_tmp_vtmp0 = true;
    bool other_tmp_ktmp1 = false;
    bool other_tmp_vtmp1 = false;
    Map<bool,bool> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"pie\")");
    assert(!(value == other), "different Any: unsafe(\"pie\") unsafe({true: true, false: false})");
    assertEqual(true, true);
}
        
void test_Any_116() {
    int value_tmp = -1;
    Any value = unsafe(value_tmp);
    int copy_tmp = -1;
    Any copy = unsafe(copy_tmp);
    
    Map<bool,int> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(-1)");
    assert(!(value == other), "different Any: unsafe(-1) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_117() {
    bool value_tmp = false;
    Any value = unsafe(value_tmp);
    bool copy_tmp = false;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = true;
    int other_tmp_vtmp0 = 0;
    Map<bool,int> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(false)");
    assert(!(value == other), "different Any: unsafe(false) unsafe({true: 0})");
    assertEqual(true, true);
}
        
void test_Any_118() {
    int value_tmp = 4294967297;
    Any value = unsafe(value_tmp);
    int copy_tmp = 4294967297;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = false;
    int other_tmp_vtmp0 = 1;
    bool other_tmp_ktmp1 = true;
    int other_tmp_vtmp1 = 2;
    Map<bool,int> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(4294967297)");
    assert(!(value == other), "different Any: unsafe(4294967297) unsafe({false: 1, true: 2})");
    assertEqual(true, true);
}
        
void test_Any_119() {
    float value_tmp = 0.0;
    Any value = unsafe(value_tmp);
    float copy_tmp = 0.0;
    Any copy = unsafe(copy_tmp);
    
    Map<bool,float> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(0.0)");
    assert(!(value == other), "different Any: unsafe(0.0) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_120() {
    String value_tmp = " ";
    Any value = unsafe(value_tmp);
    String copy_tmp = " ";
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = false;
    float other_tmp_vtmp0 = 0.0;
    Map<bool,float> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\" \")");
    assert(!(value == other), "different Any: unsafe(\" \") unsafe({false: 0.0})");
    assertEqual(true, true);
}
        
void test_Any_121() {
    float value_tmp = 3.14;
    Any value = unsafe(value_tmp);
    float copy_tmp = 3.14;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = true;
    float other_tmp_vtmp0 = -0.0;
    bool other_tmp_ktmp1 = false;
    float other_tmp_vtmp1 = 3.14;
    Map<bool,float> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(3.14)");
    assert(!(value == other), "different Any: unsafe(3.14) unsafe({true: -0.0, false: 3.14})");
    assertEqual(true, true);
}
        
void test_Any_122() {
    bool value_tmp = true;
    Any value = unsafe(value_tmp);
    bool copy_tmp = true;
    Any copy = unsafe(copy_tmp);
    
    Map<bool,String> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(true)");
    assert(!(value == other), "different Any: unsafe(true) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_123() {
    int value_tmp = 4294967298;
    Any value = unsafe(value_tmp);
    int copy_tmp = 4294967298;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = true;
    String other_tmp_vtmp0 = "pie";
    Map<bool,String> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(4294967298)");
    assert(!(value == other), "different Any: unsafe(4294967298) unsafe({true: \"pie\"})");
    assertEqual(true, true);
}
        
void test_Any_124() {
    float value_tmp = -0.0;
    Any value = unsafe(value_tmp);
    float copy_tmp = -0.0;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = false;
    String other_tmp_vtmp0 = " ";
    bool other_tmp_ktmp1 = true;
    String other_tmp_vtmp1 = "\n";
    Map<bool,String> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(-0.0)");
    assert(!(value == other), "different Any: unsafe(-0.0) unsafe({false: \" \", true: \"\n\"})");
    assertEqual(true, true);
}
        
void test_Any_125() {
    String value_tmp = "\n";
    Any value = unsafe(value_tmp);
    String copy_tmp = "\n";
    Any copy = unsafe(copy_tmp);
    
    Map<bool,Scalar> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"\n\")");
    assert(!(value == other), "different Any: unsafe(\"\n\") unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_126() {
    String value_tmp = "pi";
    Any value = unsafe(value_tmp);
    String copy_tmp = "pi";
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = false;
    Scalar other_tmp_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"pi\")");
    assert(!(value == other), "different Any: unsafe(\"pi\") unsafe({false: <__main__.Scalar object at 0x7f1c32703510>})");
    assertEqual(true, true);
}
        
void test_Any_127() {
    bool value_tmp = false;
    Any value = unsafe(value_tmp);
    bool copy_tmp = false;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = true;
    Scalar other_tmp_vtmp0 = unsafe(1).asScalar();
    bool other_tmp_ktmp1 = false;
    Scalar other_tmp_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(false)");
    assert(!(value == other), "different Any: unsafe(false) unsafe({true: <__main__.Scalar object at 0x7f1c32703550>, false: <__main__.Scalar object at 0x7f1c32703590>})");
    assertEqual(true, true);
}
        
void test_Any_128() {
    int value_tmp = 4294967299;
    Any value = unsafe(value_tmp);
    int copy_tmp = 4294967299;
    Any copy = unsafe(copy_tmp);
    
    Map<bool,Any> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(4294967299)");
    assert(!(value == other), "different Any: unsafe(4294967299) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_129() {
    float value_tmp = 3.14;
    Any value = unsafe(value_tmp);
    float copy_tmp = 3.14;
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = true;
    String other_tmp_vtmp0_tmp = "Hello World!";
    Any other_tmp_vtmp0 = unsafe(other_tmp_vtmp0_tmp);
    Map<bool,Any> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(3.14)");
    assert(!(value == other), "different Any: unsafe(3.14) unsafe({true: unsafe(\"Hello World!\")})");
    assertEqual(true, true);
}
        
void test_Any_130() {
    String value_tmp = "asdf\n";
    Any value = unsafe(value_tmp);
    String copy_tmp = "asdf\n";
    Any copy = unsafe(copy_tmp);
    bool other_tmp_ktmp0 = false;
    bool other_tmp_vtmp0_tmp = true;
    Any other_tmp_vtmp0 = unsafe(other_tmp_vtmp0_tmp);
    bool other_tmp_ktmp1 = true;
    bool other_tmp_vtmp1_tmp = true;
    Any other_tmp_vtmp1 = unsafe(other_tmp_vtmp1_tmp);
    Map<bool,Any> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(\"asdf\n\")");
    assert(!(value == other), "different Any: unsafe(\"asdf\n\") unsafe({false: unsafe(true), true: unsafe(true)})");
    assertEqual(true, true);
}
        
void test_Any_131() {
    bool value_tmp = false;
    Any value = unsafe(value_tmp);
    bool copy_tmp = false;
    Any copy = unsafe(copy_tmp);
    
    Map<int,bool> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(false)");
    assert(!(value == other), "different Any: unsafe(false) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_132() {
    bool value_tmp = true;
    Any value = unsafe(value_tmp);
    bool copy_tmp = true;
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = 3;
    bool other_tmp_vtmp0 = false;
    Map<int,bool> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe(true)");
    assert(!(value == other), "different Any: unsafe(true) unsafe({3: false})");
    assertEqual(true, true);
}
        
void test_Any_133() {
    
    List<bool> value_tmp = [];
    Any value = unsafe(value_tmp);
    
    List<bool> copy_tmp = [];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = 2147483645;
    bool other_tmp_vtmp0 = true;
    int other_tmp_ktmp1 = 2147483646;
    bool other_tmp_vtmp1 = false;
    Map<int,bool> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([])");
    assert(!(value == other), "different Any: unsafe([]) unsafe({2147483645: true, 2147483646: false})");
    assertEqual(true, true);
}
        
void test_Any_134() {
    bool value_tmp_tmp0 = false;
    List<bool> value_tmp = [value_tmp_tmp0];
    Any value = unsafe(value_tmp);
    bool copy_tmp_tmp0 = false;
    List<bool> copy_tmp = [copy_tmp_tmp0];
    Any copy = unsafe(copy_tmp);
    
    Map<int,int> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([false])");
    assert(!(value == other), "different Any: unsafe([false]) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_135() {
    bool value_tmp_tmp0 = true;
    bool value_tmp_tmp1 = false;
    List<bool> value_tmp = [value_tmp_tmp0, value_tmp_tmp1];
    Any value = unsafe(value_tmp);
    bool copy_tmp_tmp0 = true;
    bool copy_tmp_tmp1 = false;
    List<bool> copy_tmp = [copy_tmp_tmp0, copy_tmp_tmp1];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = 2147483647;
    int other_tmp_vtmp0 = 2147483648;
    Map<int,int> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([true, false])");
    assert(!(value == other), "different Any: unsafe([true, false]) unsafe({2147483647: 2147483648})");
    assertEqual(true, true);
}
        
void test_Any_136() {
    
    List<int> value_tmp = [];
    Any value = unsafe(value_tmp);
    
    List<int> copy_tmp = [];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = 2147483649;
    int other_tmp_vtmp0 = 2147483651;
    int other_tmp_ktmp1 = 2147483650;
    int other_tmp_vtmp1 = 4294967293;
    Map<int,int> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([])");
    assert(!(value == other), "different Any: unsafe([]) unsafe({2147483649: 2147483651, 2147483650: 4294967293})");
    assertEqual(true, true);
}
        
void test_Any_137() {
    int value_tmp_tmp0 = -3;
    List<int> value_tmp = [value_tmp_tmp0];
    Any value = unsafe(value_tmp);
    int copy_tmp_tmp0 = -3;
    List<int> copy_tmp = [copy_tmp_tmp0];
    Any copy = unsafe(copy_tmp);
    
    Map<int,float> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([-3])");
    assert(!(value == other), "different Any: unsafe([-3]) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_138() {
    int value_tmp_tmp0 = -2;
    int value_tmp_tmp1 = -1;
    List<int> value_tmp = [value_tmp_tmp0, value_tmp_tmp1];
    Any value = unsafe(value_tmp);
    int copy_tmp_tmp0 = -2;
    int copy_tmp_tmp1 = -1;
    List<int> copy_tmp = [copy_tmp_tmp0, copy_tmp_tmp1];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = 4294967294;
    float other_tmp_vtmp0 = 0.0;
    Map<int,float> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([-2, -1])");
    assert(!(value == other), "different Any: unsafe([-2, -1]) unsafe({4294967294: 0.0})");
    assertEqual(true, true);
}
        
void test_Any_139() {
    
    List<float> value_tmp = [];
    Any value = unsafe(value_tmp);
    
    List<float> copy_tmp = [];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = 4294967295;
    float other_tmp_vtmp0 = -0.0;
    int other_tmp_ktmp1 = 4294967296;
    float other_tmp_vtmp1 = 3.14;
    Map<int,float> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([])");
    assert(!(value == other), "different Any: unsafe([]) unsafe({4294967295: -0.0, 4294967296: 3.14})");
    assertEqual(true, true);
}
        
void test_Any_140() {
    float value_tmp_tmp0 = 0.0;
    List<float> value_tmp = [value_tmp_tmp0];
    Any value = unsafe(value_tmp);
    float copy_tmp_tmp0 = 0.0;
    List<float> copy_tmp = [copy_tmp_tmp0];
    Any copy = unsafe(copy_tmp);
    
    Map<int,String> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([0.0])");
    assert(!(value == other), "different Any: unsafe([0.0]) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_141() {
    float value_tmp_tmp0 = -0.0;
    float value_tmp_tmp1 = 3.14;
    List<float> value_tmp = [value_tmp_tmp0, value_tmp_tmp1];
    Any value = unsafe(value_tmp);
    float copy_tmp_tmp0 = -0.0;
    float copy_tmp_tmp1 = 3.14;
    List<float> copy_tmp = [copy_tmp_tmp0, copy_tmp_tmp1];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = 4294967297;
    String other_tmp_vtmp0 = "asdf\n";
    Map<int,String> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([-0.0, 3.14])");
    assert(!(value == other), "different Any: unsafe([-0.0, 3.14]) unsafe({4294967297: \"asdf\n\"})");
    assertEqual(true, true);
}
        
void test_Any_142() {
    
    List<String> value_tmp = [];
    Any value = unsafe(value_tmp);
    
    List<String> copy_tmp = [];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = 4294967298;
    String other_tmp_vtmp0 = "";
    int other_tmp_ktmp1 = 4294967299;
    String other_tmp_vtmp1 = "Hello World!";
    Map<int,String> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([])");
    assert(!(value == other), "different Any: unsafe([]) unsafe({4294967298: \"\", 4294967299: \"Hello World!\"})");
    assertEqual(true, true);
}
        
void test_Any_143() {
    String value_tmp_tmp0 = "";
    List<String> value_tmp = [value_tmp_tmp0];
    Any value = unsafe(value_tmp);
    String copy_tmp_tmp0 = "";
    List<String> copy_tmp = [copy_tmp_tmp0];
    Any copy = unsafe(copy_tmp);
    
    Map<int,Scalar> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([\"\"])");
    assert(!(value == other), "different Any: unsafe([\"\"]) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_144() {
    String value_tmp_tmp0 = "Hello World!";
    String value_tmp_tmp1 = "pi";
    List<String> value_tmp = [value_tmp_tmp0, value_tmp_tmp1];
    Any value = unsafe(value_tmp);
    String copy_tmp_tmp0 = "Hello World!";
    String copy_tmp_tmp1 = "pi";
    List<String> copy_tmp = [copy_tmp_tmp0, copy_tmp_tmp1];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = -3;
    Scalar other_tmp_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([\"Hello World!\", \"pi\"])");
    assert(!(value == other), "different Any: unsafe([\"Hello World!\", \"pi\"]) unsafe({-3: <__main__.Scalar object at 0x7f1c327035d0>})");
    assertEqual(true, true);
}
        
void test_Any_145() {
    
    List<Scalar> value_tmp = [];
    Any value = unsafe(value_tmp);
    
    List<Scalar> copy_tmp = [];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = -2;
    Scalar other_tmp_vtmp0 = unsafe(false).asScalar();
    int other_tmp_ktmp1 = -1;
    Scalar other_tmp_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([])");
    assert(!(value == other), "different Any: unsafe([]) unsafe({-2: <__main__.Scalar object at 0x7f1c32703610>, -1: <__main__.Scalar object at 0x7f1c32703650>})");
    assertEqual(true, true);
}
        
void test_Any_146() {
    Scalar value_tmp_tmp0 = unsafe(0).asScalar();
    List<Scalar> value_tmp = [value_tmp_tmp0];
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_tmp0 = unsafe(0).asScalar();
    List<Scalar> copy_tmp = [copy_tmp_tmp0];
    Any copy = unsafe(copy_tmp);
    
    Map<int,Any> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([unsafe(0).asScalar()])");
    assert(!(value == other), "different Any: unsafe([unsafe(0).asScalar()]) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_147() {
    Scalar value_tmp_tmp0 = unsafe(0.0).asScalar();
    Scalar value_tmp_tmp1 = unsafe("pie").asScalar();
    List<Scalar> value_tmp = [value_tmp_tmp0, value_tmp_tmp1];
    Any value = unsafe(value_tmp);
    Scalar copy_tmp_tmp0 = unsafe(0.0).asScalar();
    Scalar copy_tmp_tmp1 = unsafe("pie").asScalar();
    List<Scalar> copy_tmp = [copy_tmp_tmp0, copy_tmp_tmp1];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = 0;
    int other_tmp_vtmp0_tmp = 2147483647;
    Any other_tmp_vtmp0 = unsafe(other_tmp_vtmp0_tmp);
    Map<int,Any> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()])");
    assert(!(value == other), "different Any: unsafe([unsafe(0.0).asScalar(), unsafe(\"pie\").asScalar()]) unsafe({0: unsafe(2147483647)})");
    assertEqual(true, true);
}
        
void test_Any_148() {
    
    List<Any> value_tmp = [];
    Any value = unsafe(value_tmp);
    
    List<Any> copy_tmp = [];
    Any copy = unsafe(copy_tmp);
    int other_tmp_ktmp0 = 1;
    float other_tmp_vtmp0_tmp = 0.0;
    Any other_tmp_vtmp0 = unsafe(other_tmp_vtmp0_tmp);
    int other_tmp_ktmp1 = 2;
    String other_tmp_vtmp1_tmp = "pi";
    Any other_tmp_vtmp1 = unsafe(other_tmp_vtmp1_tmp);
    Map<int,Any> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([])");
    assert(!(value == other), "different Any: unsafe([]) unsafe({1: unsafe(0.0), 2: unsafe(\"pi\")})");
    assertEqual(true, true);
}
        
void test_Any_149() {
    bool value_tmp_tmp0_tmp = false;
    Any value_tmp_tmp0 = unsafe(value_tmp_tmp0_tmp);
    List<Any> value_tmp = [value_tmp_tmp0];
    Any value = unsafe(value_tmp);
    bool copy_tmp_tmp0_tmp = false;
    Any copy_tmp_tmp0 = unsafe(copy_tmp_tmp0_tmp);
    List<Any> copy_tmp = [copy_tmp_tmp0];
    Any copy = unsafe(copy_tmp);
    
    Map<float,bool> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([unsafe(false)])");
    assert(!(value == other), "different Any: unsafe([unsafe(false)]) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_150() {
    int value_tmp_tmp0_tmp = 2147483646;
    Any value_tmp_tmp0 = unsafe(value_tmp_tmp0_tmp);
    float value_tmp_tmp1_tmp = 3.14;
    Any value_tmp_tmp1 = unsafe(value_tmp_tmp1_tmp);
    List<Any> value_tmp = [value_tmp_tmp0, value_tmp_tmp1];
    Any value = unsafe(value_tmp);
    int copy_tmp_tmp0_tmp = 2147483646;
    Any copy_tmp_tmp0 = unsafe(copy_tmp_tmp0_tmp);
    float copy_tmp_tmp1_tmp = 3.14;
    Any copy_tmp_tmp1 = unsafe(copy_tmp_tmp1_tmp);
    List<Any> copy_tmp = [copy_tmp_tmp0, copy_tmp_tmp1];
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = 0.0;
    bool other_tmp_vtmp0 = true;
    Map<float,bool> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe([unsafe(2147483646), unsafe(3.14)])");
    assert(!(value == other), "different Any: unsafe([unsafe(2147483646), unsafe(3.14)]) unsafe({0.0: true})");
    assertEqual(true, true);
}
        
void test_Any_151() {
    
    Map<bool,bool> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<bool,bool> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = -0.0;
    bool other_tmp_vtmp0 = false;
    float other_tmp_ktmp1 = 3.14;
    bool other_tmp_vtmp1 = true;
    Map<float,bool> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({-0.0: false, 3.14: true})");
    assertEqual(true, true);
}
        
void test_Any_152() {
    bool value_tmp_ktmp0 = true;
    bool value_tmp_vtmp0 = false;
    Map<bool,bool> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = true;
    bool copy_tmp_vtmp0 = false;
    Map<bool,bool> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<float,int> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({true: false})");
    assert(!(value == other), "different Any: unsafe({true: false}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_153() {
    bool value_tmp_ktmp0 = true;
    bool value_tmp_vtmp0 = true;
    bool value_tmp_ktmp1 = false;
    bool value_tmp_vtmp1 = false;
    Map<bool,bool> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = true;
    bool copy_tmp_vtmp0 = true;
    bool copy_tmp_ktmp1 = false;
    bool copy_tmp_vtmp1 = false;
    Map<bool,bool> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = 0.0;
    int other_tmp_vtmp0 = 3;
    Map<float,int> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({true: true, false: false})");
    assert(!(value == other), "different Any: unsafe({true: true, false: false}) unsafe({0.0: 3})");
    assertEqual(true, true);
}
        
void test_Any_154() {
    
    Map<bool,int> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<bool,int> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = -0.0;
    int other_tmp_vtmp0 = 2147483645;
    float other_tmp_ktmp1 = 3.14;
    int other_tmp_vtmp1 = 2147483646;
    Map<float,int> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({-0.0: 2147483645, 3.14: 2147483646})");
    assertEqual(true, true);
}
        
void test_Any_155() {
    bool value_tmp_ktmp0 = true;
    int value_tmp_vtmp0 = 0;
    Map<bool,int> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = true;
    int copy_tmp_vtmp0 = 0;
    Map<bool,int> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<float,float> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({true: 0})");
    assert(!(value == other), "different Any: unsafe({true: 0}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_156() {
    bool value_tmp_ktmp0 = false;
    int value_tmp_vtmp0 = 1;
    bool value_tmp_ktmp1 = true;
    int value_tmp_vtmp1 = 2;
    Map<bool,int> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = false;
    int copy_tmp_vtmp0 = 1;
    bool copy_tmp_ktmp1 = true;
    int copy_tmp_vtmp1 = 2;
    Map<bool,int> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = 0.0;
    float other_tmp_vtmp0 = -0.0;
    Map<float,float> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({false: 1, true: 2})");
    assert(!(value == other), "different Any: unsafe({false: 1, true: 2}) unsafe({0.0: -0.0})");
    assertEqual(true, true);
}
        
void test_Any_157() {
    
    Map<bool,float> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<bool,float> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = 3.14;
    float other_tmp_vtmp0 = -0.0;
    float other_tmp_ktmp1 = 0.0;
    float other_tmp_vtmp1 = 3.14;
    Map<float,float> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({3.14: -0.0, 0.0: 3.14})");
    assertEqual(true, true);
}
        
void test_Any_158() {
    bool value_tmp_ktmp0 = false;
    float value_tmp_vtmp0 = 0.0;
    Map<bool,float> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = false;
    float copy_tmp_vtmp0 = 0.0;
    Map<bool,float> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<float,String> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({false: 0.0})");
    assert(!(value == other), "different Any: unsafe({false: 0.0}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_159() {
    bool value_tmp_ktmp0 = true;
    float value_tmp_vtmp0 = -0.0;
    bool value_tmp_ktmp1 = false;
    float value_tmp_vtmp1 = 3.14;
    Map<bool,float> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = true;
    float copy_tmp_vtmp0 = -0.0;
    bool copy_tmp_ktmp1 = false;
    float copy_tmp_vtmp1 = 3.14;
    Map<bool,float> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = 0.0;
    String other_tmp_vtmp0 = "pi";
    Map<float,String> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({true: -0.0, false: 3.14})");
    assert(!(value == other), "different Any: unsafe({true: -0.0, false: 3.14}) unsafe({0.0: \"pi\"})");
    assertEqual(true, true);
}
        
void test_Any_160() {
    
    Map<bool,String> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<bool,String> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = -0.0;
    String other_tmp_vtmp0 = "pie";
    float other_tmp_ktmp1 = 3.14;
    String other_tmp_vtmp1 = " ";
    Map<float,String> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({-0.0: \"pie\", 3.14: \" \"})");
    assertEqual(true, true);
}
        
void test_Any_161() {
    bool value_tmp_ktmp0 = true;
    String value_tmp_vtmp0 = "pie";
    Map<bool,String> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = true;
    String copy_tmp_vtmp0 = "pie";
    Map<bool,String> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<float,Scalar> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({true: \"pie\"})");
    assert(!(value == other), "different Any: unsafe({true: \"pie\"}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_162() {
    bool value_tmp_ktmp0 = false;
    String value_tmp_vtmp0 = " ";
    bool value_tmp_ktmp1 = true;
    String value_tmp_vtmp1 = "\n";
    Map<bool,String> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = false;
    String copy_tmp_vtmp0 = " ";
    bool copy_tmp_ktmp1 = true;
    String copy_tmp_vtmp1 = "\n";
    Map<bool,String> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = 0.0;
    Scalar other_tmp_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({false: \" \", true: \"\n\"})");
    assert(!(value == other), "different Any: unsafe({false: \" \", true: \"\n\"}) unsafe({0.0: <__main__.Scalar object at 0x7f1c32703690>})");
    assertEqual(true, true);
}
        
void test_Any_163() {
    
    Map<bool,Scalar> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<bool,Scalar> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = -0.0;
    Scalar other_tmp_vtmp0 = unsafe("\n").asScalar();
    float other_tmp_ktmp1 = 3.14;
    Scalar other_tmp_vtmp1 = unsafe(true).asScalar();
    Map<float,Scalar> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({-0.0: <__main__.Scalar object at 0x7f1c327036d0>, 3.14: <__main__.Scalar object at 0x7f1c32703710>})");
    assertEqual(true, true);
}
        
void test_Any_164() {
    bool value_tmp_ktmp0 = false;
    Scalar value_tmp_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = false;
    Scalar copy_tmp_vtmp0 = unsafe(true).asScalar();
    Map<bool,Scalar> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<float,Any> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({false: <__main__.Scalar object at 0x7f1c32703510>})");
    assert(!(value == other), "different Any: unsafe({false: <__main__.Scalar object at 0x7f1c32703510>}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_165() {
    bool value_tmp_ktmp0 = true;
    Scalar value_tmp_vtmp0 = unsafe(1).asScalar();
    bool value_tmp_ktmp1 = false;
    Scalar value_tmp_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = true;
    Scalar copy_tmp_vtmp0 = unsafe(1).asScalar();
    bool copy_tmp_ktmp1 = false;
    Scalar copy_tmp_vtmp1 = unsafe(-0.0).asScalar();
    Map<bool,Scalar> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = 0.0;
    int other_tmp_vtmp0_tmp = -3;
    Any other_tmp_vtmp0 = unsafe(other_tmp_vtmp0_tmp);
    Map<float,Any> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({true: <__main__.Scalar object at 0x7f1c32703550>, false: <__main__.Scalar object at 0x7f1c32703590>})");
    assert(!(value == other), "different Any: unsafe({true: <__main__.Scalar object at 0x7f1c32703550>, false: <__main__.Scalar object at 0x7f1c32703590>}) unsafe({0.0: unsafe(-3)})");
    assertEqual(true, true);
}
        
void test_Any_166() {
    
    Map<bool,Any> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<bool,Any> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    float other_tmp_ktmp0 = -0.0;
    bool other_tmp_vtmp0_tmp = false;
    Any other_tmp_vtmp0 = unsafe(other_tmp_vtmp0_tmp);
    float other_tmp_ktmp1 = 3.14;
    int other_tmp_vtmp1_tmp = 2147483648;
    Any other_tmp_vtmp1 = unsafe(other_tmp_vtmp1_tmp);
    Map<float,Any> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({-0.0: unsafe(false), 3.14: unsafe(2147483648)})");
    assertEqual(true, true);
}
        
void test_Any_167() {
    bool value_tmp_ktmp0 = true;
    String value_tmp_vtmp0_tmp = "Hello World!";
    Any value_tmp_vtmp0 = unsafe(value_tmp_vtmp0_tmp);
    Map<bool,Any> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = true;
    String copy_tmp_vtmp0_tmp = "Hello World!";
    Any copy_tmp_vtmp0 = unsafe(copy_tmp_vtmp0_tmp);
    Map<bool,Any> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<String,bool> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({true: unsafe(\"Hello World!\")})");
    assert(!(value == other), "different Any: unsafe({true: unsafe(\"Hello World!\")}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_168() {
    bool value_tmp_ktmp0 = false;
    bool value_tmp_vtmp0_tmp = true;
    Any value_tmp_vtmp0 = unsafe(value_tmp_vtmp0_tmp);
    bool value_tmp_ktmp1 = true;
    bool value_tmp_vtmp1_tmp = true;
    Any value_tmp_vtmp1 = unsafe(value_tmp_vtmp1_tmp);
    Map<bool,Any> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    bool copy_tmp_ktmp0 = false;
    bool copy_tmp_vtmp0_tmp = true;
    Any copy_tmp_vtmp0 = unsafe(copy_tmp_vtmp0_tmp);
    bool copy_tmp_ktmp1 = true;
    bool copy_tmp_vtmp1_tmp = true;
    Any copy_tmp_vtmp1 = unsafe(copy_tmp_vtmp1_tmp);
    Map<bool,Any> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    String other_tmp_ktmp0 = "\n";
    bool other_tmp_vtmp0 = false;
    Map<String,bool> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({false: unsafe(true), true: unsafe(true)})");
    assert(!(value == other), "different Any: unsafe({false: unsafe(true), true: unsafe(true)}) unsafe({\"\n\": false})");
    assertEqual(true, true);
}
        
void test_Any_169() {
    
    Map<int,bool> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<int,bool> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    String other_tmp_ktmp0 = "asdf\n";
    bool other_tmp_vtmp0 = true;
    String other_tmp_ktmp1 = "";
    bool other_tmp_vtmp1 = false;
    Map<String,bool> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({\"asdf\n\": true, \"\": false})");
    assertEqual(true, true);
}
        
void test_Any_170() {
    int value_tmp_ktmp0 = 3;
    bool value_tmp_vtmp0 = false;
    Map<int,bool> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    int copy_tmp_ktmp0 = 3;
    bool copy_tmp_vtmp0 = false;
    Map<int,bool> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<String,int> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({3: false})");
    assert(!(value == other), "different Any: unsafe({3: false}) unsafe({})");
    assertEqual(true, true);
}
        
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
    assert(!(value == other), "different Any: unsafe({4294967298: \"\", 4294967299: \"Hello World!\"}) unsafe({\"asdf\n\": <__main__.Scalar object at 0x7f1c32703750>})");
    assertEqual(true, true);
}
        
void test_Any_181() {
    
    Map<int,Scalar> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<int,Scalar> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    String other_tmp_ktmp0 = "";
    Scalar other_tmp_vtmp0 = unsafe(0.0).asScalar();
    String other_tmp_ktmp1 = "Hello World!";
    Scalar other_tmp_vtmp1 = unsafe("asdf\n").asScalar();
    Map<String,Scalar> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({\"\": <__main__.Scalar object at 0x7f1c32703790>, \"Hello World!\": <__main__.Scalar object at 0x7f1c327037d0>})");
    assertEqual(true, true);
}
        
void test_Any_182() {
    int value_tmp_ktmp0 = -3;
    Scalar value_tmp_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    int copy_tmp_ktmp0 = -3;
    Scalar copy_tmp_vtmp0 = unsafe(" ").asScalar();
    Map<int,Scalar> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<String,Any> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({-3: <__main__.Scalar object at 0x7f1c327035d0>})");
    assert(!(value == other), "different Any: unsafe({-3: <__main__.Scalar object at 0x7f1c327035d0>}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_183() {
    int value_tmp_ktmp0 = -2;
    Scalar value_tmp_vtmp0 = unsafe(false).asScalar();
    int value_tmp_ktmp1 = -1;
    Scalar value_tmp_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    int copy_tmp_ktmp0 = -2;
    Scalar copy_tmp_vtmp0 = unsafe(false).asScalar();
    int copy_tmp_ktmp1 = -1;
    Scalar copy_tmp_vtmp1 = unsafe(2).asScalar();
    Map<int,Scalar> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    String other_tmp_ktmp0 = "pi";
    float other_tmp_vtmp0_tmp = -0.0;
    Any other_tmp_vtmp0 = unsafe(other_tmp_vtmp0_tmp);
    Map<String,Any> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({-2: <__main__.Scalar object at 0x7f1c32703610>, -1: <__main__.Scalar object at 0x7f1c32703650>})");
    assert(!(value == other), "different Any: unsafe({-2: <__main__.Scalar object at 0x7f1c32703610>, -1: <__main__.Scalar object at 0x7f1c32703650>}) unsafe({\"pi\": unsafe(-0.0)})");
    assertEqual(true, true);
}
        
void test_Any_184() {
    
    Map<int,Any> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<int,Any> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    String other_tmp_ktmp0 = "pie";
    String other_tmp_vtmp0_tmp = "pie";
    Any other_tmp_vtmp0 = unsafe(other_tmp_vtmp0_tmp);
    String other_tmp_ktmp1 = " ";
    float other_tmp_vtmp1_tmp = 0.0;
    Any other_tmp_vtmp1 = unsafe(other_tmp_vtmp1_tmp);
    Map<String,Any> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({\"pie\": unsafe(\"pie\"), \" \": unsafe(0.0)})");
    assertEqual(true, true);
}
        
void test_Any_185() {
    int value_tmp_ktmp0 = 0;
    int value_tmp_vtmp0_tmp = 2147483647;
    Any value_tmp_vtmp0 = unsafe(value_tmp_vtmp0_tmp);
    Map<int,Any> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    int copy_tmp_ktmp0 = 0;
    int copy_tmp_vtmp0_tmp = 2147483647;
    Any copy_tmp_vtmp0 = unsafe(copy_tmp_vtmp0_tmp);
    Map<int,Any> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<Scalar,bool> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({0: unsafe(2147483647)})");
    assert(!(value == other), "different Any: unsafe({0: unsafe(2147483647)}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_186() {
    int value_tmp_ktmp0 = 1;
    float value_tmp_vtmp0_tmp = 0.0;
    Any value_tmp_vtmp0 = unsafe(value_tmp_vtmp0_tmp);
    int value_tmp_ktmp1 = 2;
    String value_tmp_vtmp1_tmp = "pi";
    Any value_tmp_vtmp1 = unsafe(value_tmp_vtmp1_tmp);
    Map<int,Any> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    int copy_tmp_ktmp0 = 1;
    float copy_tmp_vtmp0_tmp = 0.0;
    Any copy_tmp_vtmp0 = unsafe(copy_tmp_vtmp0_tmp);
    int copy_tmp_ktmp1 = 2;
    String copy_tmp_vtmp1_tmp = "pi";
    Any copy_tmp_vtmp1 = unsafe(copy_tmp_vtmp1_tmp);
    Map<int,Any> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe(false).asScalar();
    bool other_tmp_vtmp0 = true;
    Map<Scalar,bool> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({1: unsafe(0.0), 2: unsafe(\"pi\")})");
    assert(!(value == other), "different Any: unsafe({1: unsafe(0.0), 2: unsafe(\"pi\")}) unsafe({<__main__.Scalar object at 0x7f1c32703810>: true})");
    assertEqual(true, true);
}
        
void test_Any_187() {
    
    Map<float,bool> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<float,bool> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe(2147483645).asScalar();
    bool other_tmp_vtmp0 = false;
    Scalar other_tmp_ktmp1 = unsafe(-0.0).asScalar();
    bool other_tmp_vtmp1 = true;
    Map<Scalar,bool> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({<__main__.Scalar object at 0x7f1c32703850>: false, <__main__.Scalar object at 0x7f1c32703890>: true})");
    assertEqual(true, true);
}
        
void test_Any_188() {
    float value_tmp_ktmp0 = 0.0;
    bool value_tmp_vtmp0 = true;
    Map<float,bool> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = 0.0;
    bool copy_tmp_vtmp0 = true;
    Map<float,bool> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<Scalar,int> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({0.0: true})");
    assert(!(value == other), "different Any: unsafe({0.0: true}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_189() {
    float value_tmp_ktmp0 = -0.0;
    bool value_tmp_vtmp0 = false;
    float value_tmp_ktmp1 = 3.14;
    bool value_tmp_vtmp1 = true;
    Map<float,bool> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = -0.0;
    bool copy_tmp_vtmp0 = false;
    float copy_tmp_ktmp1 = 3.14;
    bool copy_tmp_vtmp1 = true;
    Map<float,bool> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe("").asScalar();
    int other_tmp_vtmp0 = 2147483650;
    Map<Scalar,int> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({-0.0: false, 3.14: true})");
    assert(!(value == other), "different Any: unsafe({-0.0: false, 3.14: true}) unsafe({<__main__.Scalar object at 0x7f1c327038d0>: 2147483650})");
    assertEqual(true, true);
}
        
void test_Any_190() {
    
    Map<float,int> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<float,int> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe(true).asScalar();
    int other_tmp_vtmp0 = 2147483651;
    Scalar other_tmp_ktmp1 = unsafe(true).asScalar();
    int other_tmp_vtmp1 = 4294967293;
    Map<Scalar,int> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({<__main__.Scalar object at 0x7f1c32703910>: 2147483651, <__main__.Scalar object at 0x7f1c326f7f90>: 4294967293})");
    assertEqual(true, true);
}
        
void test_Any_191() {
    float value_tmp_ktmp0 = 0.0;
    int value_tmp_vtmp0 = 3;
    Map<float,int> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = 0.0;
    int copy_tmp_vtmp0 = 3;
    Map<float,int> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<Scalar,float> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({0.0: 3})");
    assert(!(value == other), "different Any: unsafe({0.0: 3}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_192() {
    float value_tmp_ktmp0 = -0.0;
    int value_tmp_vtmp0 = 2147483645;
    float value_tmp_ktmp1 = 3.14;
    int value_tmp_vtmp1 = 2147483646;
    Map<float,int> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = -0.0;
    int copy_tmp_vtmp0 = 2147483645;
    float copy_tmp_ktmp1 = 3.14;
    int copy_tmp_vtmp1 = 2147483646;
    Map<float,int> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe(-3).asScalar();
    float other_tmp_vtmp0 = 0.0;
    Map<Scalar,float> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({-0.0: 2147483645, 3.14: 2147483646})");
    assert(!(value == other), "different Any: unsafe({-0.0: 2147483645, 3.14: 2147483646}) unsafe({<__main__.Scalar object at 0x7f1c326f74d0>: 0.0})");
    assertEqual(true, true);
}
        
void test_Any_193() {
    
    Map<float,float> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<float,float> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe(0.0).asScalar();
    float other_tmp_vtmp0 = -0.0;
    Scalar other_tmp_ktmp1 = unsafe("").asScalar();
    float other_tmp_vtmp1 = 3.14;
    Map<Scalar,float> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({<__main__.Scalar object at 0x7f1c32703110>: -0.0, <__main__.Scalar object at 0x7f1c32703090>: 3.14})");
    assertEqual(true, true);
}
        
void test_Any_194() {
    float value_tmp_ktmp0 = 0.0;
    float value_tmp_vtmp0 = -0.0;
    Map<float,float> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = 0.0;
    float copy_tmp_vtmp0 = -0.0;
    Map<float,float> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<Scalar,String> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({0.0: -0.0})");
    assert(!(value == other), "different Any: unsafe({0.0: -0.0}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_195() {
    float value_tmp_ktmp0 = 3.14;
    float value_tmp_vtmp0 = -0.0;
    float value_tmp_ktmp1 = 0.0;
    float value_tmp_vtmp1 = 3.14;
    Map<float,float> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = 3.14;
    float copy_tmp_vtmp0 = -0.0;
    float copy_tmp_ktmp1 = 0.0;
    float copy_tmp_vtmp1 = 3.14;
    Map<float,float> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe(false).asScalar();
    String other_tmp_vtmp0 = "\n";
    Map<Scalar,String> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({3.14: -0.0, 0.0: 3.14})");
    assert(!(value == other), "different Any: unsafe({3.14: -0.0, 0.0: 3.14}) unsafe({<__main__.Scalar object at 0x7f1c327031d0>: \"\n\"})");
    assertEqual(true, true);
}
        
void test_Any_196() {
    
    Map<float,String> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<float,String> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe(-2).asScalar();
    String other_tmp_vtmp0 = "asdf\n";
    Scalar other_tmp_ktmp1 = unsafe(-0.0).asScalar();
    String other_tmp_vtmp1 = "";
    Map<Scalar,String> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({<__main__.Scalar object at 0x7f1c32703210>: \"asdf\n\", <__main__.Scalar object at 0x7f1c32703290>: \"\"})");
    assertEqual(true, true);
}
        
void test_Any_197() {
    float value_tmp_ktmp0 = 0.0;
    String value_tmp_vtmp0 = "pi";
    Map<float,String> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = 0.0;
    String copy_tmp_vtmp0 = "pi";
    Map<float,String> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<Scalar,Scalar> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({0.0: \"pi\"})");
    assert(!(value == other), "different Any: unsafe({0.0: \"pi\"}) unsafe({})");
    assertEqual(true, true);
}
        
void test_Any_198() {
    float value_tmp_ktmp0 = -0.0;
    String value_tmp_vtmp0 = "pie";
    float value_tmp_ktmp1 = 3.14;
    String value_tmp_vtmp1 = " ";
    Map<float,String> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0, value_tmp_ktmp1: value_tmp_vtmp1};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = -0.0;
    String copy_tmp_vtmp0 = "pie";
    float copy_tmp_ktmp1 = 3.14;
    String copy_tmp_vtmp1 = " ";
    Map<float,String> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0, copy_tmp_ktmp1: copy_tmp_vtmp1};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar other_tmp_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({-0.0: \"pie\", 3.14: \" \"})");
    assert(!(value == other), "different Any: unsafe({-0.0: \"pie\", 3.14: \" \"}) unsafe({<__main__.Scalar object at 0x7f1c327032d0>: <__main__.Scalar object at 0x7f1c32703310>})");
    assertEqual(true, true);
}
        
void test_Any_199() {
    
    Map<float,Scalar> value_tmp = {};
    Any value = unsafe(value_tmp);
    
    Map<float,Scalar> copy_tmp = {};
    Any copy = unsafe(copy_tmp);
    Scalar other_tmp_ktmp0 = unsafe(-1).asScalar();
    Scalar other_tmp_vtmp0 = unsafe("pi").asScalar();
    Scalar other_tmp_ktmp1 = unsafe(3.14).asScalar();
    Scalar other_tmp_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> other_tmp = {other_tmp_ktmp0: other_tmp_vtmp0, other_tmp_ktmp1: other_tmp_vtmp1};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({})");
    assert(!(value == other), "different Any: unsafe({}) unsafe({<__main__.Scalar object at 0x7f1c32703350>: <__main__.Scalar object at 0x7f1c327033d0>, <__main__.Scalar object at 0x7f1c32703390>: <__main__.Scalar object at 0x7f1c32703410>})");
    assertEqual(true, true);
}
        
void test_Any_200() {
    float value_tmp_ktmp0 = 0.0;
    Scalar value_tmp_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> value_tmp = {value_tmp_ktmp0: value_tmp_vtmp0};
    Any value = unsafe(value_tmp);
    float copy_tmp_ktmp0 = 0.0;
    Scalar copy_tmp_vtmp0 = unsafe(3.14).asScalar();
    Map<float,Scalar> copy_tmp = {copy_tmp_ktmp0: copy_tmp_vtmp0};
    Any copy = unsafe(copy_tmp);
    
    Map<Scalar,Any> other_tmp = {};
    Any other = unsafe(other_tmp);
    assert(value == copy, "equals Any: unsafe({0.0: <__main__.Scalar object at 0x7f1c32703690>})");
    assert(!(value == other), "different Any: unsafe({0.0: <__main__.Scalar object at 0x7f1c32703690>}) unsafe({})");
    assertEqual(true, true);
}
        