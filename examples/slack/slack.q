quark 0.6.100;
package slack 0.1.0;

@doc("A high level API for accessing all aspects of the the slack web service.")
@doc("This includes both regular http and realtime web sockets functionality.")

namespace slack {
    @doc("A slack client can be used to make requests or subscribe to events from the slack service.")
    class SlackClient extends HTTPHandler {
        Runtime runtime;
        String token;

        SlackClient(String token) {
            self.runtime = concurrent.Context.runtime();
            self.token = token;
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

        @doc("Post a message to a slack channel.")
        void post(String channel, String message) {
            self.request("chat.postMessage", {"channel": channel, "text": message}, self);
        }

        @doc("Subscribe to slack events.")
        void subscribe(SlackHandler handler) {
            self.request("rtm.start", {}, new Subscription(self, handler));
        }
    }

    class Subscription extends WSHandler, HTTPHandler {

        Runtime runtime;
        SlackHandler handler;
        WebSocket socket = null;
        int event_id = 0;

        Subscription(SlackClient client, SlackHandler handler) {
            self.runtime = client.runtime;
            self.handler = handler;
        }

        void ws_connect(String wsurl) {
            self.runtime.open(wsurl, self);
        }

        void ws_send(String message) {
            socket.send(message);
        }

        void onWSConnected(WebSocket socket) {
            self.socket = socket;
        }

        void onWSClose(WebSocket socket) {
            print("socket closed");
        }

        void onWSError(WebSocket socket) {
            print("socket error");
        }

        event.SlackEvent construct(String type) {
            if (type == null) { return new event.MessageSent(); }
            if (type == "error") { return new event.SlackError(); }
            if (type == "hello") { return new event.Hello(); }
            if (type == "message") { return new event.Message(); }
            if (type == "user_typing") { return new event.UserTyping(); }
            if (type == "channel_marked") { return new event.ChannelMarked(); }
            if (type == "channel_created") { return new event.ChannelCreated(); }
            if (type == "channel_joined") { return new event.ChannelJoined(); }
            if (type == "channel_left") { return new event.ChannelLeft(); }
            if (type == "channel_deleted") { return new event.ChannelDeleted(); }
            if (type == "channel_rename") { return new event.ChannelRename(); }
            if (type == "channel_archive") { return new event.ChannelArchive(); }
            if (type == "channel_unarchive") { return new event.ChannelUnarchive(); }
            if (type == "channel_history_changed") { return new event.ChannelHistoryChanged(); }
            return new event.SlackEvent();
        }

        void onWSMessage(WebSocket socket, String message) {
            JSONObject obj = message.parseJSON();
            String type = obj["type"].getString();
            event.SlackEvent event = self.construct(type);
            event.load(self, obj);
            event.dispatch(self.handler);
        }

        void onHTTPResponse(HTTPRequest request, HTTPResponse response) {
            int code = response.getCode();
            event.SlackError error = null;
            if (code != 200) {
                error = new event.SlackError();
                error.code = code;
                error.dispatch(self.handler);
            } else {
                JSONObject login_data = response.getBody().parseJSON();
                if (login_data["ok"].getBool()) {
                    // parse login data here
                    self.ws_connect(login_data["url"]);
                } else {
                    error = new event.SlackError();
                    error.text = login_data["error"];
                    error.dispatch(self.handler);
                }
            }
        }

    }

    @doc("A reference to a user.")
    class User {
        Subscription subscription;
        String user;

        User(Subscription subscription, String user) {
            self.subscription = subscription;
            self.user = user;
        }
    }

    @doc("A reference to a channel.")
    class Channel {
        Subscription subscription;
        String channel;

        Channel(Subscription subscription, String channel) {
            self.subscription = subscription;
            self.channel = channel;
        }

        @doc("Send a message to a channel.")
        void send(String message) {
            int id = subscription.event_id;
            subscription.event_id = subscription.event_id + 1;
            JSONObject msg = new JSONObject();
            msg["id"] = id;
            msg["type"] = "message";
            msg["channel"] = self.channel;
            msg["text"] = message;
            subscription.ws_send(msg.toString());
        }
    }

    @doc("This namespace contains all slack events.")
    namespace event {
        @doc("Base class for all slack events.")
        class SlackEvent {

            @doc("The event type.")
            String type;

            @doc("The user associated with the event.")
            User user = null;

            @doc("The channel associated with the event.")
            Channel channel = null;

            @doc("The timestamp associated with the event.")
            String timestamp;

            void load(Subscription subscription, JSONObject obj) {
                self.type = obj["type"];
                String uid = obj["user"];
                if (uid != null) {
                    self.user = new User(subscription, uid);
                }
                String chid = obj["channel"];
                if (chid != null) {
                    self.channel = new Channel(subscription, chid);
                }
                self.timestamp = obj["ts"];
            }

            void dispatch(SlackHandler handler) {
                handler.onSlackEvent(self);
            }
        }

        @doc("The server has indicated an error has occurred.")
        class SlackError extends SlackEvent {

            @doc("The numeric code associated with the error condition.")
            int code;
            @doc("A text description of the error condition.")
            String text;

