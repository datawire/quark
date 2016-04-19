package quark;

public interface HTTPResponse {
    public static quark.reflect.Class quark_HTTPResponse_ref = quark_md.Root.quark_HTTPResponse_md;
     Integer getCode();
     void setCode(Integer code);
     String getBody();
     void setBody(String body);
     void setHeader(String key, String value);
     String getHeader(String key);
     java.util.ArrayList<String> getHeaders();
}
