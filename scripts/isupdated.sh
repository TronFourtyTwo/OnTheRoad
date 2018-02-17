#!/bin/bash

isinstalled=$(/opt/click.ubuntu.com/ontheroad.emanuelesorce/current/scripts/isinstalled.sh)

if [ ! isinstalled ]; then
	exit 1
fi

if diff /opt/click.ubuntu.com/ontheroad.emanuelesorce/current/scripts/otr ~/.cache/ontheroad.emanuelesorce/bin/otr >/dev/null ; then
	exit 0
else
	exit 1
fi
