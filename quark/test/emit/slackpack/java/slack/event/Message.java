package slack.event;



/**
 * A message was sent to a channel.
 */
public class Message extends SlackEvent {
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
}
