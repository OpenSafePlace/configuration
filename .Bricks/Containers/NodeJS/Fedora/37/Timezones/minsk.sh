#!/bin/bash

# General process
## Set local time
inside 1 root nodejs 'cp /usr/share/zoneinfo/Europe/Minsk /etc/localtime'
##
info "В контейнере 'NodeJS' произведена синхронизация с городом 'Минск'"
