package autocast_lib;

/* BEGIN_BUILTIN */

public interface Service {
     String getURL();
     io.datawire.quark.runtime.Runtime getRuntime();
     Object rpc(String name, Object message);
}
/* END_BUILTIN */
