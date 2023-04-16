#!/bin/bash

# General process
## Setup packages
inside 1 root csharp "dnf install -y util-linux-user"
##
info "В контейнере 'CSharp' настроен пакет 'util-linux-user'"
