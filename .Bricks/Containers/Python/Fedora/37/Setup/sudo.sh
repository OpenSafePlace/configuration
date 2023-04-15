#!/bin/bash

# General process
## Setup package
inside 1 root python "dnf install -y sudo"
##
info "В контейнере 'Python' настроен пакет 'sudo'"
