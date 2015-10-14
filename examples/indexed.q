
package indexed {

    /**
     * callback for the injected Subscription
     */
    interface Subscriber {
        void update(Map<String, String> update);
        void subscribed(); // signalled when initial update is complete
    }

    /**
     * A streaming subscription, callback potentially invoked from a
     * different thread
     */
    interface Subscription {
        void subscribe(String address, Subscriber callback);

    }

    class FakeAtomicReference {
        Map<String, String> map;
        Map<String, String> get() { return map; }
        void set(Map<String, String> value) { map = value; }
    }

    class IndexState extends Subscriber {
        FakeAtomicReference rcu;
        Subscriber state;
        IndexState() {
            rcu = new FakeAtomicReference();
            state = new Subscribing(self);
        }
        Map<String, String> get() {
            // kinda promise thing
            Map<String,String> index = rcu.get();
            while(index == null) {
                // somehow wait, maybe have a separate promise for htis
                index = rcu.get();
                // don't just busy loop
            }
            return index;
        }
        void update(Map<String, String> update) { state.update(update); }
        void subscribed() { state.subscribed(); }
    }

    class Subscribing extends Subscriber {
        IndexState index;
        Map<String, String> initial;
        Subscribing(IndexState i) {
            index = i;
            initial = new Map<String,String>();
        }
        void update(Map<String, String> update) {
            initial.update(update);
        }
        void subscribed() {
            index.rcu.set(initial);
            index.state = new Subscribed(index);
        }
    }

    class Subscribed extends Subscriber {
        IndexState index;
        Subscribed(IndexState i) { index = i; }
        void update(Map<String, String> update) {
            Map<String, String> next = new Map<String, String>(index.rcu.get());
            next.update(update);
            index.rcu.set(next);
        }
        void subscribed() { /* should not happen */ }
    }

    class Index {
        IndexState state;

        Index() {
            state = new IndexState();
        }
        String lookup(String address) {
            Map<String, String> index = state.get();
            return index[address];
        }
    }

    class Directory {
        Index index;

        Directory(Subscription sub, String address) {
            index = new Index();
            sub.subscribe(address, index.state);
        }
        String lookup(String address) {
            return index.lookup(address);
        }
    }
}
