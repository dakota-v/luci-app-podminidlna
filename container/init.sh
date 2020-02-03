#!/bin/sh

[ -f /var/run/minidlna/minidlna.pid ] && rm -f /var/run/minidlna/minidlna.pid
kill -9 $(pidof minidlnad) 2&> /dev/null
[ -f /etc/minidlna/minidlna.conf ] && minidlnad -S -f /etc/minidlna/minidlna.conf || tail -f /dev/null
