package slackpack;

public class Functions {

    static slackpack_md.Root root = new slackpack_md.Root();


    public static void main() {
        slack.Client cli = new slack.Client(null, "fake-token", new pkg.Handler());
        (cli).onWSMessage(null, "{\"type\": \"hello\"}");
        (cli).onWSMessage(null, "{\"type\": \"message\", \"user\": \"uid-1\", \"channel\": \"chanel-1\"}");
    }
}
