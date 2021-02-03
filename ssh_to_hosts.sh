#!/bin/bash
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