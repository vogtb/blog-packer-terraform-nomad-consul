#!/bin/bash

# Grabs the IP address from ifconfig eth0 and returns.

IP_ADDRESS=$(ifconfig eth0 | grep 'inet addr' | cut -d: -f2 | awk '{print $1}')
echo ${IP_ADDRESS}