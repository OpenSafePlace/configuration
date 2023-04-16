#!/bin/bash

# General process
## Open port
inside 11 root csharp 'iptables -I INPUT -p tcp -m tcp --dport 10100 -j ACCEPT'
##
info "В контейнере 'CSharp' порт '10100' открыт"
