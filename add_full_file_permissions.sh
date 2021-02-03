#!/bin/bash
FILE=${@:$#}

if [ ! -f $FILE ]; then
  echo "error: file \"$FILE\" does not exist"
  exit 1
fi

while getopts ugo FLAG; do
  case $FLAG in
    u) chmod u+rwx $FILE; echo "user permissions added to $FILE";;
    g) chmod g+rwx $FILE; echo "group permissions added to $FILE";;
    o) chmod o+rwx $FILE; echo "other permissions added to $FILE";;
  esac
done
