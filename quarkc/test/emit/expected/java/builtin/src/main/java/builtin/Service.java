package builtin;

public interface Service {
    public static builtin.reflect.Class builtin_Service_ref = builtin_md.Root.builtin_Service_md;
     String getURL();
     Long getTimeout();
     builtin.concurrent.Future rpc(String name, java.util.ArrayList<Object> args);
}
