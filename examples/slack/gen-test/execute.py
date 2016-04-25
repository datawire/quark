# Test slack example lightly

import os

# Verify a slack token exists
slack_token = None
token_file = os.path.join(session.cwd, ".slack.token")
try:
    slack_token = open(token_file).read()
except IOError:
    pass
if not slack_token:
    slack_token = os.environ.get("SLACK_TOKEN")
    if slack_token:
        with open(token_file, "wb") as out:
            out.write(slack_token + "\n")
assert slack_token, "Could not find Slack token"

# Install Quark file
installations = {}
for target in "java python javascript ruby".split():
    installations[target] = helpers.quark_install("--%s slack.q" % target)

# Compile Java client code
java_compile = helpers.mvn("compile")

# Run the clients and make a cursory examination of their outputs

with capture_bg("mvn exec:java -Dexec.mainClass=bot.SlackBot", nocmp=True) as javabot_bg:
    # Don't compare output because Maven inserts timestamps
    javabot_bg.child.expect("WebSocket Client connected!")

with capture_bg("python bot.py", nocmp=True) as pybot_bg:
    # Don't compare output because default str/repr includes memory addresses
    # FIXME add proper str/repr support (in slack.q?) to avoid this problem
    pybot_bg.child.expect("slack.event.SlackEvent object at")

with capture_bg("node bot.js") as jsbot_bg:
    jsbot_bg.child.expect("Hello {")

#with capture_bg("ruby bot.rb") as rbbot_bg:
#    rbbot_bg.child.expect("something ruby something")
