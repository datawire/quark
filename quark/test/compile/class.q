class C {
    void f(int a, int b, String c) {
    }
}

    class Reader {
        String baseUrl;
        int index;
        Reader(String baseUrl) {
            self.baseUrl = baseUrl;
            self.index = parseInt(url_get(self.baseUrl + "/firstIdx"));
        }
        String _next_url() {
            String ret = self.baseUrl + "/retrieve_block/" + self.index.toString();
            self.index = self.index + 1;
            return ret;
        }
        String next() {
            return url_get(self._next_url());
        }
        void next_async(Async<String> cb) {
            url_get_async(self._next_url(), cb);
        }
    }


