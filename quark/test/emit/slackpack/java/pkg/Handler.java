package pkg;



public class Handler implements slack.SlackHandler {
    public Handler() {}
    public void onSlackEvent(slack.event.SlackEvent event) {
        System.out.println((event).type);
        if (!(((event).user)==(null) || (((event).user) != null && ((event).user).equals(null)))) {
            System.out.println(((event).user).user);
        }
        if (!(((event).channel)==(null) || (((event).channel) != null && ((event).channel).equals(null)))) {
            System.out.println(((event).channel).channel);
        }
    }
    public void onHello(slack.event.Hello hello) {
        (this).onSlackEvent(hello);
    }
    public void onSlackError(slack.event.SlackError error) {
        (this).onSlackEvent(error);
    }
    public void onMessage(slack.event.Message message) {
        (this).onSlackEvent(message);
    }
}
