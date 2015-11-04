package bot;

import io.datawire.quark.netty.QuarkNettyRuntime;

import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.NoSuchFileException;
import java.nio.file.Paths;

import slack.ChannelArchive;
import slack.ChannelCreated;
import slack.ChannelDeleted;
import slack.ChannelHistoryChanged;
import slack.ChannelJoined;
import slack.ChannelLeft;
import slack.ChannelMarked;
import slack.ChannelRename;
import slack.ChannelUnarchive;
import slack.Client;
import slack.Hello;
import slack.Message;
import slack.SlackError;
import slack.SlackEvent;
import slack.SlackHandler;
import slack.UserTyping;

public class SlackBot implements SlackHandler {
    public static void main(String[] args) throws Exception {
        QuarkNettyRuntime runtime = new QuarkNettyRuntime();
        Client client = new Client(runtime, getToken(), new SlackBot());
        client.connect();
        runtime.launch();

    }
    private static String  getToken() throws Exception {
        try {
            String token = new String(Files.readAllBytes(Paths.get(".slack.token").toAbsolutePath()), StandardCharsets.UTF_8);
            return token.replaceFirst("\r", "").replaceFirst("\n", "");
        } catch (NoSuchFileException fnfe) {
            throw new Exception("You can generate a token at https://api.slack.com/web", fnfe);
        }

    }
    @Override
    public void onSlackEvent(SlackEvent event) {
        // TODO Auto-generated method stub

    }
    private void print(SlackEvent evt, String...objects) {
        StringBuilder b = new StringBuilder();
        if (evt.timestamp != null) {
            b.append(evt.timestamp);
        }
        if (evt.channel != null) {
            b.append(" ").append(evt.channel.channel);
        }
        b.append(":");
        for (String o : objects) {
            b.append(" ").append(o != null ? o : "null");
        }
        System.out.println(b.toString());
    }
    @Override
    public void onHello(Hello hello) {
        print(hello, hello.type);
    }
    @Override
    public void onSlackError(SlackError error) {
        print(error, error.text, error.code.toString());
    }
    @Override
    public void onMessage(Message message) {
        print(message, message.text);
        if (message.text != null && message.text.indexOf("java quark") > -1 ) {
            message.channel.send("java quarkbot: " + message.text);
        }
    }
    @Override
    public void onUserTyping(UserTyping typing) {
        // TODO Auto-generated method stub

    }
    @Override
    public void onChannelMarked(ChannelMarked marked) {
        // TODO Auto-generated method stub

    }
    @Override
    public void onChannelCreated(ChannelCreated created) {
        // TODO Auto-generated method stub

    }
    @Override
    public void onChannelJoined(ChannelJoined joined) {
        // TODO Auto-generated method stub

    }
    @Override
    public void onChannelLeft(ChannelLeft left) {
        // TODO Auto-generated method stub

    }
    @Override
    public void onChannelDeleted(ChannelDeleted deleted) {
        // TODO Auto-generated method stub

    }
    @Override
    public void onChannelRename(ChannelRename renamed) {
        // TODO Auto-generated method stub

    }
    @Override
    public void onChannelArchive(ChannelArchive archived) {
        // TODO Auto-generated method stub

    }
    @Override
    public void onChannelUnarchive(ChannelUnarchive unarchived) {
        // TODO Auto-generated method stub

    }
    @Override
    public void onChannelHistoryChanged(ChannelHistoryChanged historyChanged) {
        // TODO Auto-generated method stub

    }
}
