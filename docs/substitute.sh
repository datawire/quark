#!/bin/bash

# This script uses the directives in variables.txt to process all the HTML files
# within the docs directory, replacing any strings of the form {{{term}}} with
# their actual values. Strings are replaced in-place.
# The file "replace-test.dat" is used as the basis for a test HTML file, and
# it contains samples of all the current substitution codes.
#
# Usage: ./substitution.sh [directory]
# If the directory parameter is ommitted, the script's own directory is used.


if [ ! -z $1 ]
then
  targetdir=$1
else
  targetdir=${0%/*}
fi

cd ${0%/*}
cp replace-test.dat replace-test-copy.html

while read p; do
  tofind=$(echo $p | awk -F';' '{print $1}')
  torepl=$(echo $p | awk -F';' '{print $2}')
  cmd="find $targetdir -type f -name '*.html' -print0 | xargs -0 perl -pi -e 's#$tofind#$torepl#g' "
  echo Replacing $tofind with $torepl
  eval $cmd
done<variables.txt
echo Substitutions done.
