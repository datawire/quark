package franz {

    @doc("Queue interface to a remote topic")
    class Queue {
        String baseUrl;
        int index;              // client-side state

        @doc("Specify URL of remote topic on creation")
        Queue(String baseUrl) {
            self.baseUrl = baseUrl;
            self.index = parseInt(url_get(self.baseUrl + "/firstIdx"));
        }

        @doc("Push a string value onto the remote topic")
        void push(String value) {
            url_get(self.baseUrl + "/submit/" + value);
        }

        @doc("Retrieve the next value from the topic, blocking until a value is available.")
        String pop() {
            String res = "error";

            while (/* True */ res == res) {
                res = url_get(self.baseUrl + "/retrieve/" + self.index.toString());
                if (res != "error") {
                    self.index = self.index + 1;
                    return res;
                }
                sleep(0.1);
            }

            return "Not reachable";
        }
    }
}
