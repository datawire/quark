package quark;

public interface HTTPRequest {
    public static quark.reflect.Class quark_HTTPRequest_ref = quark_md.Root.quark_HTTPRequest_md;
     String getUrl();
     void setMethod(String method);
     String getMethod();
     void setBody(String data);
     String getBody();
     void setHeader(String key, String value);
     String getHeader(String key);
     java.util.ArrayList<String> getHeaders();
}
