#!/bin/bash

nomad agent -config=/etc/nomad.d/client.hcl > /tmp/log.nomad.log 2>&1 &