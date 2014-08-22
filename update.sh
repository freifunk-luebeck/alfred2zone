#!/bin/bash
export LC_ALL=en_US.UTF-8
cd /home/nils/alfred2zone/
curl -s http://metameute.de/~freifunk/alfred/nodeinfo.json| /usr/bin/python3 alfred2zone.py > /var/lib/bind/nodes/nodes.ffhl.zone
/usr/sbin/rndc reload
