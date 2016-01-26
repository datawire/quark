package slack.event;

/**
 * A message was sent to a channel.
 */
public class Message extends SlackEvent implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class slack_event_Message_ref = slackpack_md.Root.slack_event_Message_md;
    /**
     * The subtype field indicates the type of message.
     */
    public String subtype;
    public Boolean hidden = false;
    public String text;
    public Edited edited;
    public Message() {
        super();
    }
    public void load(slack.Client client, io.datawire.quark.runtime.JSONObject obj) {
        super.load(client, obj);
        (this).subtype = ((obj).getObjectItem("subtype")).getString();
        (this).hidden = ((obj).getObjectItem("hidden")).getBool();
        (this).text = ((obj).getObjectItem("text")).getString();
        io.datawire.quark.runtime.JSONObject edited = (obj).getObjectItem("edited");
        if ((edited).isDefined()) {
            (this).edited = new Edited();
            ((this).edited).user = new slack.User(client, ((edited).getObjectItem("user")).getString());
            ((this).edited).timestamp = ((edited).getObjectItem("ts")).getString();
        }
    }
    public void dispatch(slack.SlackHandler handler) {
        (handler).onMessage(this);
    }
    public String _getClass() {
        return "slack.event.Message";
    }
    public Object _getField(String name) {
        if ((name)==("type") || ((name) != null && (name).equals("type"))) {
            return (this).type;
        }
        if ((name)==("user") || ((name) != null && (name).equals("user"))) {
            return (this).user;
        }
        if ((name)==("channel") || ((name) != null && (name).equals("channel"))) {
            return (this).channel;
        }
        if ((name)==("timestamp") || ((name) != null && (name).equals("timestamp"))) {
            return (this).timestamp;
        }
        if ((name)==("subtype") || ((name) != null && (name).equals("subtype"))) {
            return (this).subtype;
        }
        if ((name)==("hidden") || ((name) != null && (name).equals("hidden"))) {
            return (this).hidden;
        }
        if ((name)==("text") || ((name) != null && (name).equals("text"))) {
            return (this).text;
        }
        if ((name)==("edited") || ((name) != null && (name).equals("edited"))) {
            return (this).edited;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("type") || ((name) != null && (name).equals("type"))) {
            (this).type = (String) (value);
        }
        if ((name)==("user") || ((name) != null && (name).equals("user"))) {
            (this).user = (slack.User) (value);
        }
        if ((name)==("channel") || ((name) != null && (name).equals("channel"))) {
            (this).channel = (slack.Channel) (value);
        }
        if ((name)==("timestamp") || ((name) != null && (name).equals("timestamp"))) {
            (this).timestamp = (String) (value);
        }
        if ((name)==("subtype") || ((name) != null && (name).equals("subtype"))) {
            (this).subtype = (String) (value);
        }
        if ((name)==("hidden") || ((name) != null && (name).equals("hidden"))) {
            (this).hidden = (Boolean) (value);
        }
        if ((name)==("text") || ((name) != null && (name).equals("text"))) {
            (this).text = (String) (value);
        }
        if ((name)==("edited") || ((name) != null && (name).equals("edited"))) {
            (this).edited = (Edited) (value);
        }
    }
}
