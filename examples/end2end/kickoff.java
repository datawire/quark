import importable.Queue;

public class kickoff {
    public static void main(String [] args) {
        Queue q = new Queue("http://127.0.0.1:8080/simple");
        q.push("sequence:10:fdsa");
        q.push("square:fdsa");
    }
}
