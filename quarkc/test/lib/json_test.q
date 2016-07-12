quark *;
import quark.test;
import quark.reflect;

void main(List<String> args) {
    test.run(args);
}

class Serialize {
    String value = "";
    Map<String,String> another_value = null;
    Map<String,String> third_value = {};
}

class JSONTest {
    // If a JSON message is missing a field that the object has it just skips
    // setting it.
    void testMissingFieldInJSON() {
	String encoded = "{\"value\": \"abc\"}";
	Class klass = Class.get("json_test.Serialize");
	Serialize result = ?fromJSON(klass, new Serialize(), encoded.parseJSON());
	checkEqual("abc", result.value);
	checkEqual(null, result.another_value);
    }

    // If a field is not defined then isUndefined() is true, and isDefined() is
    // false.
    void testUndefined() {
	String encoded = "{\"value\": \"abc\"}";
	JSONObject json = encoded.parseJSON();
	checkEqual(true, json["foo"].isUndefined());
	checkEqual(false, json["foo"].isDefined());
    }

    // Undefined fields don't cause default values to be clobbered.
    void testUndefinedDefaultValue() {
	String encoded = "{}";
	Class klass = Class.get("json_test.Serialize");
	Serialize result = ?fromJSON(klass, new Serialize(), encoded.parseJSON());
	checkEqual("", result.value);
	checkEqual(null, result.another_value);
	checkEqual({}, result.third_value);
    }
}
