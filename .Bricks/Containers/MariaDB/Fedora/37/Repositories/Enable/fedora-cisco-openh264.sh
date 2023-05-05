#!/bin/bash

# General process
## Configure source
inside 1 root mariadb "dnf config-manager --set-enable fedora-cisco-openh264"
##
info "В контейнере 'MariaDB' включен 'fedora-cisco-openh264' репозиторий"
