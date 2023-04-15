#!/bin/bash

# General process
## Configure launch
inside 1 public python "echo 'alias rm=\"cpulimit --limit=\$global__project_power --lazy --include-children rm\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Python' настроен пакет 'rm'"
