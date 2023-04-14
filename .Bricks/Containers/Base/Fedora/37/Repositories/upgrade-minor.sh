#!/bin/bash

# General process
## Minor upgrade OS
inside 1 root base "dnf upgrade -y"
##
info "В контейнере 'Base' все пакеты обновлены"
