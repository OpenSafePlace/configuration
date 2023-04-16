#!/bin/bash

# General process
## Minor upgrade OS
inside 1 root csharp "dnf upgrade -y"
##
info "В контейнере 'CSharp' все пакеты обновлены"
