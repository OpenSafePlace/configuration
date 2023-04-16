#!/bin/bash

# General process
## Close port
inside 11 root csharp 'iptables -I INPUT -p tcp -m tcp --dport 10100 -j DROP'
##
info "В контейнере 'CSharp' порт '10100' закрыт"
