package builtin.concurrent;

/**
 * Timeout expiry handler
 */
public interface TimeoutListener {
     void onTimeout(Timeout timeout);
}
