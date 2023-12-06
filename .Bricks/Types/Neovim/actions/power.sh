#!/bin/bash

# General process
## Select the power mode
input "Список режимов работы проекта:\n"
input "1. Предел мощности, предел потребления ресурсов\n"
input "2. Высокая производительность, низкая экономия ресурсов\n"
input "3. Средняя производительность, средняя экономия ресурсов\n"
input "4. Низкая производительность, высокая экономия ресурсов\n"
input "5. Предельно низкая производительность, максимальная экономия ресурсов\n"
input "6. Выйти\n"
input "=> "
##
read -p '' choice
##
case $choice in
"1")
    space
    ##
    ## Set power mode
    global__project_power="highest"
    ##
    ## Container #1
    local__container_name="Neovim"
    ##
    . $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Power/update.sh
    ##
    info "Включен режим максимальной производительности"
    ;;
"2")
    space
    ##
    ## Set power mode
    global__project_power="high"
    ##
    ## Container #1
    local__container_name="Neovim"
    ##
    . $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Power/update.sh
    ##
    info "Включен режим высокой производительности"
    ;;
"3")
    space
    ##
    ## Set power mode
    global__project_power="medium"
    ##
    ## Container #1
    local__container_name="Neovim"
    ##
    . $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Power/update.sh
    ##
    info "Включен режим средней производительности"
    ;;
"4")
    space
    ##
    ## Set power mode
    global__project_power="low"
    ##
    ## Container #1
    local__container_name="Neovim"
    ##
    . $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Power/update.sh
    ##
    info "Включен режим низкой производительности"
    ;;
"5")
    space
    ##
    ## Set power mode
    global__project_power="lowest"
    ##
    ## Container #1
    local__container_name="Neovim"
    ##
    . $global__project_main_folder/.Bricks/Containers/Neovim/$global__project_os/$global__project_os_version/Power/update.sh
    ##
    info "Включен режим минимальной производительности"
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
