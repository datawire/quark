#!/bin/bash
echo "Starting verification of Binary example"

# Prep
failed=0  # Any failure will set this to 1
targetdir=${0%/*} # get script's own directory
cd $targetdir
source ../../scripts/example-test-utils.sh

# Prep
cleanLogs

# Build
npm -s uninstall binary # spurious errors happen if we don't force this
quark install binary.q --all
mvn -q compile

# Launch the server that all the clients will hit
echo Launching Java server...
mvn exec:java -Dexec.mainClass=binary.ServerMain > log/j-server.log 2>&1 &
serverpid=$!
sleep 5 # Give the server time to init

testProcessOutput \
  "Java binary client" \
  "mvn exec:java -Dexec.mainClass=binary.ClientMain" \
  5 \
  log/j-binary.log \
  "de ad be ef"

testProcessOutput \
  "JavaScript binary client" \
  "node client.js" \
  3 \
  log/js-binary.log \
  "de ad be ef"

testProcessOutput \
  "Python binary client" \
  "python client.py" \
  3 \
  log/py-binary.log \
  "de ad be ef"

# Quietly kill the background Java service
kill $serverpid
wait $serverpid 2>/dev/null

echo "**********************"
if [ $failed == "1" ]
then
  echo Binary example: FAILED
else
  echo Binary example: PASSED
fi
echo "**********************"

# Exit with status so outer scripts can interpret the
# overall demo result
exit $failed
