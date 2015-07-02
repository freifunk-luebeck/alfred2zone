#!/bin/bash
export LC_ALL=en_US.UTF-8
curl https://map.luebeck.freifunk.net/data/nodes.json | /usr/bin/python3 /usr/local/bin/alfred2zone/alfred2zone.py > /var/cache/bind/nodes.ffhl.zone
/usr/sbin/rndc reload
