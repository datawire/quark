import franz.Topic;

public class DumpTopic {
    static void sleep(int duration) {
        try {
            Thread.sleep(duration);
        } catch(InterruptedException ex) {
            Thread.currentThread().interrupt();
        }
    }

    public static void main(String [] args) {
        Topic t = new Topic("http://127.0.0.1:8080");
        int counter = 0;
        while (true) {
            String value = t.pop();
            System.out.println("t: " + counter + " " + value);
            counter += 1;
            sleep(100);  // Avoiding scrolling the screen too fast
        }
    }
}
