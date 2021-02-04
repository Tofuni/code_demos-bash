#!/bin/bash

# example usage: 
# source ./update_PATH_variable.sh /example/path/one /example/path/two

VAR=""
for path in "$@"
do
  VAR+="$path:"
done
export PATH="$VAR$PATH"
VAR=""