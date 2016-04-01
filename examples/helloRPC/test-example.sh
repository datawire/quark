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
quark install hello.q --all
mvn -q compile

# Run and verify the examples

###########################
# Same client - same server
###########################
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
  "Responding to \[Hello from JavaScript!\] from JavaScript"

testClientServer \
  "Java - Java" \
  "mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCServer" \
  "mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCClient" \
  5 \
  log/j-j-s.log \
  log/j-j-c.log \
  "Responding to \[Hello from Java!\] from Java"

testClientServer \
  "Ruby - Ruby" \
  "ruby rbserver.rb" \
  "ruby rbclient.rb" \
  2 \
  log/rb-rb-s.log \
  log/rb-rb-c.log \
  "Responding to \[Hello from Ruby!\] from Ruby"

###################################
# Different clients - Python server
###################################
testClientServer \
  "JS - Python" \
  "python -u pyserver.py" \
  "node jsclient.js" \
  2 \
  log/js-py-s.log \
  log/js-py-c.log \
  "Responding to \[Hello from JavaScript!\] from Python"

testClientServer \
  "Java - Python" \
  "python -u pyserver.py" \
  "mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCClient" \
  2 \
  log/j-py-s.log \
  log/j-py-c.log \
  "Responding to \[Hello from Java!\] from Python"

testClientServer \
  "Ruby - Python" \
  "python pyserver.py" \
  "ruby rbclient.rb" \
  2 \
  log/rb-py-s.log \
  log/rb-py-c.log \
  "Responding to \[Hello from Ruby!\] from Python"

###################################
# Different clients - Java server
###################################
testClientServer \
  "Python - Java" \
  "mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCServer" \
  "python -u pyclient.py" \
  5 \
  log/py-j-s.log \
  log/py-j-c.log \
  "Responding to \[Hello from Python!\] from Java"

testClientServer \
  "JS - Java" \
  "mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCServer" \
  "node jsclient.js" \
  5 \
  log/js-j-s.log \
  log/js-j-c.log \
  "Responding to \[Hello from JavaScript!\] from Java"

testClientServer \
  "Ruby - Java" \
  "mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCServer" \
  "ruby rbclient.rb" \
  5 \
  log/rb-j-s.log \
  log/rb-j-c.log \
  "Responding to \[Hello from Ruby!\] from Java"

#######################################
# Different clients - JavaScript server
#######################################
testClientServer \
  "Python - JS" \
  "node jsserver.js" \
  "python pyclient.py" \
  2 \
  log/py-js-s.log \
  log/py-js-c.log \
  "Responding to \[Hello from Python!\] from JavaScript"

testClientServer \
  "Ruby - JS" \
  "node jsserver.js" \
  "ruby rbclient.rb" \
  2 \
  log/rb-js-s.log \
  log/rb-js-c.log \
  "Responding to \[Hello from Ruby!\] from JavaScript"

testClientServer \
  "Java - JS" \
  "node jsserver.js" \
  "mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCClient" \
  2 \
  log/j-js-s.log \
  log/j-js-c.log \
  "Responding to \[Hello from Java!\] from JavaScript"

###################################
# Different clients - Ruby server
###################################
testClientServer \
  "Python - Ruby" \
  "ruby rbserver.rb" \
  "python pyclient.py" \
  2 \
  log/py-rb-s.log \
  log/py-rb-c.log \
  "Responding to \[Hello from Python!\] from Ruby"

testClientServer \
  "JS - Ruby" \
  "ruby rbserver.rb" \
  "node jsclient.js" \
  2 \
  log/js-rb-s.log \
  log/js-rb-c.log \
  "Responding to \[Hello from JavaScript!\] from Ruby"

testClientServer \
  "Java - Ruby" \
  "ruby rbserver.rb" \
  "mvn exec:java -Dexec.mainClass=helloRPC.HelloRPCClient" \
  2 \
  log/j-rb-s.log \
  log/j-rb-c.log \
  "Responding to \[Hello from Java!\] from Ruby"


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
