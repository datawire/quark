@version("0.1.0")
package directory {

    @doc("A directory entry maps a named service to a set of physical endpoints.")
    class Entry {
        String service;
        List<String> endpoints;

        String toString() {
            String res = "Entry: ";
            if (service != null) {
                res = res + service;
            } else {
                res = res + "(null service)";
            }

            res = res + " -> ";
            if (endpoints != null) {
                res = res + "[ ";
                int idx = 0;
                while (idx < endpoints.size()) {
                    res = res + endpoints[idx] + " ";
                    idx = idx + 1;
                }
                res = res + "]";
            } else {
                res = res + "(null endpoints)";
            }

            return res;
        }
    }

    class Directory extends Task, WSHandler {

        Runtime runtime;
        WebSocket socket = null;

        bool initialized = false;
        Map<String,Entry> entries = new Map<String, Entry>();
        float timeout = 60.0;
        List<AsyncLookup> deferred = [];

        String service;
        String endpoint;

        Directory(Runtime runtime, String url, String service, String endpoint) {
            self.runtime = runtime;
            self.runtime.acquire(); // would be nice to have a with statement or something
            self.runtime.open(url, self);
            self.runtime.schedule(self, 3.0); // heartbeat interval
            self.runtime.release();
            self.service = service;
            self.endpoint = endpoint;
        }

        void onWSInit(WebSocket socket) {}

        void onWSConnected(WebSocket socket) {
            self.socket = socket;
            JSONObject tetherInfo = new JSONObject()
                .setObjectItem("op", "tether".toJSON())
                .setObjectItem("service", self.service.toJSON())
                .setObjectItem("endpoint", self.endpoint.toJSON());
            self.socket.send(tetherInfo.toString());

            JSONObject subscribeInfo = new JSONObject()
                .setObjectItem("op", "subscribe".toJSON());
            self.socket.send(subscribeInfo.toString());
        }

        void onExecute(Runtime runtime) {
            if (self.socket != null) {
                JSONObject heartbeatInfo = new JSONObject()
                    .setObjectItem("op", "heartbeat".toJSON());
                self.socket.send(heartbeatInfo.toString());
            }
            self.runtime.schedule(self, 3.0);
        }

        void onWSMessage(WebSocket socket, String message) {
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
                    int idx = 0;
                    while (idx < self.deferred.size()) {
                        self.runtime.schedule(self.deferred[idx], 0.0);
                        idx = idx + 1;
                    }
                } else {
                    print("Got message with unknown op: " + op);
                    print(message);
                }
            }

        }

        void onWSError(WebSocket socket) {
            self.runtime.fail("WebSocket Error!");
        }

        @doc("Lookup a directory entry by name.")
        Entry lookup(String name) {
            Entry result = null;
            self.runtime.acquire();
            while (self.initialized != true) {
                self.runtime.wait(self.timeout);
            }
            result = entries[name];
            self.runtime.release();
            return result;
        }

        void lookupAsync(String name, LookupCallback callback) {
            self.runtime.acquire();
            AsyncLookup task = new AsyncLookup(self, name, callback);
            if (self.initialized) {
                self.runtime.schedule(task, 0.0);
            } else {
                self.deferred.add(task);
            }
            self.runtime.release();
        }

    }

    interface LookupCallback {
        void run(Entry result);
    }

    class AsyncLookup extends Task {
        Directory directory;
        String name;
        LookupCallback callback;

        AsyncLookup(Directory directory, String name, LookupCallback callback) {
            self.directory = directory;
            self.name = name;
            self.callback = callback;
        }

        void onExecute(Runtime runtime) {
            Entry result = self.directory.entries[self.name];
            self.callback.run(result);
        }
    }

}
