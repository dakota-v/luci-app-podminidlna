#!/bin/sh

[ -f /var/run/minidlna/minidlna.pid ] && rm -f /var/run/minidlna/minidlna.pid
kill -9 $(pidof minidlnad) 2&> /dev/null
minidlnad -S -f /etc/minidlna/minidlna.conf
