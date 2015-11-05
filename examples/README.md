# Examples

This directory contains example Quark code.


## Slack

The bot connects to Slack as you and monitors every message you receive (except from Slack integrations or from itself). If it sees a message containing the trigger text, it echoes that message back on the same channel.

Avoid running multiple bots simultaneously. The Python bot censors itself, but the JS and Java bots may trigger one another, causing a loop that will lead to your connections getting dropped.


### Prerequisites

Log into Slack, then grab an API token from https://api.slack.com/web#authentication


### Python

Edit `bot.py` to include your API token.

Compile the quark interface into a package. Install that package.
```
quark --python package slack.q
pip install slack/py/dist/slack-0.1.0-py2-none-any.whl
```

Run the bot
```
python bot.py
```


### JavaScript

Edit `bot.js` to include your API token.

Compile the quark interface into a package. Install that package.
```
quark --javascript package slack.q
npm install slack/js/slack.tgz
```

Run the bot
```
node bot.js
```


### Java

Store the token in a file
```
echo 'your API token here' > slack-bot/.slack.token
```

Compile the quark interface. Install the result using Maven.
```
quark --java compile slack.q && ( cd slack/java && mvn install; )
```

Build and run the bot
```
cd slack-bot && mvn compile && mvn exec:java -Dexec.mainClass="bot.SlackBot"
```
