#!/bin/bash
echo "Starting verification of Fallback example"

# Prep
failed=0  # Any failure will set this to 1
targetdir=${0%/*} # get script's own directory
cd $targetdir
source ../../scripts/example-test-utils.sh

# Prep
cleanLogs
checkStaleService 8000

# Build
npm -s uninstall fallback # spurious errors happen if we don't force this
quark install fallback.q --java
quark install fallback.q --javascript
quark install fallback.q --python
mvn -q compile

# Launch the server that all the clients will hit after they fallback
echo "Launching local web server..."
webserverlog="log/web-server.log"
python -m SimpleHTTPServer 8000 > $webserverlog 2>&1 &
serverpid=$!
sleep 3 # Give the server time to init

# Test JavaScript
runCommand \
  "JS Fallback Client" \
  "node get.js http://127.0.0.1:8001 http://127.0.0.1:8000" \
  log/js-client.log

check \
  "\"GET / HTTP/1.1\" 200 -" \
  $webserverlog \
  "JS Fallback client"


# Test Python
runCommand \
  "Python Fallback Client" \
  "python get.py http://127.0.0.1:8001 http://127.0.0.1:8000" \
  log/py-client.log

# TODO - check this 200 is a new occurrence, not one from the JS test
check \
  "\"GET / HTTP/1.1\" 200 -" \
  $webserverlog \
  "Python Fallback client"


# Test Java - TODO - make this work with both URLs
runCommand \
  "Java Fallback Client" \
  "mvn -X exec:java -Dexec.mainClass=get.Main -Dexec.args=http://127.0.0.1:8000" \
  log/j-client.log

# TODO - check this 200 is a new occurrence, not one from the JS test
check \
  "\"GET / HTTP/1.1\" 200 -" \
  $webserverlog \
  "Java Fallback client"


# Quietly kill the background web server process
kill $serverpid
wait $serverpid 2>/dev/null


echo "************************"
if [ $failed == "1" ]
then
  echo Fallback example: FAILED
else
  echo Fallback example: PASSED
fi
echo "************************"

# Exit with status so outer scripts can interpret the
# overall example result
exit $failed
