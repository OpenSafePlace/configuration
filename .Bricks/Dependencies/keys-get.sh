#!/bin/bash

# General process
## Check project
[[ ! -f $project_main_folder/.project+keys ]] && {
##
## Output warning info
warning "Конфигурация не развернута"
warning "Используйте файл 'create.sh'"
warning "Процесс остановлен"
##
## Message exit
. $project_main_folder/.Bricks/Dependencies/message-exit.sh
##
## Exit with code
exit 1
}
##
## Include
source $project_main_folder/.project+keys
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
## Get the keys in decrypted form
global__project_keys=()
##
for i in $(seq 1 $project_keys_count)
do
##
## Get keys from file
project_key_text="project_keys_${i}_text"
project_key_text="${!project_key_text}"
project_key_text=$(echo $project_key_text | openssl base64 -d | openssl enc -d -aes-256-cfb -md sha512 -pbkdf2 -iter 900000 -k $choice)
project_key_text_count=$(echo $project_key_text | wc -c | bc)
##
[[ $project_key_text_count != 45 ]] && project_key_text="ОШИБКА" ||
[[ $project_key_text == *[![:ascii:]]* ]] && project_key_text="ОШИБКА"
##
project_key_info="project_keys_${i}_info"
global__project_keys+=($project_key_text "${!project_key_info}")
##
done
