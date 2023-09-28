#!/bin/bash

# General process
## Vars
local__container_name="neovim"
##
## Preparing important files
inside 1 public neovim "mkdir -p /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}/project/files"
inside 1 root neovim "cp -rf /project/* /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}/project/files"
inside 1 public neovim "mkdir -p /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}/configs/user"
inside 1 root neovim "cp -rf /home/public/.config/* /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}/configs/user"
inside 1 public neovim "mkdir -p /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}/logs"
inside 1 root neovim "cp -rf /var/log/* /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}/logs"
inside 1 root neovim "chown public:public -c -R /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}"
inside 1 root neovim "chmod 770 -R /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}"
##
## The backup report
space_null
inside 1 public neovim "cd /tmp/backups && tree -n -A --noreport ${global__project_name}-${local__container_name}--${local__datetime_iso}" >&3
space_null
##
space
##
## Compress important files
inside 1 public neovim "cd /tmp/backups && tar -I 'gzip -9' -cf - ${global__project_name}-${local__container_name}--${local__datetime_iso}/* | openssl enc -aes-256-cfb -md sha512 -pbkdf2 -iter 900000 -salt -k ${local__archive_key} -out /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}.tar.gz"
inside 1 public neovim "rm -rf /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}"
##
## Send outgoing files
docker cp ${global__project_name}-${local__container_name}:/tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}.tar.gz $global__project_main_folder/Backups
##
## Remove unnecessary files
inside 1 public neovim "rm -f /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}.tar.gz"
##
## Info
info "Путь => '${global__project_main_folder}/Backups/${global__project_name}-${local__container_name}--${local__datetime_iso}.tar.gz'"
info "Разархивирование => 'openssl enc -d -aes-256-cfb -md sha512 -pbkdf2 -iter 900000 -in ${global__project_name}-neovim--${local__datetime_iso}.tar.gz | tar xz && chmod 770 ${global__project_name}-neovim--${local__datetime_iso}'"
