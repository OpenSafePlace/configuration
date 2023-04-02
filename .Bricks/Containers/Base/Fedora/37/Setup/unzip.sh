#!/bin/bash

# General process
## Setup package
inside 1 root base "dnf install -y unzip"
##
## Configure launch
inside 1 public base "echo 'alias unzip=\"cpulimit --limit=\$global__project_power --lazy --include-children unzip\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Base' настроен пакет 'unzip'"
