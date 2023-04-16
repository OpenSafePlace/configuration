#!/bin/bash

# General process
## Set local time
inside 1 root csharp 'cp /usr/share/zoneinfo/Europe/Minsk /etc/localtime'
##
info "В контейнере 'CSharp' произведена синхронизация с городом 'Минск'"
