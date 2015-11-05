package slack;

/**
 * A reference to a user.
 */
public class User {
    public Client client;
    public String user;
    public User(Client client, String user) {
        (this).client = client;
        (this).user = user;
    }
}