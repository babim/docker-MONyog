#!/bin/bash

# option with entrypoint
if [ -f "/option.sh" ]; then /option.sh; fi

# Prepare
if [ ! -f "/usr/local/MONyog/README" ]; then cp -R /usr-start/MONyog/* /usr/local/MONyog; fi

/usr/local/MONyog/bin/MONyog-bin
