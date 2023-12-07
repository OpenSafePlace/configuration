#!/bin/bash

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Preparing important files
inside 1 private $local__container_name_lowercase "mkdir -p /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}/logs"
inside 1 root $local__container_name_lowercase "find / -exec stat {} \; > /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}/logs/stat.foldersfiles.log 2>&1"
inside 1 private $local__container_name_lowercase "mkdir -p /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}/sqls"
inside 1 root $local__container_name_lowercase "mysqldump --all-databases > /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}/sqls/databases.all.sql"
inside 1 root $local__container_name_lowercase "cp -rf /sqls/* /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}/sqls"
inside 1 private $local__container_name_lowercase "mkdir -p /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}/configs/user"
inside 1 root $local__container_name_lowercase "cp -rf /home/private/.config/* /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}/configs/user"
inside 1 root $local__container_name_lowercase "cp -rf /var/log/* /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}/logs"
inside 1 root $local__container_name_lowercase "mysql -e \"SELECT * FROM mysql.general_log;\" > /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}/logs/mariadb/table.general.log"
inside 1 root $local__container_name_lowercase "chown private:private -c -R /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}"
inside 1 root $local__container_name_lowercase "chmod 770 -R /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}"
##
## The backup report
space_null
inside 1 private $local__container_name_lowercase "cd /tmp/backups && tree -n -A --noreport ${global__project_name}-${local__container_name}--${local__datetime_iso}" >&3
space_null
##
space
##
## Compress important files
inside 1 private $local__container_name_lowercase "cd /tmp/backups && tar -I 'gzip -9' -cf - ${global__project_name}-${local__container_name}--${local__datetime_iso}/* | openssl enc -aes-256-cfb -md sha512 -pbkdf2 -iter 900000 -salt -k ${local__archive_key} -out /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}.tar.gz"
inside 1 private $local__container_name_lowercase "rm -rf /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}"
##
## Send outgoing files
podman cp ${global__project_name}-${local__container_name}:/tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}.tar.gz $global__project_main_folder/Backups
##
## Remove unnecessary files
inside 1 private $local__container_name_lowercase "rm -f /tmp/backups/${global__project_name}-${local__container_name}--${local__datetime_iso}.tar.gz"
##
## Info
info "Путь => '${global__project_main_folder}/Backups/${global__project_name}-${local__container_name}--${local__datetime_iso}.tar.gz'"
info "Разархивирование => 'openssl enc -d -aes-256-cfb -md sha512 -pbkdf2 -iter 900000 -in ${global__project_name}-${local__container_name_lowercase}--${local__datetime_iso}.tar.gz | tar xz && chmod 770 ${global__project_name}-${local__container_name_lowercase}--${local__datetime_iso}'"
