#!/bin/bash

# Prepare
if [ ! -f "/usr/local/MONyog/README" ]; then mv /usr-start/MONyog/* /usr/local/MONyog; fi

/etc/init.d/MONyogd start
bash
