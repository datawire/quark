package slack.event;

/**
 * Base class for all slack events.
 */
public class SlackEvent {
    /**
     * The event type.
     */
    public String type;
    /**
     * The user associated with the event.
     */
    public slack.User user = (slack.User) (null);
    /**
     * The channel associated with the event.
     */
    public slack.Channel channel = (slack.Channel) (null);
    /**
     * The timestamp associated with the event.
     */
    public String timestamp;
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
}