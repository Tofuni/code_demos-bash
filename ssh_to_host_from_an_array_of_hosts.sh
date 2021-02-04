#!/bin/bash

# example usage:
# ./ssh_to_host_from_an_array_of_hosts.sh
# 
# (0) my-cloud-desktop.compute.amazonaws.com
# (1) tofuni-dev.domain.com
# (2) smtp-host.something.aws.com
# (3) dhcp-server.example.server.com
# (4) bastion-host.localserver.com
#
# Select a host to ssh to: 2
# ssh to smtp-host.something.aws.com

OPT=""
HOSTS=("my-cloud-desktop.compute.amazonaws.com" "tofuni-dev.domain.com" "smtp-host.something.aws.com" "dhcp-server.example.server.com" "bastion-host.localserver.com")
SSH_HOST=""
CTR=0

echo
for HOST in ${HOSTS[@]}; do
  echo \($CTR\) $HOST
  CTR=$(($CTR + 1))
done
echo

echo -n "Select a host to ssh to: "
read OPT
echo "ssh to ${HOSTS[$OPT]}"
echo
ssh ${HOSTS[$OPT]}