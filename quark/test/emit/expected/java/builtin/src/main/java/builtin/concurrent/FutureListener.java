package builtin.concurrent;

/**
 * event handler for a future completion
 */
public interface FutureListener {
     void onFuture(Future future);
}
