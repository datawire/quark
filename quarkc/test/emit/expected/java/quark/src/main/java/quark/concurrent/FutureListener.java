package quark.concurrent;

/**
 * event handler for a future completion
 */
public interface FutureListener {
    public static quark.reflect.Class quark_concurrent_FutureListener_ref = quark_md.Root.quark_concurrent_FutureListener_md;
     void onFuture(Future future);
}
