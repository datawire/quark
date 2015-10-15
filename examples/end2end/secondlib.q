package importable {

    class Queue {
        String baseUrl;
        int index;              // client-side state

        Queue(String baseUrl) {
            self.baseUrl = baseUrl;
            self.index = parseInt(url_get(self.baseUrl + "/firstIdx"));
        }

        void push(String value) {
            url_get(self.baseUrl + "/submit/" + value);
        }

        String pop() {
            String res = url_get(self.baseUrl + "/retrieve/" + self.index.toString());
            if (res != "error") {
                self.index = self.index + 1;
                return res;
            }
            return "";
        }
    }
}
