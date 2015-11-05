package slack;

/**
 * Event handler for slack events. All unhandled events
 * are delegated to onSlackEvent by default.
 */
public interface SlackHandler {
    public void onSlackEvent(slack.event.SlackEvent event);
    public void onHello(slack.event.Hello hello);
    public void onSlackError(slack.event.SlackError error);
    public void onMessage(slack.event.Message message);
}