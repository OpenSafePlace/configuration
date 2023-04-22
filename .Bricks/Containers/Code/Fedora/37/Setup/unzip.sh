#!/bin/bash

# General process
## Setup package
inside 1 root code "dnf install -y unzip"
##
## Configure launch
inside 1 public code "echo 'alias unzip=\"cpulimit --limit=\$global__project_power --lazy --include-children unzip\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Code' настроен пакет 'unzip'"
