package slack;

/**
 * A reference to a user.
 */
public class User implements io.datawire.quark.runtime.QObject {
    public Client client;
    public String user;
    public User(Client client, String user) {
        (this).client = client;
        (this).user = user;
    }
    public String _getClass() {
        return "slack.User";
    }
    public Object _getField(String name) {
        if ((name)==("client") || ((name) != null && (name).equals("client"))) {
            return (this).client;
        }
        if ((name)==("user") || ((name) != null && (name).equals("user"))) {
            return (this).user;
        }
        return null;
    }
    public void _setField(String name, Object value) {
        if ((name)==("client") || ((name) != null && (name).equals("client"))) {
            (this).client = (Client) (value);
        }
        if ((name)==("user") || ((name) != null && (name).equals("user"))) {
            (this).user = (String) (value);
        }
    }
}
