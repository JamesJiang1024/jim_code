#!/bin/bash
PATH=/sbin:/bin:/usr/sbin:/usr/bin; export PATH

# 1.wipe rules 
iptables -F
iptables -X
iptables -Z

# 2.set policy
iptables -P INPUT DROP
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT

#3-5 rules
iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -i em1 -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A INPUT -i wlan0 -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A INPUT -i br0 -s 192.168.122.0/24 -j ACCEPT

/etc/init.d/iptables save
