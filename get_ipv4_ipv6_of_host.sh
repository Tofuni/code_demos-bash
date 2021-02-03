#!/bin/bash
echo --- ipv4 details ---
ip address | egrep "inet [0-9]+"
echo
echo --- ipv6 details ---
ip address | grep "inet6"