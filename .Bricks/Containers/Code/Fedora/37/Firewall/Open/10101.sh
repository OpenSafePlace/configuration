#!/bin/bash

# General process
## Open port
inside 11 root code 'iptables -I INPUT -p tcp -m tcp --dport 10101 -j ACCEPT'
##
info "В контейнере 'Code' порт '10101' открыт"
