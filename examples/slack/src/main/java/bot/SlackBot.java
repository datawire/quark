package bot;

import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.NoSuchFileException;
import java.nio.file.Paths;

import slack.SlackClient;
import slack.SlackHandler;

import slack.event.ChannelArchive;
import slack.event.ChannelCreated;
import slack.event.ChannelDeleted;
import slack.event.ChannelHistoryChanged;
import slack.event.ChannelJoined;
import slack.event.ChannelLeft;
import slack.event.ChannelMarked;
import slack.event.ChannelRename;
import slack.event.ChannelUnarchive;
import slack.event.Hello;
import slack.event.Message;
import slack.event.MessageSent;
import slack.event.SlackError;
import slack.event.SlackEvent;
import slack.event.UserTyping;

public class SlackBot implements SlackHandler {
    public static void main(String[] args) throws Exception {
        SlackClient client = new SlackClient(getToken());
        client.subscribe(new SlackBot());

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
    public void onMessageSent(MessageSent sent) {
        // TODO Auto-generated method stub
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
