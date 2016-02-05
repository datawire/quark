package fallback 1.2.3;
import builtin.concurrent;

namespace fallback {

    class Content extends Future {
        String body;
    }

    class Client {

        Content get(List<String> urls, long timeout) {
            Content result = new Content();
            Fallback fallback = new Fallback(urls, timeout, result);
            fallback.call(urls[0]);
            return result;
        }

    }

    class Fallback extends HTTPHandler, TimeoutListener {

        int idx = 0;
        List<String> urls;
        Content result;
        Timeout timeout;

        Fallback(List<String> urls, long timeout, Content result) {
            self.urls = urls;
            self.result = result;
            self.timeout = new Timeout(timeout);
        }

        void call(String url) {
            Context.runtime().request(new HTTPRequest(url), self);
            self.timeout.start(self);
        }

        void onHTTPResponse(HTTPRequest rq, HTTPResponse response) {
            self.timeout.cancel();
            if (response.getCode() == 200) {
                self.result.body = response.getBody();
                self.result.finish(null);
            } else {
                self.next();
            }
        }

        void onTimeout(concurrent.Timeout timeout) {
            self.next();
        }

        void next() {
            idx = idx + 1;
            if (idx < urls.size()) {
                self.call(urls[idx]);
            } else {
                self.result.body = self.fallback();
                self.result.finish(null);
            }
        }

        String fallback() {
            JSONObject json = urls;
            return "this is the fallback content for these urls: " + json.toString();
        }

    }

}
