# Slack

The Slack example illustrates access to the slack web and realtime
APIs from multiple languages using the high level interface defined in
slack.q.

Each bot uses the API to connect to Slack as you and monitors every
message you receive (except from Slack integrations or from
itself). If it sees a message containing the trigger text ("quark"),
it says replies with a greeting on the same channel.

You can run multiple bots simultaneously.

## Prerequisites

Log into Slack, then grab an API token from https://api.slack.com/web#authentication

Store that token in a file in this directory:

    echo 'your API token here' > .slack.token


## Python

Compile and install the quark interface:

    quark install slack.q --python

Run the bot:

    python bot.py

Now make a comment with the word "quark" in any of your Slack channels,
and you'll see the bot respond in the same channel with "Python bot says hi!".


## JavaScript

**Note**: This will require node 4.2.2 or later.

Compile and install the quark interface:

    quark install slack.q --javascript

Run the bot:

    node bot.js

Now make a comment with the word "quark" in any of your Slack channels,
and you'll see the bot respond in the same channel with "JavaScript bot says hi!".

## Java

**Note**: This will require maven.

Compile and install the quark interface:

    quark install slack.q --java

Build and run the bot:

    mvn compile && mvn exec:java -Dexec.mainClass="bot.SlackBot"

Now make a comment with the word "quark" in any of your Slack channels,
and you'll see the bot respond in the same channel with "Java bot says hi!".
