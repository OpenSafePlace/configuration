#!/bin/bash

# General process
## Setup package
inside 1 root python "dnf install -y cronie cronie-anacron"
##
info "В контейнере 'Python' настроен пакет 'cronie'"
