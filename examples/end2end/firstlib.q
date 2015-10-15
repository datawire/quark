package importable {

    class Queue {
        String baseUrl;
        String sessionId;

        Queue(String baseUrl) {
            self.baseUrl = baseUrl;
            self.sessionId = url_get(self.baseUrl + "/newsession");
        }

        void push(String value) {
            url_get(self.baseUrl + "/push/" + self.sessionId + "/" + value);
        }

        String pop() {
            String res = url_get(self.baseUrl + "/pop/" + self.sessionId);
            if (res == "error") {
                return "";
            }
            return res;
        }
    }
}
