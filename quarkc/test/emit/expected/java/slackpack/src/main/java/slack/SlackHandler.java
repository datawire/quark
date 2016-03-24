package slack;

/**
 * Event handler for slack events. All unhandled events
 * are delegated to onSlackEvent by default.
 */
public interface SlackHandler {
    public static quark.reflect.Class slack_SlackHandler_ref = slackpack_md.Root.slack_SlackHandler_md;
     void onSlackEvent(slack.event.SlackEvent event);
     void onHello(slack.event.Hello hello);
     void onSlackError(slack.event.SlackError error);
     void onMessage(slack.event.Message message);
}
