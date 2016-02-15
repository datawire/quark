package builtin.concurrent;

/**
 * The contract between event implementations and Collector
 */
public interface Event {
    public static builtin.reflect.Class builtin_concurrent_Event_ref = builtin_md.Root.builtin_concurrent_Event_md;
     EventContext getContext();
     void fireEvent();
}
