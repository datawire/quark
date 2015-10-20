package franz {

    @doc("Interface to a remote topic")
    class Topic {
        String baseUrl;
        String name;
        int index;              // client-side subscription state

        @doc("Specify URL of remote topic on creation")
	Topic(String baseUrl, String name) {
            self.baseUrl = baseUrl + "/v2";
	    self.name = name;
            self.index = parseInt(url_get(self.baseUrl + "/first/" + self.name));
        }

        @doc("Push a string value onto the remote topic")
        void push(String value) {
            url_get(self.baseUrl + "/push/" + self.name + "/" + value);
        }

        @doc("Retrieve the next value from the topic, blocking until a value is available.")
        String pop() {
            String res = "error";
            while (res == "error") {
                res = url_get(self.baseUrl + "/fetch/" + self.name + "/" + self.index.toString());
            }
            self.index = self.index + 1;
            return res;
        }
    }
}
