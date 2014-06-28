#!/bin/bash
cd /home/nils/alfred2zone/
curl -s http://metameute.de/~nils/alfred.json| /usr/bin/python3 alfred2zone.py > /var/lib/bind/nodes/nodes.ffhl.zone
/usr/sbin/rndc reload
