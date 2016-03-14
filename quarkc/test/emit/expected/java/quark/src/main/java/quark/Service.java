package quark;

public interface Service {
    public static quark.reflect.Class quark_Service_ref = quark_md.Root.quark_Service_md;
     String getName();
     ServiceInstance getInstance();
     Double getTimeout();
     quark.concurrent.Future rpc(String methodName, java.util.ArrayList<Object> args);
}
