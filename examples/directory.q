class WebSocket {
    void setHandler(Object o) {}
    void send(String s) {}
}
class Runtime {
    void acquire() {}
    void release() {}
    void wait() {}
    WebSocket open(String url) { return null; }
    void schedule(Object o, float t) {}
}
class Future<T> {}

package directory {

    class Entry {
        String service;
        List<String> endpoints;
    }

    class Directory { // implements WebHandler, Task

        Runtime runtime;
        WebSocket socket;

        bool initialized;
        Map<String,Entry> entries;
        float timeout = 60.0;
        List<AsyncLookup> deferred = [];

        Directory(Runtime runtime, String url) {
            self.runtime = runtime;
            self.runtime.acquire(); // would be nice to have a with statement or something
            self.socket = self.runtime.open(url);
            self.socket.setHandler(self);
            JSONObject jobj = new JSONObject(); // or maybe just new Map<String,Object> if that can work
            jobj["tether-info"] = "...".toJSON();
            self.socket.send(jobj.toString()); // might need to be toJSON() or something like that

            self.runtime.schedule(self, 3.0); // heartbeat interval

            self.runtime.release();
        }

        void onExecute(Runtime runtime) {
            self.socket.send("{heartbeat-info...}");
        }

        void onMessage(WebSocket socket, String message) {
            JSONObject jobj = message.parseJSON();
            String op = jobj["op"].getString();
            if (op == "entry") {
                Entry entry = new Entry();
                entry.service = jobj["service"].getString();
                entry.endpoints = new List<String>();
                int i = 0;
                JSONObject endpoints = jobj["endpoints"];
                JSONObject endpoint = endpoints.getListItem(i);
                while (endpoint != endpoints.undefined()) {
                    entry.endpoints.add(endpoint.getString());
                    i = i + 1;
                    endpoint = endpoints.getListItem(i);
                }
                entries[entry.service] = entry;
            } else {
                if (op == "initialized") {
                    self.initialized = true;
                    self.fireDeferred();
                }
            }
        }

        Entry lookup(String name) {
            Entry result = null;
            self.runtime.aquire();
            while (!self.initialized) {
                self.runtime.wait(self.timeout);
            }
            result = entries[name];
            self.runtime.release();
            return result;
        }

        Future<Entry> lookupAsync(String name) {
            AsyncLookup result;
            self.directory.runtime.acquire();
            result = new AsyncLookup(self, name);
            if (self.initialized) {
                self.runtime.schedule(result);
            } else {
                self.deferred.append(result);
            }
            self.directory.runtime.release();
            return result;
        }

    }

    class AsyncLookup { // implements Task, Future<Entry>
        Directory directory;
        String name;
        Entry result;

        AsyncLookup(Directory directory, String name) {
            self.name = name;
            self.directory = directory;
            self.result = null;
        }

        void onExecute(Runtime runtime) {
            self.result = self.directory.entries[self.name];
            // fire completion on future here???
        }
    }

}
