package slackpack 1.0.0;

@doc("A high level API for accessing all aspects of the the slack web service.")
@doc("This includes both regular http and realtime web sockets functionality.")
namespace slack {

    @doc("This namespace contains all slack events.")
    namespace event {
        @doc("Base class for all slack events.")
        class SlackEvent {

            @doc("The event type.")
            String type;

            @doc("The user associated with the event.")
            User user;

            @doc("The channel associated with the event.")
            Channel channel;

            @doc("The timestamp associated with the event.")
            String timestamp;

            void load(Client client, JSONObject obj) {}

            void dispatch(SlackHandler handler) {}
        }

        @doc("The server has indicated an error has occurred.")
        class SlackError extends SlackEvent {

            @doc("The numeric code associated with the error condition.")
            int code;
            @doc("A text description of the error condition.")
            String text;

            void load(Client client, JSONObject obj) {}

            void dispatch(SlackHandler handler) {}
        }

        @doc("The client successfully connected to the server.")
        class Hello extends SlackEvent {
            void dispatch(SlackHandler handler) {}
        }

        @doc("A message was sent to a channel.")
        class Message extends SlackEvent {
            @doc("The subtype field indicates the type of message.")
            String subtype;
            bool hidden;
            String text;
            Edited edited;

            void load(Client client, JSONObject obj) {}

            void dispatch(SlackHandler handler) {}
        }

        @doc("Metadata about an edit to a message.")
        class Edited {
            User user;
            String timestamp;
        }
    }

    @doc("Event handler for slack events. All unhandled events")
    @doc("are delegated to onSlackEvent by default.")
    interface SlackHandler {

        void onSlackEvent(event.SlackEvent event) {}

        void onHello(event.Hello hello) { }

        void onSlackError(event.SlackError error) {}

        void onMessage(event.Message message) {}
    }

    @doc("A reference to a user.")
    class User {
        Client client;
        String user;

        User(Client client, String user) {}
    }

    @doc("A reference to a channel.")
    class Channel {
        Client client;
        String channel;

        Channel(Client client, String channel) {}

        @doc("Send a message to a channel.")
        void send(String message) {}
    }

    @doc("Represents a persistent connection to the slack service.")
    class Client extends WSHandler, HTTPHandler {

        Runtime runtime;
	String token;
        SlackHandler handler;
        int event_id;
        WebSocket socket;

	Client(Runtime runtime, String token, SlackHandler handler) {}

        @doc("Connect the client to the slack service.")
        void connect() {}

        void request(String request, Map<String,Object> params, HTTPHandler handler) {}

        void ws_connect(String wsurl) {}

        void ws_send(String message) {}

        void onWSConnected(WebSocket socket) {}

        void onWSClose(WebSocket socket) {}

        void onWSError(WebSocket socket) {}

        event.SlackEvent construct(String type) { return null; }

        void onWSMessage(WebSocket socket, String message) {}

        void onHTTPResponse(HTTPRequest request, HTTPResponse response) {}
    }
}

class Handler extends slack.SlackHandler {
    void onSlackEvent(slack.event.SlackEvent event) {}
}
