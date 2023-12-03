#!/bin/bash

# General process
## Show volumes list
info "Список томов"
##
space
##
space_null
##
podman volume ls >&3
##
space_null
