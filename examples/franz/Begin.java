import franz.Topic;

public class Begin {
    public static void main(String [] args) {
        Topic t = new Topic("http://127.0.0.1:8080", "T");
        t.push("sequence:10:fdsa");
        t.push("square:fdsa");
    }
}
