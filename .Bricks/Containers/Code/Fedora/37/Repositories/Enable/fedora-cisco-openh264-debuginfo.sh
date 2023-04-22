#!/bin/bash

# General process
## Configure source
inside 1 root code "dnf config-manager --set-enable fedora-cisco-openh264-debuginfo"
##
info "В контейнере 'Code' включен 'fedora-cisco-openh264-debuginfo' репозиторий"
