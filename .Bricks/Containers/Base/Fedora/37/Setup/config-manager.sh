#!/bin/bash

# General process
## Setup packages
inside 1 root base "dnf install -y 'dnf-command(config-manager)'"
##
info "В контейнере 'Base' настроен пакет 'config-manager'"
