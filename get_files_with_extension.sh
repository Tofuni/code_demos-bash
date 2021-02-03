#!/bin/bash
FP=$2
if [ ! -d $2 ]; then
  FP="."
fi

ls $FP | egrep "\.$1"