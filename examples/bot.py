# Connect to Slack

import quark_twisted_runtime
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


def main():
    # you need to go to https://api.slack.com/web and generate an access token
    token = "xoxp-3910618990-4153681316-13601165377-914ddc6f19"

    runtime = quark_twisted_runtime.get_twisted_runtime()
    client = slack.Client(runtime, token, Handler())
    client.connect()
    runtime.launch()


if __name__ == '__main__':
    main()
