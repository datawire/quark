package builtin.concurrent;

/**
 * A simple FIFO
 */
public class Queue<T> implements io.datawire.quark.runtime.QObject {
    public java.util.ArrayList<T> items;
    public Integer head;
    public Integer tail;
    public Queue() {
        (this).items = new java.util.ArrayList<T>();
        (this).head = 0;
        (this).tail = 0;
    }
    public void put(T item) {
        if (((this).tail) < (((this).items).size())) {
            ((this).items).set(((this).tail), (item));
        } else {
            ((this).items).add(item);
        }
        (this).tail = ((this).tail) + (1);
    }
    public T get() {
        T item = (T) (null);
        if (((this).head) < ((this).tail)) {
            item = ((this).items).get((this).head);
            (this).head = ((this).head) + (1);
        } else {
            if (((this).head) > (0)) {
                (this).head = 0;
                (this).tail = 0;
            }
        }
        return item;
    }
    public Integer size() {
        return ((this).tail) - ((this).head);
    }
    public String _getClass() {
        return "builtin.concurrent.Queue<Object>";
    }
    public Object _getField(String name) {
        if ((name)==("items") || ((name) != null && (name).equals("items"))) {
            return (this).items;
        }
        if ((name)==("head") || ((name) != null && (name).equals("head"))) {
            return (this).head;
        }
        if ((name)==("tail") || ((name) != null && (name).equals("tail"))) {
            return (this).tail;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("items") || ((name) != null && (name).equals("items"))) {
            (this).items = (java.util.ArrayList<T>) (value);
        }
        if ((name)==("head") || ((name) != null && (name).equals("head"))) {
            (this).head = (Integer) (value);
        }
        if ((name)==("tail") || ((name) != null && (name).equals("tail"))) {
            (this).tail = (Integer) (value);
        }
    }
}
