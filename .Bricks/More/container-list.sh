#!/bin/bash

# General process
## Show containers list
info "Список контейнеров"
##
space
##
space_null
##
podman ps -as --format 'table {{.ID}}\t{{.Names}}\t{{.Size}}\t{{.Status}}' >&3
##
space_null
