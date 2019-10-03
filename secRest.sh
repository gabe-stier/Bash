#!/bin/bash
# Recommended settings:
#   file perms 555
#   chattr -i
#   location /etc/init.d
# Description:
#    Consently sets the iptables of the linux system,
#       incase someone in the system attempts to flush
#       the rules to open up the system.
while true; do
  iptables-restore < /etc/tpi/4
  ip6tables-restore < /etc/tpi/6
  sleep 15
done
