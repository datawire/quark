package franz {

    @doc("Interface to a remote topic")
    class Topic {
        String baseUrl;
        String subscriptionId;

        @doc("Specify URL of remote topic on creation")
        Topic(String baseUrl) {
            self.baseUrl = baseUrl;
            self.subscriptionId = url_get(self.baseUrl + "/subscribe");
        }

        @doc("Push a string value onto the remote topic")
        void push(String value) {
            url_get(self.baseUrl + "/push/" + value);
        }

        @doc("Retrieve the next value from the topic, blocking until a value is available.")
        String pop() {
            String res = "error";

            while (/* True */ res == res) {
                res = url_get(self.baseUrl + "/pop/" + self.subscriptionId);
                if (res != "error") {
                    return res;
                }
                sleep(0.1);
            }

            return "Not reachable";
        }
    }
}
