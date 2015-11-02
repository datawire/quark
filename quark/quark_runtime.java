// Quark Runtime

package io.datawire;

import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
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

    public static String urlencode(Map map) {
        StringBuilder result = new StringBuilder();
        boolean first = true;
        for (Object obj : map.entrySet()) {
            Map.Entry entry = (Map.Entry) obj;
            if (first) {
                first = false;
            } else {
                result.append("&");
            }
            result.append(URLEncoder.encode(entry.getKey() + ""));
            result.append("=");
            result.append(entry.getValue() + "");
        }
        return result.toString();
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

        public Double getNumber() {
            if (this.value instanceof Number) {
                return ((Number) this.value).doubleValue();
            }
            return null;
        }

        public String getString() {
            if (this.value instanceof String) {
                return (String) this.value;
            }
            return null;
        }

        public Boolean getBool() {
            if (this.value instanceof Boolean) {
                return (Boolean) this.value;
            }
            return null;
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

    public static String join(String sep, List<String> parts) {
        StringBuilder b = new StringBuilder();
        boolean first = true;
        for (String part : parts) {
            if (first) {
                first = false;
            } else {
                b.append(sep);
            }
            b.append(part);
        }
        return b.toString();
    }

    public interface WebSocketHandler {
        void onInit(WebSocket socket);
        void onConnected(WebSocket socket);
        void onMessage(WebSocket socket, String message);
        void onClose(WebSocket socket);
        void onError(WebSocket socket);
        void onFinal(WebSocket socket);
    }

    public static abstract class AbstractWebSocketHandler implements WebSocketHandler {
        @Override public void onInit(WebSocket socket) {}
        @Override public void onConnected(WebSocket socket) {}
        @Override public void onMessage(WebSocket socket, String message) {}
        @Override public void onClose(WebSocket socket) {}
        @Override public void onError(WebSocket socket) {}
        @Override public void onFinal(WebSocket socket) {}
    }

    public interface WebSocket {
        void send(String message);
    }

    public interface HTTPHandler {
        void onInit(HTTPRequest request);
        void onResponse(HTTPRequest request, HTTPResponse response);
        void onError(HTTPRequest request);
        void onFinal(HTTPRequest request);
    }

    public static abstract class AbstractHTTPHandler implements HTTPHandler {
        @Override public void onInit(HTTPRequest request) {}
        @Override public void onResponse(HTTPRequest request, HTTPResponse response) {}
        @Override public void onError(HTTPRequest request) {}
        @Override public void onFinal(HTTPRequest request) {}
    }

    public static class HTTPRequest {
        private String url;
        private String method;
        private String body;
        private Map<String,String> headers;
        public HTTPRequest(String url) {
            this.url = url;
            this.method = "GET";
            this.body = null;
            this.headers = new LinkedHashMap<String,String>();
        }
        public void setMethod(String method) { this.method = method; }
        public void setBody(String body) { this.body = body; }
        public void setHeader(String key, String value) { this.headers.put(key, value); }

        public String getUrl() { return url; }
        public String getMethod() { return method; }
        public String getBody() { return body; }
        public Map<String,String> getHeaders() { return headers; }
    }

    public interface HTTPResponse {
        int getCode();
        String getBody();
    }

    public interface Task {
        void onExecute(Runtime runtime);
    }

    public interface Runtime {
        void acquire();
        void release();
        void wait(Double timeoutInSeconds);
        void open(String url, WebSocketHandler handler);
        void request(HTTPRequest request, HTTPHandler handler);
        void schedule(Task handler, Double delayInSeconds);
    }
}
