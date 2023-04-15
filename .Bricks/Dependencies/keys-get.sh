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
source $global__project_main_folder/.project+keys
##
## Vars global
global__project_keys_count=${project_keys_count}
global__project_keys=()
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
for i in $(seq 1 $global__project_keys_count)
do
##
## Get keys from file
local__project_key_text="project_keys_${i}_text"
local__project_key_text="${!local__project_key_text}"
local__project_key_text=$(echo $local__project_key_text | openssl base64 -d | openssl enc -d -aes-256-cfb -md sha512 -pbkdf2 -iter 900000 -k $choice)
local__project_key_text_count=$(echo $local__project_key_text | wc -c | bc)
##
[[ $local__project_key_text_count != 45 ]] && local__project_key_text="ОШИБКА" ||
[[ $local__project_key_text == *[![:ascii:]]* ]] && local__project_key_text="ОШИБКА"
##
local__project_key_info="project_keys_${i}_info"
global__project_keys+=($local__project_key_text "${!local__project_key_info}")
##
done
##
## Unset local vars
unset local__project_key_text
unset local__project_key_text_count
unset local__project_key_info
