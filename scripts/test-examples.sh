#!/bin/bash

# Prep
failed=0  # Any failure encountered below will set this to 1
targetdir=${0%/*} # get script's own directory
cd $targetdir/../examples
source ../scripts/example-test-utils.sh

# Run and verify each example

declare -a arr=("helloRPC" "slack" "binary")
for i in "${arr[@]}"
do
  $i/test-example.sh
  if [ "$?" != "0" ]
  then
    failed=1
  fi
done


echo "======================"
if [ $failed == "1" ]
then
  echo Quark Examples: FAILED
else
  echo Quark Examples: PASSED
fi
echo "======================"

exit $failed
