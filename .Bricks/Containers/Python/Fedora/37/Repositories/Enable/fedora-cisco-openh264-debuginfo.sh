#!/bin/bash

# General process
## Configure source
inside 1 root python "dnf config-manager --set-enable fedora-cisco-openh264-debuginfo"
##
info "В контейнере 'Python' включен 'fedora-cisco-openh264-debuginfo' репозиторий"
