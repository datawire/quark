package quark.concurrent;

/**
 * Timeout expiry handler
 */
public interface TimeoutListener {
    public static quark.reflect.Class quark_concurrent_TimeoutListener_ref = quark_md.Root.quark_concurrent_TimeoutListener_md;
     void onTimeout(Timeout timeout);
}
