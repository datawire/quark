package slack.event;

/**
 * Base class for all slack events.
 */
public class SlackEvent implements io.datawire.quark.runtime.QObject {
    public static builtin.reflect.Class slack_event_SlackEvent_ref = slackpack_md.Root.slack_event_SlackEvent_md;
    /**
     * The event type.
     */
    public String type;
    /**
     * The user associated with the event.
     */
    public slack.User user = null;
    /**
     * The channel associated with the event.
     */
    public slack.Channel channel = null;
    /**
     * The timestamp associated with the event.
     */
    public String timestamp;
    public SlackEvent() {}
    public void load(slack.Client client, io.datawire.quark.runtime.JSONObject obj) {
        (this).type = ((obj).getObjectItem("type")).getString();
        String uid = ((obj).getObjectItem("user")).getString();
        if (!((uid)==(null) || ((uid) != null && (uid).equals(null)))) {
            (this).user = new slack.User(client, uid);
        }
        String chid = ((obj).getObjectItem("channel")).getString();
        if (!((chid)==(null) || ((chid) != null && (chid).equals(null)))) {
            (this).channel = new slack.Channel(client, chid);
        }
        (this).timestamp = ((obj).getObjectItem("ts")).getString();
    }
    public void dispatch(slack.SlackHandler handler) {
        (handler).onSlackEvent(this);
    }
    public String _getClass() {
        return "slack.event.SlackEvent";
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
    }
}
