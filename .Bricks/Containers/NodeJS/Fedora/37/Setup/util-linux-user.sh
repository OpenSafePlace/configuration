#!/bin/bash

# General process
## Setup packages
inside 1 root nodejs "dnf install -y util-linux-user"
##
info "В контейнере 'NodeJS' настроен пакет 'util-linux-user'"
