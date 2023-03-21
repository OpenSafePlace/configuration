#!/bin/bash

# General process
## Set local time
inside 1 root base 'cp /usr/share/zoneinfo/Europe/Minsk /etc/localtime'
##
info "В контейнере 'Base' произведена синхронизация с городом 'Минск'"
