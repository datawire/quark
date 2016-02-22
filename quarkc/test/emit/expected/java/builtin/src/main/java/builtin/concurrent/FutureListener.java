package builtin.concurrent;

/**
 * event handler for a future completion
 */
public interface FutureListener {
    public static builtin.reflect.Class builtin_concurrent_FutureListener_ref = builtin_md.Root.builtin_concurrent_FutureListener_md;
     void onFuture(Future future);
}
