#!/bin/bash

# Prepare
if [ -z "`ls /usr/local/MONyog/`" ]
then
	mv /usr-start/MONyog /usr/local
fi

/etc/init.d/MONyogd start
bash
