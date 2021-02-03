#!/bin/bash
FILENAME="$(date +'%d%m%y')_download"
if [ ! -z "$2" ]; then
  FILENAME="$2"
fi
if [ ! -f "$2" ]; then
  touch "$FILENAME"
  curl $1 > "$FILENAME"
else
  echo -n "file $2 currently exists; overwrite file? (y/n) "
  read VAR
  if [ $VAR == "y" ]; then
    curl $1 > $2
  fi
fi
