@version("1.1")
package franz {

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
        void subscribe(Subscriber callback);

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
                // somehow wait
                sleep(0.1);
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

    class ReaderSubscription extends Async<String> { /* , Subscription */
        Reader reader;
        int last;
        Subscriber sub;
        ReaderSubscription(Reader reader) {
            self.reader = reader;
            self.last = parseInt(url_get(self.baseUrl + "/last/" + self.reader.name));

        }
        void subscribe(Subscriber sub) {
            self.sub = sub;
            self.reader.next_async(self);
        }
        void callback(String result) {
            String key = "TODO";
            String value = result;
            Map<String,String> update = new Map<String,String>();
            update[key] = value;
            self.sub.update(update);
            if (self.reader.index == self.last) {
                self.sub.subscribed();
            }
            self.reader.next_async(self);
        }
        void errback(String failure) {
            url_get_async(self.reader._current_url(), self);
        }
    }

    class Reader {
        String baseUrl;
        String name;
        int index;
        Reader(String baseUrl, String name) {
            self.baseUrl = baseUrl;
            self.name = name;
            self.index = parseInt(url_get(self.baseUrl + "/first/" + name)) - 1;
        }
        String _next_url() {
            self.index = self.index + 1;
            return _current_url();
        }
        String _current_url() {
            return self.baseUrl + "/fetch/" + self.name + "/" + self.index.toString();
        }
        String next() {
            String url = self._next_url();
            String res = "error";
            while (res == "error") {
                res = url_get(url);
            }
            return res;
        }
        void next_async(Async<String> cb) {
            url_get_async(self._next_url(), cb);
        }
    }


    @doc("Interface to a remote topic")
    class Topic {
        String baseUrl;
        Reader index;              // client-side state
        Index lvc;
        String name;

        @doc("Specify URL of remote topic on creation")
        Topic(String baseUrl, String name) {
            self.baseUrl = baseUrl + "/v2";
            self.index = new Reader(self.baseUrl, name);
            self.lvc = new Index();
            new ReaderSubscription(new Reader(self.baseUrl, name)).subscribe(self.lvc.state);
            self.name = name;
        }

        @doc("Push a string value onto the remote topic")
        void push(String value) {
            url_get(self.baseUrl + "/push/" + self.name + "/" + value);
        }

        @doc("Retrieve the next value from the topic, blocking until a value is available.")
        String pop() {
            return index.next();
        }

        @doc("Lookup the value for the key")
        String lookup(String key) {
            return lvc.lookup(key);
        }
    }
}
