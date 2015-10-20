package franz {

    @doc("Interface to a remote topic")
    class Topic {
        String baseUrl;
        int index;              // client-side state

        @doc("Specify URL of remote topic on creation")
        Topic(String baseUrl) {
            self.baseUrl = baseUrl + "/v2";
            self.index = parseInt(url_get(self.baseUrl + "/first"));
        }

        @doc("Push a string value onto the remote topic")
        void push(String value) {
            url_get(self.baseUrl + "/push/" + value);
        }

        @doc("Retrieve the next value from the topic, blocking until a value is available.")
        String pop() {
            String res = "error";
            while (res == "error") {
                res = url_get(self.baseUrl + "/fetch/" + self.index.toString());
            }
            self.index = self.index + 1;
            return res;
        }
    }
}
