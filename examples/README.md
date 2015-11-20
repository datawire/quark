# Examples

This directory contains example Quark code.


## Slack

The bot connects to Slack as you and monitors every message you receive (except from Slack integrations or from itself). If it sees a message containing the trigger text, it echoes that message back on the same channel.

Avoid running multiple bots simultaneously. The Python bot censors itself, but the JS and Java bots may trigger one another, causing a loop that will lead to your connections getting dropped.


### Prerequisites

Log into Slack, then grab an API token from https://api.slack.com/web#authentication

Store that token in a file

    echo 'your API token here' > slack-bot/.slack.token


### Python

**Note**: This will require twisted.

Compile the quark interface into a package. Install the quark twisted
integration and the generated package:

    quark --python package slack.q
    pip install datawire-quark-twisted slack/py/dist/slack-0.1.0-py2-none-any.whl

Run the bot

    slack-bot && python bot.py


### JavaScript

**Note**: This will require node 4.2.2 or later.

Compile the quark interface into a package. Install that package.

    quark --javascript package slack.q
    npm install datawire-quark-node slack/js/slack.tgz

Run the bot

    cd slack-bot && node bot.js


### Java

**Note**: This will require maven.

Compile the quark interface. Install the result using Maven.

    quark --java compile slack.q && ( cd slack/java && mvn install; )


Build and run the bot

    cd slack-bot && mvn compile && mvn exec:java -Dexec.mainClass="bot.SlackBot"
