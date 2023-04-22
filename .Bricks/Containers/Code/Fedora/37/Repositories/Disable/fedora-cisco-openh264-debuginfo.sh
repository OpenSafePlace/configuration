#!/bin/bash

# General process
## Configure source
inside 1 root code "dnf config-manager --set-disable fedora-cisco-openh264-debuginfo"
##
info "В контейнере 'Code' отключен 'fedora-cisco-openh264-debuginfo' репозиторий"
