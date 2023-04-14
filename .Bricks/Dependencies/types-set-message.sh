#!/bin/bash

# General process
## Message type
info() {
    text=$1
    level_debug=$2
    Color_Off='\033[0m'
    BIGreen='\033[0;32m'

    printf "${BIGreen}| ⓘ  ${text}${Color_Off}\n" >&3
}
##
## Message type
warning() {
    text=$1
    Color_Off='\033[0m'
    BIYellow='\e[0;33m'

    printf "${BIYellow}| ⓘ  ${text}${Color_Off}\n" >&3
}
##
## Message type
input() {
    text=$1
    Color_Off='\033[0m'
    BIGreen='\033[0;32m'

    printf "${BIGreen}| ${text}${Color_Off}" >&3
}
##
## Message type
space() {
    level_debug=$1
    Color_Off='\033[0m'
    BIGreen='\033[0;32m'

    printf "${BIGreen}|${Color_Off}\n" >&3
}
##
## Message type
space_null() {
    printf "\n" >&3
}
