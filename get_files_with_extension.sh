#!/bin/bash

# example usage:
# ./get_files_with_extension.sh sh
# (get files ending in ".sh" in the current directory)

# ./get_files_with_extension.sh txt ./test1
# (get files ending in ".txt" in the "./test1" directory)

FP=$2
if [ ! -d $2 ]; then
  FP="."
fi

ls $FP | egrep "\.$1"