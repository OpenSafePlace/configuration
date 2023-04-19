#!/bin/bash

# General process
## Configure launch
inside 1 public nodejs "echo 'alias cp=\"cpulimit --limit=\$global__project_power --lazy --include-children cp\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'NodeJS' настроен пакет 'cp'"
