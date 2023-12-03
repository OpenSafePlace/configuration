#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Configure source
inside 1 root $local__container_name_lowercase "dnf config-manager --set-enable fedora-cisco-openh264"
##
info "В контейнере '$local__container_name' включен 'fedora-cisco-openh264' репозиторий"
