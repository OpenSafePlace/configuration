#!/bin/bash

# General process
## Show ports status
info "В контейнере 'CSharp' информация из брандмауэра"
##
space
##
space_null
##
inside 11 root csharp 'iptables -nvL' >&3
##
space_null
