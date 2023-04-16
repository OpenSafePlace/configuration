#!/bin/bash

# General process
## Setup packages
inside 1 root csharp "dnf install -y 'dnf-command(config-manager)'"
##
info "В контейнере 'CSharp' настроен пакет 'config-manager'"
