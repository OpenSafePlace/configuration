#!/bin/bash

# General process
## Configure power
inside 1 public base "echo 'alias cat=\"cpulimit --limit=\$global__project_power --lazy --include-children cat\"' >> /home/public/.zsh_alias"
##
info "В контейнере 'Base' настроен пакет 'cat'"
