package slack.event;

/**
 * The server has indicated an error has occurred.
 */
public class SlackError extends SlackEvent implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class slack_event_SlackError_ref = slackpack_md.Root.slack_event_SlackError_md;
    /**
     * The numeric code associated with the error condition.
     */
    public Integer code;
    /**
     * A text description of the error condition.
     */
    public String text;
    public SlackError() {
        super();
    }
    public void load(slack.Client client, io.datawire.quark.runtime.JSONObject obj) {
        super.load(client, obj);
        (this).code = ((int) Math.round(((obj).getObjectItem("code")).getNumber()));
        (this).text = ((obj).getObjectItem("text")).getString();
    }
    public void dispatch(slack.SlackHandler handler) {
        (handler).onSlackError(this);
    }
    public String _getClass() {
        return "slack.event.SlackError";
    }
    public Object _getField(String name) {
        if ((name)==("type") || ((Object)(name) != null && ((Object) (name)).equals("type"))) {
            return (this).type;
        }
        if ((name)==("user") || ((Object)(name) != null && ((Object) (name)).equals("user"))) {
            return (this).user;
        }
        if ((name)==("channel") || ((Object)(name) != null && ((Object) (name)).equals("channel"))) {
            return (this).channel;
        }
        if ((name)==("timestamp") || ((Object)(name) != null && ((Object) (name)).equals("timestamp"))) {
            return (this).timestamp;
        }
        if ((name)==("code") || ((Object)(name) != null && ((Object) (name)).equals("code"))) {
            return (this).code;
        }
        if ((name)==("text") || ((Object)(name) != null && ((Object) (name)).equals("text"))) {
            return (this).text;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("type") || ((Object)(name) != null && ((Object) (name)).equals("type"))) {
            (this).type = (String) (value);
        }
        if ((name)==("user") || ((Object)(name) != null && ((Object) (name)).equals("user"))) {
            (this).user = (slack.User) (value);
        }
        if ((name)==("channel") || ((Object)(name) != null && ((Object) (name)).equals("channel"))) {
            (this).channel = (slack.Channel) (value);
        }
        if ((name)==("timestamp") || ((Object)(name) != null && ((Object) (name)).equals("timestamp"))) {
            (this).timestamp = (String) (value);
        }
        if ((name)==("code") || ((Object)(name) != null && ((Object) (name)).equals("code"))) {
            (this).code = (Integer) (value);
        }
        if ((name)==("text") || ((Object)(name) != null && ((Object) (name)).equals("text"))) {
            (this).text = (String) (value);
        }
    }
}
