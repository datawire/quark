package get;

import java.util.*;

import fallback.Client;
import fallback.Content;

public class Main {

    static double fallbackTimeout = 1.0;
    static double totalTimeout = 3.0;

    public static void main(String[] args) {
        Client cli = new Client();
        ArrayList urls = new ArrayList();
        urls.addAll(Arrays.asList(args));
        Content content = cli.get(urls, fallbackTimeout);
        content.await(totalTimeout);
        if (content.isFinished()) {
            System.out.println(content.body);
        } else if (content.getError() != null) {
            System.out.println("Error: " + content.getError());
        } else {
            System.out.println("timed out");
        }
    }

}
