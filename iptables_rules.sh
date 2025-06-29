#!/bin/bash

#Allow SSH
iptables -A INPUT -p tcp --dport 22 -j ACCEPT

#Allow HTTP and HTTPS
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT

#Drop port 25 (SMTP)
iptables -A INPUT -p tcp --dport 25 -j DROP

#Drop all other incoming connections
iptables -P INPUT DROP
