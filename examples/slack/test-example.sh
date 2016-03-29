#!/bin/bash
echo "Starting verification of Slack example"

# Prep
failed=0  # Any failure will set this to 1
targetdir=${0%/*} # get script's own directory
cd $targetdir
source ../../scripts/example-test-utils.sh

# Prep
cleanLogs

# Check for the Slack token file. Without it, no point in proceeding.
if [ ! -f .slack.token ]; then
    echo "Slack token not found, cannot run Slack demo"
    failed=1
fi

# Build
npm -s uninstall slack # spurious errors happen if we don't force this
quark install slack.q --all
mvn -q compile

testProcessOutput \
  "Python Slack client" \
  "python -u bot.py" \
  3 \
  log/py-slack.log \
  "slack.event.SlackEvent object at"

testProcessOutput \
  "JavaScript Slack client" \
  "node bot.js" \
  3 \
  log/js-slack.log \
  "Hello {"

testProcessOutput \
  "Java Slack client" \
  "mvn exec:java -Dexec.mainClass=bot.SlackBot" \
  8 \
  log/j-slack.log \
  "WebSocket Client connected!"


echo "*********************"
if [ $failed == "1" ]
then
  echo Slack example: FAILED
else
  echo Slack example: PASSED
fi
echo "*********************"

# Exit with status so outer scripts can interpret the
# overall demo result
exit $failed
