package io.datawire.quark.runtime;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.fasterxml.jackson.jr.ob.JSON;

public class JSONObject {
    private Object value;

    public JSONObject() {
        this.value = null;
    }

    protected JSONObject(Object value) {
        this.value = value;
    }

    public String toString() {
        try {
            return JSON.std
                    .with(JSON.Feature.WRITE_NULL_PROPERTIES)
                    .asString(this.value);
        } catch (Exception ex) {
            return null; // XXX json error handling
        }
    }

    public static JSONObject parse(String json) {
        try {
            return wrap(JSON.std.anyFrom(json));
        } catch (Exception ex) {
            return undefined();
        }
    }

    private static JSONObject wrap(Object o) {
        return new JSONObject(o);
    }

    public static JSONObject undefined() {
        return _undefined;
    }

    public JSONObject setObject() {
        this.value = new LinkedHashMap<String,Object>();
        return this;
    }

    public JSONObject setList() {
        this.value = new ArrayList<Object>();
        return this;
    }

    public Boolean isList() {
        return this.value instanceof List;
    }

    public JSONObject setString(String value) {
        this.value = value;
        return this;
    }

    public JSONObject setNumber(Object value) {
        this.value = (Number) value;
        return this;
    }

    public JSONObject setBool(boolean value) {
        this.value = value;
        return this;
    }

    public JSONObject setNull() {
        this.value = null;
        return this;
    }

    public Boolean isNull() {
        return this.value == null;
    }

    public JSONObject setListItem(int index, JSONObject value) {
        if (!(this.value instanceof List)) {
            setList();
        }
        @SuppressWarnings("unchecked")
        List<Object> l = (List<Object>) this.value;
        for(int i = l.size(); i < index; i++) {
            l.add(null);
        }
        l.add(value.value);
        return this;
    }

    public int size() {
        if (this.value instanceof List) {
            return ((List) this.value).size();
        } else if (isObject()) {
            return ((Map) this.value).size();
        } else {
            return 1;
        }
    }

    public JSONObject getListItem(int index) {
        if (this.value instanceof List) {
            @SuppressWarnings("unchecked")
            List<Object> l = (List<Object>) this.value;
            if (0 <= index && index < l.size()) {
                return wrap(l.get(index));
            }
        }
        return undefined();
    }

    public JSONObject setObjectItem(String key, JSONObject value) {
        if (!isObject()) {
            setObject();
        }
        @SuppressWarnings("unchecked")
        Map<String,Object> m = (Map<String,Object>) this.value;
        m.put(key, value.value);
        return this;
    }

    public JSONObject getObjectItem(String key) {
        if (isObject()) {
            @SuppressWarnings("unchecked")
            Map<String,Object> m = (Map<String,Object>) this.value;
            if (m.containsKey(key)) {
                return wrap(m.get(key));
            }
        }
        return undefined();
    }

    private boolean isObject() {
        return this.value instanceof Map;
    }

    public ArrayList<String> keys() {
        if (!isObject()) {
            return null;
        }
        @SuppressWarnings("unchecked")
            Map<String,Object> m = (Map<String,Object>) this.value;
        return new ArrayList(m.keySet());
    }

    public Double getNumber() {
        if (this.value instanceof Number) {
            return ((Number) this.value).doubleValue();
        }
        return null;
    }

    public Boolean isNumber() {
        return this.value instanceof Number;
    }

    public String getString() {
        if (this.value instanceof String) {
            return (String) this.value;
        }
        return null;
    }

    public Boolean isString() {
        return this.value instanceof String;
    }

    public Boolean getBool() {
        if (this.value instanceof Boolean) {
            return (Boolean) this.value;
        }
        return null;
    }

    public Boolean isBool() {
        return this.value instanceof Boolean;
    }

    public Boolean isDefined() {
        return !isUndefined();
    }

    public Boolean isUndefined() {
        return this == _undefined;
    }

    static class Undefined extends JSONObject {
        public Undefined() {
            super(new Object());
        }
        @Override public JSONObject setObject() { return this; }
        @Override public JSONObject setList() { return this; }
        @Override public JSONObject setString(String v) { return this; }
        @Override public JSONObject setNumber(Object v) { return this; }
        @Override public JSONObject setBool(boolean v) { return this; }
        @Override public JSONObject setNull() { return this; }
        @Override public JSONObject setListItem(int i, JSONObject v) { return this; }
        @Override public JSONObject setObjectItem(String k, JSONObject v) { return this; }
    }
    private static JSONObject _undefined = new Undefined();

    public String getType() {
        if (isBool()) return "boolean";
        if (isNumber()) return "number";
        if (isString()) return "string";
        if (isNull()) return "null";
        if (isList()) return "list";
        if (isObject()) return "object";
        return "undefined";
    }
}
