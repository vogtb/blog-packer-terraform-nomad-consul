#!/bin/bash

consul agent -node=$HOSTNAME -bind=$(tool-ip) -config-dir=/etc/consul.d > /tmp/log.consul.log 2>&1 &
sleep 10 && consul join 165.227.211.183