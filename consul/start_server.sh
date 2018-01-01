#!/bin/bash

consul agent -config-dir=/etc/consul.d -node=$HOSTNAME -bind=$(tool-ip) > /tmp/log.consul.log 2>&1 &
