#!/bin/bash
DEVP="$HOME/ruby_dev"
DEVF="$HOME/ruby_dev/test.rb"

if [ ! -d $DEVP ]; then
  echo "creating directory: $DEVP"
  mkdir $DEVP
fi
if [ ! -f $DEVF ]; then
  echo "creating test file"
  touch $DEVF
fi

while getopts dert OPT; do
  case $OPT in
    d) echo > $DEVF;;
    e) vim $DEVF;;
    r) cat $DEVF;;
    t) ruby $DEVF;;
  esac
done