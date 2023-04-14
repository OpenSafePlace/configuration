#!/bin/bash

# General process
## Setup package
inside 1 root base "dnf install -y sudo"
##
info "В контейнере 'Base' настроен пакет 'sudo'"
