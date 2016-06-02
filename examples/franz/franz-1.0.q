quark *;
package franz 1.0.0;

namespace franz {

    @doc("Interface to a remote topic")
    class Topic {

        String baseUrl;
        String subscriptionId;
	    String name;

        @doc("Specify URL of remote topic on creation")
	    Topic(String baseUrl, String name) {
            self.baseUrl = baseUrl;
	        self.name = name;
            self.subscriptionId = url_get(self.baseUrl + "/subscribe/" + self.name);
        }

        @doc("Push a string value onto the remote topic")
        void push(String value) {
            url_get(self.baseUrl + "/push/" + self.name + "/" + value);
        }

        @doc("Retrieve the next value from the topic, blocking until a value is available.")
        String pop() {
            String res = "error";

            while (/* True */ res == res) {
                res = url_get(self.baseUrl + "/pop/" + self.name + "/" + self.subscriptionId);
                if (res != "error") {
                    return res;
                }
                sleep(0.1);
            }

            return "Not reachable";
        }
    }
}
