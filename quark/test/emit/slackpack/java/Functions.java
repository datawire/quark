public class Functions {


    public static void main() {
        slack.Client cli = new slack.Client(null, "fake-token", new pkg.Handler());
        (cli).onWSMessage(null, "{\"type\": \"hello\"}");
        (cli).onWSMessage(null, "{\"type\": \"message\", \"user\": \"uid-1\", \"channel\": \"chanel-1\"}");
    }
    public static void main(String[] args) {
        main();
    }
}
