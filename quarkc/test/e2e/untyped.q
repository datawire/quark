class Obj extends Object {
    bool __eq__(Object other) {
        return same(self, other);
    }
}

void test_any_type() {
    Any a;
    List<Any> aListAny;
    List<Any> noListAny;
    Map<Scalar,Any> noMapAny;

    bool aBool = true;
    bool noBool;
    int aInt = 42;
    int noInt;
    String aString = "yay";
    String noString;
    //float aFloat = 4.2;
    //float noFloat;
    List<int> aListInt = [42];
    List<String> aListString = ["yay"];
    Obj object = new Obj();
    Object noObject;

    a = unsafe(noObject);
    assertEqual(0, a.type());
    assertEqual(null, a);
    assertEqual(noBool, a.asBool());
    assertEqual(noInt, a.asInt());
    assertEqual(noString, a.asString());
    //assertEqual(noFloat, a.asFloat()); // XXX need float for this test
    assertEqual(noListAny, a.asList());
    assertEqual(null, a.asMap()); // XXX: cannot compare maps in go
    assertEqual(noObject, a.asObject());

    a = unsafe(aBool);
    assertEqual(1, a.type());
    assertEqual(aBool, a.asBool());
    assertEqual(1, a.asInt());
    assertEqual("true", a.asString());
    //assertEqual(noFloat, a.asFloat()); // XXX need float for this test
    assertEqual(noListAny, a.asList());
    assertEqual(null, a.asMap()); // XXX: cannot compare maps in go
    assertEqual(noObject, a.asObject());

    a = unsafe(noBool);
    assertEqual(1, a.type());
    assertEqual(noBool, a.asBool());
    assertEqual(0, a.asInt());
    assertEqual("false", a.asString());
    //assertEqual(noFloat, a.asFloat()); // XXX need float for this test
    assertEqual(noListAny, a.asList());
    assertEqual(null, a.asMap()); // XXX: cannot compare maps in go
    assertEqual(noObject, a.asObject());

    a = unsafe(aInt);
    assertEqual(1, a.type());
    assertEqual(true, a.asBool());
    assertEqual(aInt, a.asInt());
    assertEqual("42", a.asString());
    //assertEqual(noFloat, a.asFloat()); // XXX need float for this test
    assertEqual(noListAny, a.asList());
    assertEqual(null, a.asMap()); // XXX: cannot compare maps in go
    assertEqual(noObject, a.asObject());

    a = unsafe(noInt);
    assertEqual(1, a.type());
    assertEqual(false, a.asBool());
    assertEqual(noInt, a.asInt());
    assertEqual("0", a.asString());
    //assertEqual(noFloat, a.asFloat()); // XXX need float for this test
    assertEqual(noListAny, a.asList());
    assertEqual(null, a.asMap()); // XXX: cannot compare maps in go
    assertEqual(noObject, a.asObject());

    a = unsafe(aString);
    assertEqual(1, a.type());
    assertEqual(aBool, a.asBool());
    assertEqual(noInt, a.asInt());
    assertEqual(aString, a.asString());
    //assertEqual(noFloat, a.asFloat()); // XXX need float for this test
    assertEqual(noListAny, a.asList());
    assertEqual(null, a.asMap()); // XXX cannot compare maps in go
    assertEqual(noObject, a.asObject());

    a = unsafe(noString);
    assertEqual(1, a.type());
    assertEqual(noBool, a.asBool());
    assertEqual(noInt, a.asInt());
    assertEqual(noString, a.asString());
    //assertEqual(noFloat, a.asFloat()); // XXX need float for this test
    assertEqual(noListAny, a.asList());
    assertEqual(null, a.asMap()); // XXX cannot compare maps in go
    assertEqual(noObject, a.asObject());

    //a = unsafe(aFloat)
    //assertEqual(1, a.type());
    //assertEqual(noBool, a.asBool());
    //assertEqual(noInt, a.asInt());
    //assertEqual(noString, a.asString());
    //assertEqual(aFloat, a.asFloat()); // XXX need float for this test
    //assertEqual(noListAny, a.asList());
    assertEqual(null, a.asMap()); // XXX cannot compare maps in go
    assertEqual(noObject, a.asObject());

    a = unsafe(aListInt);
    assertEqual(2, a.type());
    assertEqual(noBool, a.asBool());
    assertEqual(noInt, a.asInt());
    assertEqual(noString, a.asString());
    //assertEqual(noFloat, a.asFloat()); // XXX need float for this test
    aListAny = a.asList();
    assertEqual(1, aListAny.size());
    assertEqual(aListInt[0], aListAny[0].asInt());
    assertEqual(null, a.asMap()); // XXX cannot compare maps in go
    assertEqual(noObject, a.asObject());

    a = unsafe(aListString);
    assertEqual(2, a.type());
    assertEqual(noBool, a.asBool());
    assertEqual(noInt, a.asInt());
    assertEqual(noString, a.asString());
    //assertEqual(noFloat, a.asFloat()); // XXX need float for this test
    aListAny = a.asList();
    assertEqual(1, aListAny.size());
    assertEqual(aListString[0], aListAny[0].asString());
    assertEqual(null, a.asMap()); // XXX cannot compare maps in go
    assertEqual(noObject, a.asObject());

    a = unsafe(object);
    assertEqual(4, a.type());
    assertEqual(noBool, a.asBool());
    assertEqual(noInt, a.asInt());
    assertEqual(noString, a.asString());
    assertEqual(noListAny, a.asList());
    assertEqual(null, a.asMap()); // XXX cannot compare maps in go
    assertEqual(object, a.asObject());
}
