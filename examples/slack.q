@version(0.1)
package slack {

    class User {
        Client client;
        String user;

        User(Client client, String user) {
            self.client = client;
            self.user = user;
        }
    }

    class Channel {
        Client client;
        String channel;

        Channel(Client client, String channel) {
            self.client = client;
            self.channel = channel;
        }

        void send(String message) {
            int id = client.event_id;
            client.event_id = client.event_id + 1;
            JSONObject msg = new JSONObject();
            msg["id"] = id.toJSON();
            msg["type"] = "message".toJSON();
            msg["channel"] = self.channel.toJSON();
            msg["text"] = message.toJSON();
            client.ws_send(msg.toString());
        }
    }

    class SlackEvent {
        String type;
        User user = null;
        Channel channel = null;

        void load(Client client, JSONObject obj) {
            self.type = obj["type"].getString();
            JSONObject uobj = obj["user"];
            if (uobj.isDefined()) {
                self.user = new User(client, uobj.getString());
            }
            JSONObject chobj = obj["channel"];
            if (chobj.isDefined()) {
                self.channel = new Channel(client, chobj.getString());
            }
        }

        void dispatch(SlackHandler handler) {
            handler.onSlackEvent(self);
        }
    }

    class SlackError extends SlackEvent {
        int code;
        String text;

        void load(Client client, JSONObject obj) {
            super.load(client, obj);
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
        @doc("The subtype field indicates the type of message.")
        String subtype;
        bool hidden = false;
        String text;
        String timestamp;
        Edited edited;

        void load(Client client, JSONObject obj) {
            super.load(client, obj);
            self.subtype = obj["subtype"].getString();
            if (obj["hidden"] != null) {
                self.hidden = true;
            }
            self.text = obj["text"].getString();
            self.timestamp = obj["timestamp"].getString();
            JSONObject edited = obj["edited"];
            if (edited.isDefined()) {
                self.edited = new Edited();
                self.edited.user = new User(client, edited["user"].getString());
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
        int event_id = 0;
        WebSocket socket = null;

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
            req.setHeader("Content-Type", "application/x-www-form-urlencoded");
            self.runtime.request(req, handler);
        }

        void ws_connect(String wsurl) {
            self.runtime.open(wsurl, self);
        }

        void ws_send(String message) {
            socket.send(message);
        }

        void onConnected(WebSocket socket) {
            self.socket = socket;
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
            event.load(self, obj);
            event.dispatch(self.handler);
        }

        void onResponse(HTTPRequest request, HTTPResponse response) {
            int code = response.getCode();
            SlackError error = null;
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
