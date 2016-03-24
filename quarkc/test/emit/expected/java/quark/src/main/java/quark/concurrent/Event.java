package quark.concurrent;

/**
 * The contract between event implementations and Collector
 */
public interface Event {
    public static quark.reflect.Class quark_concurrent_Event_ref = quark_md.Root.quark_concurrent_Event_md;
     EventContext getContext();
     void fireEvent();
}
