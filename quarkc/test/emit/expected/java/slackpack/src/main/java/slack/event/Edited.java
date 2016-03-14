package slack.event;

/**
 * Metadata about an edit to a message.
 */
public class Edited implements io.datawire.quark.runtime.QObject {
    public static quark.reflect.Class slack_event_Edited_ref = slackpack_md.Root.slack_event_Edited_md;
    public slack.User user;
    public String timestamp;
    public Edited() {}
    public String _getClass() {
        return "slack.event.Edited";
    }
    public Object _getField(String name) {
        if ((name)==("user") || ((name) != null && (name).equals("user"))) {
            return (this).user;
        }
        if ((name)==("timestamp") || ((name) != null && (name).equals("timestamp"))) {
            return (this).timestamp;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("user") || ((name) != null && (name).equals("user"))) {
            (this).user = (slack.User) (value);
        }
        if ((name)==("timestamp") || ((name) != null && (name).equals("timestamp"))) {
            (this).timestamp = (String) (value);
        }
    }
}
