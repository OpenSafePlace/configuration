#!/bin/bash

# General process
## Setup packages
inside 1 root nodejs "dnf install -y 'dnf-command(config-manager)'"
##
info "В контейнере 'NodeJS' настроен пакет 'config-manager'"
