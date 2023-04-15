#!/bin/bash

# General process
## There should be no '/' at the end
global__project_main_folder="."
##
## Output threads
. $global__project_main_folder/.Bricks/Dependencies/use-log.sh
##
## Messages types set
. $global__project_main_folder/.Bricks/Dependencies/types-set-message.sh
##
## Check installed packages
. $global__project_main_folder/.Bricks/Dependencies/check-packages.sh
##
## Get project config
. $global__project_main_folder/.Bricks/Dependencies/config-get.sh
##
## Check running project
. $global__project_main_folder/.Bricks/Dependencies/check-project.sh
##
## Execute types set
. $global__project_main_folder/.Bricks/Dependencies/types-set-execute.sh
##
## Show current date & time
info "$(date '+%H:%M:%S (%d/%m/%Y)')"
##
space
##
input "Вы точно хотите изменить основные пароли проекта? (y/n)\n"
input "=> "
##
read -p '' choice
##
space
##
case $choice in
"y")
    continue
    ;;
*)
    info "Процесс остановлен"
    ##
    ## Message exit
    . $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
    ##
    ## Exit with code
    exit 0
    ;;
esac
##
global__project_keys_new=()
##
## Get project keys
. $global__project_main_folder/.Bricks/Dependencies/keys-get.sh
##
space
##
## Check project
[[ $project_key_text == "ОШИБКА" ]] && {
##
## Output warning info
warning "Введен неправильный пароль"
warning "Процесс остановлен"
##
## Message exit
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
## Application of security reinforcement
. $global__project_main_folder/.Bricks/Types/$global__project_type/actions/protect.sh
##
## Apply new keys
global__project_keys=$global__project_keys_new
##
space
##
## Set project keys
. $global__project_main_folder/.Bricks/Dependencies/keys-set.sh
##
space
##
info "Рекомендуется перезапустить проект"
##
## Message exit
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 0
