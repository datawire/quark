@version(0.1)
package slack {

    class User {
        Runtime runtime;
        String user;

        User(Runtime runtime, String user) {
            self.runtime = runtime;
            self.user = user;
        }
    }

    class Channel {
        Runtime runtime;
        String channel;

        Channel(Runtime runtime, String channel) {
            self.runtime = runtime;
            self.channel = channel;
        }
    }

    class SlackEvent {
        User user = null;
        Channel channel = null;

        void load(JSONObject obj, Runtime runtime) {
            JSONObject uobj = obj["user"];
            if (!uobj.isNull()) {
                self.user = new User(runtime, uobj.getString());
            }
            JSONObject chobj = obj["channel"];
            if (!chobj.isNull()) {
                self.channel = new Channel(runtime, chobj.getString());
            }
        }

        void dispatch(SlackHandler handler) {
            handler.onSlackEvent(self);
        }
    }

    class SlackError extends SlackEvent {
        int code;
        String text;

        void load(JSONObject obj, Runtime runtime) {
            super.load(obj, runtime);
            self.code = obj["code"].getNumber();
            self.text = obj["text"].getString();
        }

        void dispatch(SlackHandler handler) {
            handler.onSlackError(self);
        }
    }

    class Hello extends SlackEvent {
        void dispatch(SlackHandler handler) {
            handler.onHello(self);
        }
    }

    class Message extends SlackEvent {
        @doc("The type field indicates the type of message.")
        String type;
        bool hidden = false;
        String text;
        String timestamp;
        Edited edited;

        void load(JSONObject obj, Runtime runtime) {
            super.load(obj, runtime);
            self.type = obj["subtype"];
            if (obj["hidden"] != null) {
                self.hidden = true;
            }
            self.text = obj["text"].getString();
            self.timestamp = obj["timestamp"].getString();
            JSONObject edited = obj["edited"];
            if (!edited.isNull()) {
                self.edited = new Edited();
                self.edited.user = new User(runtime, edited["user"].getString());
                self.edited.timestamp = edited["timestamp"].getString();
            }
        }

        void dispatch(SlackHandler handler) {
            handler.onMessage(self);
        }
    }

    class Edited {
        User user;
        String timestamp;
    }

    class UserTyping extends SlackEvent {

        void dispatch(SlackHandler handler) {
            handler.onUserTyping(self);
        }
    }

    interface SlackHandler {

        void onSlackEvent(SlackEvent event) {}

        void onHello(Hello hello) {}

        void onSlackError(SlackError error) {}

        void onMessage(Message message) {}

        void onUserTyping(UserTyping ut) {}

    }

    class Client extends WebSocketHandler, HTTPHandler {

        Runtime runtime;
	String token;
        SlackHandler handler;

	Client(Runtime runtime, String token, SlackHandler handler) {
            self.runtime = runtime;
            self.token = token;
            self.handler = handler;
        }

        void connect() {
            self.request("rtm.start", new Map<String,Object>(), self);
        }

        void request(String request, Map<String,Object> params, HTTPHandler handler) {
            String url = "https://slack.com/api/" + request;
            HTTPRequest req = new HTTPRequest(url);
            req.setMethod("POST");
            params["token"] = self.token;
            req.setBody(params.urlencode());
            self.runtime.request(req, handler);
        }

        void ws_connect(String wsurl) {
            self.runtime.open(wsurl, self);
        }

        void onConnected(WebSocket socket) {
            print("connected");
        }

        SlackEvent construct(String type) {
            if (type == "error") { return new SlackError(); }
            if (type == "hello") { return new Hello(); }
            if (type == "message") { return new Message(); }
            if (type == "user_typing") { return new UserTyping(); }
            return new SlackEvent();
        }

        void onMessage(WebSocket socket, String message) {
            JSONObject obj = message.parseJSON();
            String type = obj["type"].getString();
            SlackEvent event = self.construct(type);
            event.dispatch(self.handler);
        }

        void onResponse(HTTPRequest request, HTTPResponse response) {
            int code = response.getCode();
            SlackError error;
            if (code != 200) {
                error = new SlackError();
                error.code = code;
                error.dispatch(self.handler);
            } else {
                JSONObject login_data = response.getBody().parseJSON();
                if (login_data["ok"].getBool()) {
                    // parse login data here
                    self.ws_connect(login_data["url"].getString());
                } else {
                    error = new SlackError();
                    error.text = login_data["error"].getString();
                    error.dispatch(self.handler);
                }
            }
        }

    }

}
