#!/bin/bash
VAR=""
for path in "$@"
do
  VAR+="$path:"
done
export PATH="$VAR$PATH"
VAR=""