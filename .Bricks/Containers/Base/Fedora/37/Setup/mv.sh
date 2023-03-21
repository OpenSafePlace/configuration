#!/bin/bash

# General process
## Configure power
inside 1 public base "echo 'alias mv=\"cpulimit --limit=\$global__project_power --lazy --include-children mv\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Base' настроен пакет 'mv'"
