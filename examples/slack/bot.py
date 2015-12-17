# Connect to Slack

from quark_threaded_runtime import get_runtime
import slack


class Handler(slack.SlackHandler):

    def onHello(self, greeting):
        print "Hello received:", greeting

    def onSlackError(self, error):
        print "Error:", error.code, error.text

    def onSlackEvent(self, event):
        print "Event:", event

    def onMessage(self, message):
        print "Received:", message.text
        if message.text and "quark" in message.text:
            message.channel.send("bot.py is excited about \"%s\"" % message.text.replace("quark", "[bleep]"))

    def onMessageSent(self, message):
        print "Acknowledged:", message.text


def main():
    try:
        token = open(".slack.token").read().strip()
    except IOError:
        # you need to go to https://api.slack.com/web and generate an access token
        exit("Failed to read Slack token. See examples/README.md for more information.")

    runtime = get_runtime()
    client = slack.Client(runtime, token)
    client.post("#demo", "testing...")
    client.subscribe(Handler())
    runtime.join()


if __name__ == '__main__':
    main()
