#!/bin/bash

# General process
## Configure source
inside 1 root nodejs "dnf config-manager --set-disable fedora-cisco-openh264"
##
info "В контейнере 'NodeJS' отключен 'fedora-cisco-openh264' репозиторий"
