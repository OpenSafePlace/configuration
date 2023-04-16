#!/bin/bash

# General process
## Setup package
inside 1 root csharp "dnf install -y 'dnf-command(system-upgrade)'"
##
info "В контейнере 'CSharp' настроен пакет 'system-upgrade'"
