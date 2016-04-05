#!/bin/bash

# check(
#   $1: pattern to find, $2: file to search, $3: test description)
check() {
  if grep -q "$1" $2
  then
    echo $3"...PASS"
  else
    echo $3 "*** FAIL! ***"
    echo "Did not find pattern $1 in file $2"
    failed=1
  fi
}

# testClientServer(
#   $1: description, $2: server command, $3: client command,
#   $4: sleep period, $5: server log file, $6: client log file,
#   $7: expected pattern in client log)
testClientServer() {
  $2 > $5 2>&1 & # Launch server
  sleep $4  # let server become ready
  $3 > $6 2>&1  # launch client
  kill $!  # signal server to die
  wait $! 2>/dev/null # block waiting for server to die
  sleep 1 # wait a little more before proceeding (spurious failures happen without this)
  check "$7" $6 "$1" # check the log files for 'success' pattern
}

# testProcessOutput(
#   $1: description, $2: process to launch, $3: sleep period,
#   $4: log file, $5: expected pattern in log file
testProcessOutput() {
  $2 > $4 2>&1 & # Launch process and redirect output
  sleep $3  # let process become ready
  kill $!  # signal process to die
  wait $! 2>/dev/null # block waiting for process to die
  sleep 2 # wait a little more before proceeding (spurious failures happen without this)
  check "$5" $4 "$1" # check the log file for 'success' pattern
}

# runCommand(
#   #1: description, #2: command to run, #3: log file
runCommand() {
   $2 > $3 2>&1 &
   wait $! 2>/dev/null
   if [ "$?" != "0" ]
   then
     echo "Command \"$2\" did not exit correctly"
     failed=1
   fi
   sleep 1
}

# cleanLogs() - cleans and recreates "log" directory relative to cwd
cleanLogs() {
  rm -rf ./log
  mkdir ./log
}

# checkStaleService(
#   $1: port to check)
checkStaleService() {
  echo Checking for a stale server...
  nc -vz 127.0.0.1 $1 > /dev/null 2>&1
  if [ "$?" == "1" ]
  then
    echo No stale server found, port $1 is free.
  else
    echo "*** FAIL! *** Port $1 in use. Stale server running?"
    failed=1
    exit $failed # Abandon run - nothing will work if server port is in use
  fi
}
