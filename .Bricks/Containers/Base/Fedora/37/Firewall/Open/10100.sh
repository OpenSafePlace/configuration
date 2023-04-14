#!/bin/bash

# General process
## Open port
inside 11 root base 'iptables -I INPUT -p tcp -m tcp --dport 10100 -j ACCEPT'
##
info "В контейнере 'Base' порт '10100' открыт"
