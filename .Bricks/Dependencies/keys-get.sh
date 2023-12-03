#!/bin/bash

# General process
## Check project
[[ ! -f $global__project_main_folder/.project+keys ]] && {
##
## Output warning info
warning "Конфигурация не развернута"
warning "Используйте файл 'create.sh'"
warning "Процесс остановлен"
##
## Message exit
. $global__project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
## Include
##
## Vars global
declare -A global__project_keys=()
global__project_keys_titles=()
global__project_keys_values=()
global__project_keys_status=""
##
info "Видимость вводимых символов на время отключена"
##
space
##
## Enter general pass
input "Введите общий пароль от проекта\n"
input "=> "
##
read -s -p '' choice
##
space_null
##
global__project_keys_titles+=($(echo $(head -n 1 .project+keys) | openssl base64 -d | openssl enc -d -aes-256-cfb -md sha512 -pbkdf2 -iter 900000 -k $choice))
global__project_keys_values+=($(echo $(tail -n +2 .project+keys | head -n 1) | openssl base64 -d | openssl enc -d -aes-256-cfb -md sha512 -pbkdf2 -iter 900000 -k $choice))
##
for ((i=0; i<${#global__project_keys_titles[@]}; i++)); do
  global__project_keys[${global__project_keys_titles[$i]}]=${global__project_keys_values[$i]}
  global__project_keys_status=${global__project_keys_values[$i]}
done

[[ $global__project_keys_status == *[![:ascii:]]* ]] && global__project_keys_status="ОШИБКА"
