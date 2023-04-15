#!/bin/bash

# General process
## Setup packages
inside 1 root python "dnf install -y util-linux-user"
##
info "В контейнере 'Python' настроен пакет 'util-linux-user'"
