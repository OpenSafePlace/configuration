#!/bin/bash

# General process
## Configure source
inside 1 root csharp "dnf config-manager --set-enable updates-testing-modular"
##
info "В контейнере 'CSharp' включен 'updates-testing-modular' репозиторий"
