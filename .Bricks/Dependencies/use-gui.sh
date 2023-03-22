#!/bin/bash

# General process
## Use GUI (macOS)
[[ $global__project_host_os_type == "macOS" ]] &&
[[ $global__project_gui == true ]] && {
defaults write org.xquartz.X11 no_auth -bool false >&1
defaults write org.xquartz.X11 nolisten_tcp -bool false >&1
defaults write org.xquartz.X11 enable_iglx -bool true >&1
defaults write org.xquartz.X11 app_to_run "" >&1
pkill XQuartz Xquartz >&1
xhost - >&1
}
##
## Use GUI (linux)
[[ $global__project_host_os_type == "linux" ]] &&
[[ $global__project_gui == true ]] && {
xhost - >&1
}
