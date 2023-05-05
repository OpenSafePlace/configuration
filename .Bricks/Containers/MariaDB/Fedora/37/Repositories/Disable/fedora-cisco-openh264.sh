#!/bin/bash

# General process
## Configure source
inside 1 root mariadb "dnf config-manager --set-disable fedora-cisco-openh264"
##
info "В контейнере 'MariaDB' отключен 'fedora-cisco-openh264' репозиторий"
