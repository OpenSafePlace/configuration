#!/bin/bash

# General process
## Show ports status
info "В контейнере 'Base' информация из брандмауэра"
##
space
##
space_null
##
inside 11 root base 'iptables -nvL' >&3
##
space_null
