#!/bin/bash

# General process
## Configure source
inside 1 root base "dnf config-manager --set-disable fedora-cisco-openh264-debuginfo"
##
info "В контейнере 'Base' отключен 'fedora-cisco-openh264-debuginfo' репозиторий"
