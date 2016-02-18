package builtin;

public interface Service {
    public static builtin.reflect.Class builtin_Service_ref = builtin_md.Root.builtin_Service_md;
     String getName();
     ServiceInstance getInstance();
     Long getTimeout();
     builtin.concurrent.Future rpc(String methodName, java.util.ArrayList<Object> args);
}
