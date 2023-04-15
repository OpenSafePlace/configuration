#!/bin/bash

# General process
## Select the firewall related option
input "Варианты взаимодействия:\n"
input "1. Узнать информацию по всем открытым портам\n"
input "2. Установить правила по умолчанию\n"
input "3. Открыть 10100 порт\n"
input "4. Закрыть 10100 порт\n"
input "5. Выйти\n"
input "=> "
##
read -p '' choice
##
case $choice in
"1")
    space
    ##
    . $global__project_main_folder/.Bricks/Containers/Python/$global__project_os/$global__project_os_version/Firewall/status.sh
    ;;
"2")
    space
    ##
    . $global__project_main_folder/.Bricks/Containers/Python/$global__project_os/$global__project_os_version/Firewall/Open/10100.sh
    ;;
"3")
    space
    ##
    . $global__project_main_folder/.Bricks/Containers/Python/$global__project_os/$global__project_os_version/Firewall/Open/10100.sh
    ;;
"4")
    space
    ##
    . $global__project_main_folder/.Bricks/Containers/Python/$global__project_os/$global__project_os_version/Firewall/Close/10100.sh
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
