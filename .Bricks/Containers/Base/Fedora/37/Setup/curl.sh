#!/bin/bash

# General process
## Setup package
inside 1 root base "dnf install -y curl"
##
## Configure power
inside 1 public base "echo 'alias curl=\"cpulimit --limit=\$global__project_power --lazy --include-children curl\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Base' настроен пакет 'curl'"
