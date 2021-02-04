#!/bin/bash

# example usage: 
# ./python_dev.sh -e -t 
# (edit the python testfile and then test it)

DEVP="$HOME/python_dev"
DEVF="$HOME/python_dev/test.rb"

if [ ! -d $DEVP ]; then
  echo "creating directory: $DEVP"
  mkdir $DEVP
fi
if [ ! -f $DEVF ]; then
  echo "creating test file: $DEVF"
  touch $DEVF
fi

while getopts dert OPT; do
  case $OPT in
    d) echo > $DEVF;;
    e) vim $DEVF;;
    r) cat $DEVF;;
    t) python3 $DEVF;;
  esac
done