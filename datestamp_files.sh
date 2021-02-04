#!/bin/bash

# example usage:
# ./datestamp_files.sh server-logs 
# (datestamp all the files/directories in the path "server-logs")

P="."
if [ ! -z $1 ]; then
  P="$1"
fi
ITEMS=$(ls "$P")

for ITEM in $ITEMS; do
  if [ ! -z $(echo "$ITEM" | egrep "^[0-9]{8,}_") ]; then
    continue
  fi
  mv "$P/$ITEM" "$P/$(date +'%d%m%Y')_$ITEM"
done