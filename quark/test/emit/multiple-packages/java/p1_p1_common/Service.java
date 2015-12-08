package p1_p1_common;

/* BEGIN_BUILTIN */

public interface Service {
     String getURL();
     io.datawire.quark.runtime.Runtime getRuntime();
     Object rpc(String name, Object message);
}
/* END_BUILTIN */
