// Quark Runtime

package io.datawire;

import java.io.InputStreamReader;
import java.net.URL;
import java.util.Scanner;
import java.util.LinkedHashMap;
import java.util.ArrayList;
import java.util.Map;
import java.util.List;
import com.fasterxml.jackson.jr.ob.JSON;

public class quark_runtime {
    // Unused because Math.floorMod exists
    public static int modulo(int a, int b) {
        return (a % b + b) % b;
    }

    public static String url_get(String urlStr) {
        try {
            URL url = new URL(urlStr);
            InputStreamReader reader = new InputStreamReader(url.openStream());
            // Stolen from https://tfetimes.com/readconvert-an-inputstream-to-a-string/
            Scanner scanner = new Scanner(reader).useDelimiter("\\A");
            String res = scanner.hasNext() ? scanner.next() : "";
            return res;
        } catch (Exception e) {
            return "error";
        }
    }

    public static void sleep(double seconds) {
        try {
            Thread.sleep((int)(seconds * 1000));
        } catch(InterruptedException ex) {
            Thread.currentThread().interrupt();
        }
    }

    public static class JSONObject {
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
                return null; // XXX
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

        public JSONObject setString(String value) {
            this.value = value;
            return this;
        }

        public JSONObject setNumber(Number value) {
            this.value = value;
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

        public JSONObject setListItem(int index, JSONObject value) {
            if (!(this.value instanceof List)) {
                setList();
            }
            List<Object> l = (List<Object>) this.value;
            for(int i = l.size(); i < index; i++) {
                l.add(null);
            }
            l.add(value.value);
            return this;
        }

        public JSONObject getListItem(int index) {
            if (this.value instanceof List) {
                List<Object> l = (List<Object>) this.value;
                if (0 <= index && index < l.size()) {
                    return wrap(l.get(index));
                }
            }
            return undefined();
        }

        public JSONObject setObjectItem(String key, JSONObject value) {
            if (!(this.value instanceof Map)) {
                setObject();
            }
            Map<String,Object> m = (Map<String,Object>) this.value;
            m.put(key, value.value);
            return this;
        }

        public JSONObject getObjectItem(String key) {
            if (this.value instanceof Map) {
                Map<String,Object> m = (Map<String,Object>) this.value;
                if (m.containsKey(key)) {
                    return wrap(m.get(key));
                }
            }
            return undefined();
        }

        public double getNumber() {
            if (this.value instanceof Number) {
                return ((Number) this.value).doubleValue();
            }
            return 0; // XXX
        }

        public String getString() {
            if (this.value instanceof String) {
                return (String) this.value;
            }
            return ""; // XXX
        }

        static class Undefined extends JSONObject {
            public Undefined() {
                super(new Object());
            }
            @Override public JSONObject setObject() { return this; }
            @Override public JSONObject setList() { return this; }
            @Override public JSONObject setString(String v) { return this; }
            @Override public JSONObject setNumber(Number v) { return this; }
            @Override public JSONObject setBool(boolean v) { return this; }
            @Override public JSONObject setNull() { return this; }
            @Override public JSONObject setListItem(int i, JSONObject v) { return this; }
            @Override public JSONObject setObjectItem(String k, JSONObject v) { return this; }
        }
        private static JSONObject _undefined = new Undefined();
    }
}
