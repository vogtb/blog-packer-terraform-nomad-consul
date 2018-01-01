#!/bin/bash

nomad agent -config=/etc/nomad.d/server.hcl > /tmp/log.nomad.log 2>&1 &