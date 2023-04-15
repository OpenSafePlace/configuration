#!/bin/bash

# General process
## Setup package
inside 1 root base "dnf install -y cronie cronie-anacron"
##
info "В контейнере 'Base' настроен пакет 'cronie'"
