#!/bin/bash

# General process
## Configure launch
inside 1 public python "echo 'alias cat=\"cpulimit --limit=\$global__project_power --lazy --include-children cat\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Python' настроен пакет 'cat'"
