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
assert slack_token, "Could not find Slack token. See examples/slack/README.md"

# Install Quark file
installations = {}
for target in "java python javascript ruby".split():
    installations[target] = helpers.quark_install("--%s slack.q" % target)

# Compile Java client code
java_compile = helpers.mvn("compile")

# Run the clients and make a cursory examination of their outputs

# Note: Cannot compare output for any of these because some of it
# depends on the state of the current user's Slack, i.e. what has been
# said recently. We cannot count on any of that being consistent.

print "=== Java ==="
with capture_bg("mvn exec:java -Dexec.mainClass=bot.SlackBot", nocmp=True, trace=True) as javabot_bg:
    javabot_bg.child.expect("WebSocket Client connected!")

print "=== Python ==="
with capture_bg("python bot.py", nocmp=True, trace=True) as pybot_bg:
    pybot_bg.child.expect("slack.event.SlackEvent object at")

print "=== Javascript ==="
with capture_bg("node bot.js", nocmp=True, trace=True) as jsbot_bg:
    jsbot_bg.child.expect("Hello {")

print "=== Ruby [disabled] ==="
#with capture_bg("ruby bot.rb", nocmp=True, trace=True) as rbbot_bg:
#    rbbot_bg.child.expect("something ruby something")
