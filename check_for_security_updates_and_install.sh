#!/bin/bash

# example usage:
# ./check_for_security_updates_and_install.sh

echo
yum updateinfo security
echo
echo -n "apply the security updates? (y/n): "
read VAR
if [ "$VAR" == "y" ]; then
  sudo yum update --security -y
else
  echo "exiting program"
fi