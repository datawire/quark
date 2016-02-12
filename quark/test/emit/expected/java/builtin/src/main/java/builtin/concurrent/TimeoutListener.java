package builtin.concurrent;

/**
 * Timeout expiry handler
 */
public interface TimeoutListener {
    public static builtin.reflect.Class builtin_concurrent_TimeoutListener_ref = builtin_md.Root.builtin_concurrent_TimeoutListener_md;
     void onTimeout(Timeout timeout);
}
