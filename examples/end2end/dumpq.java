import importable.Queue;

public class dumpq {
    static void sleep(int duration) {
        try {
            Thread.sleep(duration);
        } catch(InterruptedException ex) {
            Thread.currentThread().interrupt();
        }
    }

    public static void main(String [] args) {
        Queue q = new Queue("http://127.0.0.1:8080/simple");
        int counter = 0;
        while (true) {
            String value = q.pop();
            if (value == "") {
                sleep(250);
                continue;
            }
            System.out.println("q: " + counter + " " + value);
            counter += 1;
            sleep(100);  // Avoiding scrolling the screen too fast
        }
    }
}
