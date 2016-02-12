# Slack

The Slack example illustrates access to the slack web and realtime
APIs from multiple languages using the high level interface defined in
slack.q.

Each bot uses the API to connect to Slack as you and monitors every
message you receive (except from Slack integrations or from
itself). If it sees a message containing the trigger text, it echoes
that message back on the same channel.

Avoid running multiple bots simultaneously. The Python bot censors
itself, but the JS and Java bots may trigger one another, causing a
loop that will lead to your connections getting dropped.

## Prerequisites

Log into Slack, then grab an API token from https://api.slack.com/web#authentication

Store that token in a file in this directory

    echo 'your API token here' > .slack.token


## Python

Compile and install the quark interface:

    quark install slack.q --python

Run the bot:

    python bot.py


## JavaScript

**Note**: This will require node 4.2.2 or later.

Compile and install the quark interface:

    quark install slack.q --javascript

Run the bot:

    node bot.js


## Java

**Note**: This will require maven.

Compile and install the quark interface:

    quark install slack.q --java

Build and run the bot:

    mvn compile && mvn exec:java -Dexec.mainClass="bot.SlackBot"
