#!/bin/bash

# Prepare
if [ ! -f "/usr/local/MONyog/README" ]; then mv /usr-start/MONyog /usr/local; fi

/etc/init.d/MONyogd start
bash
