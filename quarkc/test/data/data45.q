
void test_Map_Scalar_String__441() {
    Scalar value_ktmp0 = unsafe(-2).asScalar();
    String value_vtmp0 = "asdf\n";
    Scalar value_ktmp1 = unsafe(-0.0).asScalar();
    String value_vtmp1 = "";
    Map<Scalar,String> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(-2).asScalar();
    String copy_vtmp0 = "asdf\n";
    Scalar copy_ktmp1 = unsafe(-0.0).asScalar();
    String copy_vtmp1 = "";
    Map<Scalar,String> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,String> other = {};
    assert(value == copy, "equals Map<Scalar,String>: {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"}");
    assert(!(value == other), "different Map<Scalar,String>: {<__main__.Scalar object at 0x7f9dce0f0210>: \"asdf\n\", <__main__.Scalar object at 0x7f9dce0f0290>: \"\"} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_String__442() {
    
    Map<Scalar,String> value = {};
    
    Map<Scalar,String> copy = {};
    Scalar other_ktmp0 = unsafe("Hello World!").asScalar();
    String other_vtmp0 = "pi";
    Map<Scalar,String> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,String>: {}");
    assert(!(value == other), "different Map<Scalar,String>: {} {<__main__.Scalar object at 0x7f9dce0f02d0>: \"pi\"}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_String__443() {
    Scalar value_ktmp0 = unsafe("Hello World!").asScalar();
    String value_vtmp0 = "pi";
    Map<Scalar,String> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe("Hello World!").asScalar();
    String copy_vtmp0 = "pi";
    Map<Scalar,String> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(true).asScalar();
    String other_vtmp0 = "pie";
    Scalar other_ktmp1 = unsafe(-1).asScalar();
    String other_vtmp1 = " ";
    Map<Scalar,String> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,String>: {<__main__.Scalar object at 0x7f9dce0f02d0>: \"pi\"}");
    assert(!(value == other), "different Map<Scalar,String>: {<__main__.Scalar object at 0x7f9dce0f02d0>: \"pi\"} {<__main__.Scalar object at 0x7f9dce0f0310>: \"pie\", <__main__.Scalar object at 0x7f9dce0f0350>: \" \"}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_String__444() {
    Scalar value_ktmp0 = unsafe(true).asScalar();
    String value_vtmp0 = "pie";
    Scalar value_ktmp1 = unsafe(-1).asScalar();
    String value_vtmp1 = " ";
    Map<Scalar,String> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(true).asScalar();
    String copy_vtmp0 = "pie";
    Scalar copy_ktmp1 = unsafe(-1).asScalar();
    String copy_vtmp1 = " ";
    Map<Scalar,String> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,String> other = {};
    assert(value == copy, "equals Map<Scalar,String>: {<__main__.Scalar object at 0x7f9dce0f0310>: \"pie\", <__main__.Scalar object at 0x7f9dce0f0350>: \" \"}");
    assert(!(value == other), "different Map<Scalar,String>: {<__main__.Scalar object at 0x7f9dce0f0310>: \"pie\", <__main__.Scalar object at 0x7f9dce0f0350>: \" \"} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Scalar__445() {
    
    Map<Scalar,Scalar> value = {};
    
    Map<Scalar,Scalar> copy = {};
    Scalar other_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar other_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Scalar>: {}");
    assert(!(value == other), "different Map<Scalar,Scalar>: {} {<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Scalar__446() {
    Scalar value_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar value_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe("Hello World!").asScalar();
    Scalar copy_vtmp0 = unsafe(true).asScalar();
    Map<Scalar,Scalar> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(-1).asScalar();
    Scalar other_vtmp0 = unsafe("pi").asScalar();
    Scalar other_ktmp1 = unsafe(3.14).asScalar();
    Scalar other_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Scalar>: {<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>}");
    assert(!(value == other), "different Map<Scalar,Scalar>: {<__main__.Scalar object at 0x7f9dce0f02d0>: <__main__.Scalar object at 0x7f9dce0f0310>} {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Scalar__447() {
    Scalar value_ktmp0 = unsafe(-1).asScalar();
    Scalar value_vtmp0 = unsafe("pi").asScalar();
    Scalar value_ktmp1 = unsafe(3.14).asScalar();
    Scalar value_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(-1).asScalar();
    Scalar copy_vtmp0 = unsafe("pi").asScalar();
    Scalar copy_ktmp1 = unsafe(3.14).asScalar();
    Scalar copy_vtmp1 = unsafe(false).asScalar();
    Map<Scalar,Scalar> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Scalar> other = {};
    assert(value == copy, "equals Map<Scalar,Scalar>: {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>}");
    assert(!(value == other), "different Map<Scalar,Scalar>: {<__main__.Scalar object at 0x7f9dce0f0350>: <__main__.Scalar object at 0x7f9dce0f03d0>, <__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f0410>} {}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Scalar__448() {
    
    Map<Scalar,Scalar> value = {};
    
    Map<Scalar,Scalar> copy = {};
    Scalar other_ktmp0 = unsafe(3.14).asScalar();
    Scalar other_vtmp0 = unsafe("pi").asScalar();
    Map<Scalar,Scalar> other = {other_ktmp0: other_vtmp0};
    assert(value == copy, "equals Map<Scalar,Scalar>: {}");
    assert(!(value == other), "different Map<Scalar,Scalar>: {} {<__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f03d0>}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Scalar__449() {
    Scalar value_ktmp0 = unsafe(3.14).asScalar();
    Scalar value_vtmp0 = unsafe("pi").asScalar();
    Map<Scalar,Scalar> value = {value_ktmp0: value_vtmp0};
    Scalar copy_ktmp0 = unsafe(3.14).asScalar();
    Scalar copy_vtmp0 = unsafe("pi").asScalar();
    Map<Scalar,Scalar> copy = {copy_ktmp0: copy_vtmp0};
    Scalar other_ktmp0 = unsafe(false).asScalar();
    Scalar other_vtmp0 = unsafe(0.0).asScalar();
    Scalar other_ktmp1 = unsafe(0).asScalar();
    Scalar other_vtmp1 = unsafe("pie").asScalar();
    Map<Scalar,Scalar> other = {other_ktmp0: other_vtmp0, other_ktmp1: other_vtmp1};
    assert(value == copy, "equals Map<Scalar,Scalar>: {<__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f03d0>}");
    assert(!(value == other), "different Map<Scalar,Scalar>: {<__main__.Scalar object at 0x7f9dce0f0390>: <__main__.Scalar object at 0x7f9dce0f03d0>} {<__main__.Scalar object at 0x7f9dce0f0410>: <__main__.Scalar object at 0x7f9dce0f0490>, <__main__.Scalar object at 0x7f9dce0f0450>: <__main__.Scalar object at 0x7f9dce0f04d0>}");
    assertEqual(true, true);
}
        
void test_Map_Scalar_Scalar__450() {
    Scalar value_ktmp0 = unsafe(false).asScalar();
    Scalar value_vtmp0 = unsafe(0.0).asScalar();
    Scalar value_ktmp1 = unsafe(0).asScalar();
    Scalar value_vtmp1 = unsafe("pie").asScalar();
    Map<Scalar,Scalar> value = {value_ktmp0: value_vtmp0, value_ktmp1: value_vtmp1};
    Scalar copy_ktmp0 = unsafe(false).asScalar();
    Scalar copy_vtmp0 = unsafe(0.0).asScalar();
    Scalar copy_ktmp1 = unsafe(0).asScalar();
    Scalar copy_vtmp1 = unsafe("pie").asScalar();
    Map<Scalar,Scalar> copy = {copy_ktmp0: copy_vtmp0, copy_ktmp1: copy_vtmp1};
    
    Map<Scalar,Scalar> other = {};
    assert(value == copy, "equals Map<Scalar,Scalar>: {<__main__.Scalar object at 0x7f9dce0f0410>: <__main__.Scalar object at 0x7f9dce0f0490>, <__main__.Scalar object at 0x7f9dce0f0450>: <__main__.Scalar object at 0x7f9dce0f04d0>}");
    assert(!(value == other), "different Map<Scalar,Scalar>: {<__main__.Scalar object at 0x7f9dce0f0410>: <__main__.Scalar object at 0x7f9dce0f0490>, <__main__.Scalar object at 0x7f9dce0f0450>: <__main__.Scalar object at 0x7f9dce0f04d0>} {}");
    assertEqual(true, true);
}
        