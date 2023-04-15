#!/bin/bash

# General process
## Setup packages
inside 1 root python "dnf install -y 'dnf-command(config-manager)'"
##
info "В контейнере 'Python' настроен пакет 'config-manager'"
