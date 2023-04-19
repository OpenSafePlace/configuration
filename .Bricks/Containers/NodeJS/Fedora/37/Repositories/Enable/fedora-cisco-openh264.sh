#!/bin/bash

# General process
## Configure source
inside 1 root nodejs "dnf config-manager --set-enable fedora-cisco-openh264"
##
info "В контейнере 'NodeJS' включен 'fedora-cisco-openh264' репозиторий"