            void load(Subscription subscription, JSONObject obj) {
                super.load(subscription, obj);
                self.code = obj["code"];
                self.text = obj["text"];
            }

            void dispatch(SlackHandler handler) {
                handler.onSlackError(self);
            }
        }

        @doc("The client successfully connected to the server.")
        class Hello extends SlackEvent {
            void dispatch(SlackHandler handler) {
                handler.onHello(self);
            }
        }

        @doc("A message was sent to a channel.")
        class Message extends SlackEvent {
            @doc("The subtype field indicates the type of message.")
            String subtype;
            bool hidden = false;
            String text;
            Edited edited;

            void load(Subscription subscription, JSONObject obj) {
                super.load(subscription, obj);
                self.subtype = obj["subtype"];
                self.hidden = obj["hidden"];
                self.text = obj["text"];
                JSONObject edited = obj["edited"];
                if (edited.isDefined()) {
                    self.edited = new Edited();
                    self.edited.user = new User(subscription, edited["user"]);
                    self.edited.timestamp = edited["ts"];
                }
            }

            void dispatch(SlackHandler handler) {
                handler.onMessage(self);
            }
        }

        @doc("A message we sent has been acknowledged by Slack.")
        class MessageSent extends SlackEvent {
            String text;
            Edited edited;

            void load(Subscription subscription, JSONObject obj) {
                super.load(subscription, obj);
                self.text = obj["text"];
            }

            void dispatch(SlackHandler handler) {
                handler.onMessageSent(self);
            }
        }

        @doc("Metadata about an edit to a message.")
        class Edited {
            User user;
            String timestamp;
        }

        @doc("A channel member is typing a message.")
        class UserTyping extends SlackEvent {

            void dispatch(SlackHandler handler) {
                handler.onUserTyping(self);
            }
        }

        @doc("Your channel read marker was updated.")
        class ChannelMarked extends SlackEvent {

            void dispatch(SlackHandler handler) {
                handler.onChannelMarked(self);
            }
        }

        @doc("A team channel was created.")
        class ChannelCreated extends SlackEvent {

            void dispatch(SlackHandler handler) {
                handler.onChannelCreated(self);
            }
        }

        @doc("You joined a channel.")
        class ChannelJoined extends SlackEvent {

            void dispatch(SlackHandler handler) {
                handler.onChannelJoined(self);
            }
        }

        @doc("You left a channel.")
        class ChannelLeft extends SlackEvent {

            void dispatch(SlackHandler handler) {
                handler.onChannelLeft(self);
            }
        }

        @doc("A team channel was deleted.")
        class ChannelDeleted extends SlackEvent {

            void dispatch(SlackHandler handler) {
                handler.onChannelDeleted(self);
            }
        }

        @doc("A team channel was renamed.")
        class ChannelRename extends SlackEvent {

            void dispatch(SlackHandler handler) {
                handler.onChannelRename(self);
            }
        }

        @doc("A team channel was archived.")
        class ChannelArchive extends SlackEvent {

            void dispatch(SlackHandler handler) {
                handler.onChannelArchive(self);
            }
        }

        @doc("A team channel was unarchived.")
        class ChannelUnarchive extends SlackEvent {

            void dispatch(SlackHandler handler) {
                handler.onChannelUnarchive(self);
            }
        }

        @doc("Bulk updates were made to a channel's history.")
        class ChannelHistoryChanged extends SlackEvent {

            void dispatch(SlackHandler handler) {
                handler.onChannelHistoryChanged(self);
            }
        }
    }

    @doc("Event handler for slack events. All unhandled events")
    @doc("are delegated to onSlackEvent by default.")
    interface SlackHandler {

        void onSlackEvent(event.SlackEvent event) {}

        void onHello(event.Hello hello) {
            self.onSlackEvent(hello);
        }

        void onSlackError(event.SlackError error) {
            self.onSlackEvent(error);
        }

        void onMessage(event.Message message) {
            self.onSlackEvent(message);
        }

        void onMessageSent(event.MessageSent message) {
            self.onSlackEvent(message);
        }

        void onUserTyping(event.UserTyping typing) {
            self.onSlackEvent(typing);
        }

        void onChannelMarked(event.ChannelMarked marked) {
            self.onSlackEvent(marked);
        }

        void onChannelCreated(event.ChannelCreated created) {
            self.onSlackEvent(created);
        }

        void onChannelJoined(event.ChannelJoined joined) {
            self.onSlackEvent(joined);
        }

        void onChannelLeft(event.ChannelLeft left) {
            self.onSlackEvent(left);
        }

        void onChannelDeleted(event.ChannelDeleted deleted) {
            self.onSlackEvent(deleted);
        }

        void onChannelRename(event.ChannelRename renamed) {
            self.onSlackEvent(renamed);
        }

        void onChannelArchive(event.ChannelArchive archived) {
            self.onSlackEvent(archived);
        }

        void onChannelUnarchive(event.ChannelUnarchive unarchived) {
            self.onSlackEvent(unarchived);
        }

        void onChannelHistoryChanged(event.ChannelHistoryChanged historyChanged) {
            self.onSlackEvent(historyChanged);
        }

    }

}
