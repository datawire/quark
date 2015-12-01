package slack;



/**
 * Event handler for slack events. All unhandled events
 * are delegated to onSlackEvent by default.
 */
public interface SlackHandler {
     void onSlackEvent(slack.event.SlackEvent event);
     void onHello(slack.event.Hello hello);
     void onSlackError(slack.event.SlackError error);
     void onMessage(slack.event.Message message);
}
