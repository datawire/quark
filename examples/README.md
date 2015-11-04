How to run the slack example.

# Prerequisites

grab the API token from https://api.slack.com/web#authentication

# Javascript

TODO


# Java

store the token in a file

    echo 'your api token here' > slack-bot/.slack.token

compile the quark interface

    quark --java compile slack.q && ( cd slack/java && mvn install; )

build and run the bot

    cd slack-bot && mvn compile && mvn exec:java -Dexec.mainClass="bot.SlackBot"
