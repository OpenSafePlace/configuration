#!/bin/bash

# General process
## Configure launch
inside 1 public python "echo 'alias du=\"cpulimit --limit=\$global__project_power --lazy --include-children du\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Python' настроен пакет 'du'"
