package builtin;

public interface Service {
     String getURL();
     Long getTimeout();
     builtin.concurrent.Future rpc(String name, Object message, java.util.ArrayList<Object> options);
}
