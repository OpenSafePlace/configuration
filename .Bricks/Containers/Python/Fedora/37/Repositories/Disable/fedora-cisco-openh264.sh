#!/bin/bash

# General process
## Configure source
inside 1 root python "dnf config-manager --set-disable fedora-cisco-openh264"
##
info "В контейнере 'Python' отключен 'fedora-cisco-openh264' репозиторий"
