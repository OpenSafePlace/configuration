#!/bin/bash

# General process
## Configure source
inside 1 root neovim "dnf config-manager --set-disable fedora-cisco-openh264-debuginfo"
##
info "В контейнере 'Neovim' отключен 'fedora-cisco-openh264-debuginfo' репозиторий"
