#!/bin/bash

# General process
## Check GUI
[[ $global__project_host_os_type == "macOS" ]] &&
[[ $global__project_gui == true ]] && {
defaults write org.xquartz.X11 enable_iglx -bool true >/dev/null
xhost + 0.0.0.0 >/dev/null
}
