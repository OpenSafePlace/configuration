#!/bin/bash

# General process
## Configure source
inside 1 root base "dnf config-manager --set-enable fedora-cisco-openh264-debuginfo"
##
info "В контейнере 'Base' включен 'fedora-cisco-openh264-debuginfo' репозиторий"
