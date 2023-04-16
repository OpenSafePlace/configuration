#!/bin/bash

# General process
## Configure source
inside 1 root csharp "dnf config-manager --set-disable fedora-cisco-openh264-debuginfo"
##
info "В контейнере 'CSharp' отключен 'fedora-cisco-openh264-debuginfo' репозиторий"
