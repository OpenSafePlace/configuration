#!/bin/bash

# General process
## Open port
inside 11 root nodejs 'iptables -I INPUT -p tcp -m tcp --dport 10100 -j ACCEPT'
##
info "В контейнере 'NodeJS' порт '10100' открыт"
