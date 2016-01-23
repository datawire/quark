package builtin.concurrent;

/**
 * The contract between event implementations and Collector
 */
public interface Event {
     EventContext getContext();
     void fireEvent();
}
