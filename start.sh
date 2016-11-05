#!/bin/bash

# Prepare
if [ ! -f "/usr/local/MONyog/README" ]; then cp -R /usr-start/MONyog/* /usr/local/MONyog; fi

/etc/init.d/MONyogd start
bash
