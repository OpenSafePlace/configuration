#!/bin/bash

# General process
## Setup packages
inside 1 root base "dnf install -y util-linux-user"
##
info "В контейнере 'Base' настроен пакет 'util-linux-user'"
