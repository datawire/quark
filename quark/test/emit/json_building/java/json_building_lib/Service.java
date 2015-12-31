package json_building_lib;

/* BEGIN_BUILTIN */

public interface Service {
     String getURL();
     io.datawire.quark.runtime.Runtime getRuntime();
     Long getTimeout();
     Object rpc(String name, Object message, java.util.ArrayList<Object> options);
}
/* END_BUILTIN */
