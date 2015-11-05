package slack.event;

/**
 * The server has indicated an error has occurred.
 */
public class SlackError extends SlackEvent {
    /**
     * The numeric code associated with the error condition.
     */
    public Integer code;
    /**
     * A text description of the error condition.
     */
    public String text;
    public void load(slack.Client client, io.datawire.quark.runtime.JSONObject obj) {
        super.load(client, obj);
        (this).code = ((int) Math.round(((obj).getObjectItem("code")).getNumber()));
        (this).text = ((obj).getObjectItem("text")).getString();
    }
    public void dispatch(slack.SlackHandler handler) {
        (handler).onSlackError(this);
    }
}