package franz {

    @doc("Queue interface to a remote topic")
    class Queue {
        String baseUrl;
        String sessionId;

        @doc("Specify URL of remote topic on creation")
        Queue(String baseUrl) {
            self.baseUrl = baseUrl;
            self.sessionId = url_get(self.baseUrl + "/newsession");
        }

        @doc("Push a string value onto the remote topic")
        void push(String value) {
            url_get(self.baseUrl + "/push/" + value);
        }

        @doc("Retrieve the next value from the topic, blocking until a value is available.")
        String pop() {
            String res = "error";

            while (/* True */ res == res) {
                res = url_get(self.baseUrl + "/pop/" + self.sessionId);
                if (res != "error") {
                    return res;
                }
                sleep(0.1);
            }

            return "Not reachable";
        }
    }
}
