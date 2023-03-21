#!/bin/bash

# General process
## Show images list
info "Список изображений"
##
space_null
##
docker images -a --format "table {{.ID}}\t{{.Repository}}\t{{.Size}}" >&3
##
space_null
