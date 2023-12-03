#!/bin/bash

# General process
## Show short information
info "Короткая информация"
##
space
##
space_null
##
## Output disk usage
podman system df >&3
##
space_null
##
## Output all containers
podman ps -a >&3
##
space_null
