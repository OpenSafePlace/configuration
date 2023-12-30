#!/bin/bash

# General process
## Select the firewall related option
input "Варианты взаимодействия:\n"
input "1. Узнать информацию по всем открытым портам\n"
input "2. Открыть 10100 порт\n"
input "3. Закрыть 10100 порт\n"
input "4. Выйти\n"
input "=> "
##
read -p '' choice
##
case $choice in
"1")
    space
    ##
    ## Container #1
    local__container_name="Desktop"
    ##
    . $global__project_main_folder/.Bricks/Containers/Desktop/$global__project_os/$global__project_os_version/Firewall/status.sh
    ;;
"2")
    space
    ##
    ## Container #1
    local__container_name="Desktop"
    ##
    . $global__project_main_folder/.Bricks/Containers/Desktop/$global__project_os/$global__project_os_version/Firewall/Incoming/Open/10100.sh
    ;;
"3")
    space
    ##
    ## Container #1
    local__container_name="Desktop"
    ##
    . $global__project_main_folder/.Bricks/Containers/Desktop/$global__project_os/$global__project_os_version/Firewall/Incoming/Close/10100.sh
    ;;
*)
    ##
    ## Message exit
    . $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
    ##
    ## Exit with code
    exit 0
    ;;
esac
