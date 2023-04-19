#!/bin/bash

# General process
## Setup package
inside 1 root nodejs "dnf install -y unzip"
##
## Configure launch
inside 1 public nodejs "echo 'alias unzip=\"cpulimit --limit=\$global__project_power --lazy --include-children unzip\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'NodeJS' настроен пакет 'unzip'"
