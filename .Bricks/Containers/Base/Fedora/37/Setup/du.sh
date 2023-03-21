#!/bin/bash

# General process
## Configure power
inside 1 public base "echo 'alias du=\"cpulimit --limit=\$global__project_power --lazy --include-children du\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Base' настроен пакет 'du'"
