#!/bin/bash
echo "Starting verification of HelloRPC example"

# Prep
failed=0  # Any failure will set this to 1
targetdir=${0%/*} # get script's own directory
cd $targetdir
source ../../scripts/example-test-utils.sh

# Prep
cleanLogs
checkStaleService 8910

# Build
npm -s uninstall hello # spurious errors happen if we don't force this
quark install hello.q --java
quark install hello.q --javascript
quark install hello.q --python
mvn -q compile

# Run and verify the examples
testClientServer \
  "Python - Python" \
  "python -u pyserver.py" \
  "python -u pyclient.py" \
  2 \
  log/py-py-s.log \
  log/py-py-c.log \
  "Responding to \[Hello from Python!\] from Python"

testClientServer \
  "JS - JS" \
  "node jsserver.js" \
  "node jsclient.js" \
  2 \
  log/js-js-s.log \
  log/js-js-c.log \
  "Response says Responding to \[Hello from JavaScript!\] from JavaScript"

testClientServer \
  "Java - Java" \
  "mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCServer" \
  "mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCClient" \
  5 \
  log/j-j-s.log \
  log/j-j-c.log \
  "Response says: Responding to \[Hello from Java!\] from Java"

testClientServer \
  "JS - Python" \
  "python -u pyserver.py" \
  "node jsclient.js" \
  2 \
  log/js-py-s.log \
  log/js-py-c.log \
  "Response says Responding to \[Hello from JavaScript!\] from Python"

testClientServer \
  "Java - Python" \
  "python -u pyserver.py" \
  "mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCClient" \
  2 \
  log/j-py-s.log \
  log/j-py-c.log \
  "Response says: Responding to \[Hello from Java!\] from Python"

testClientServer \
  "Python - Java" \
  "mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCServer" \
  "python -u pyclient.py" \
  5 \
  log/py-j-s.log \
  log/py-j-c.log \
  "Response says u'Responding to \[Hello from Python!\] from Java'"

testClientServer \
  "JS - Java" \
  "mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCServer" \
  "node jsclient.js" \
  5 \
  log/js-j-s.log \
  log/js-j-c.log \
  "Response says Responding to \[Hello from JavaScript!\] from Java"

testClientServer \
  "Java - JS" \
  "node jsserver.js" \
  "mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCClient" \
  2 \
  log/j-js-s.log \
  log/j-js-c.log \
  "Response says: Responding to \[Hello from Java!\] from JavaScript"

testClientServer \
  "Python - JS" \
  "node jsserver.js" \
  "python -u pyclient.py" \
  2 \
  log/py-js-s.log \
  log/py-js-c.log \
  "Response says u\'Responding to \[Hello from Python!\] from JavaScript\'"

echo "************************"
if [ $failed == "1" ]
then
  echo HelloRPC example: FAILED
else
  echo HelloRPC example: PASSED
fi
echo "************************"

# Exit with status so outer scripts can interpret the
# overall example result
exit $failed
