#!/bin/bash

# General process
## Create regular folders
sh -c "mkdir $global__project_main_folder/Logs" &>/dev/null
sh -c "mkdir $global__project_main_folder/Other" &>/dev/null
sh -c "mkdir $global__project_main_folder/Bridge" &>/dev/null
sh -c "mkdir $global__project_main_folder/Backups" &>/dev/null
sh -c "chmod 770 -R $global__project_main_folder/Logs" &>/dev/null
sh -c "chmod 770 -R $global__project_main_folder/Other" &>/dev/null
sh -c "chmod 770 -R $global__project_main_folder/Bridge" &>/dev/null
sh -c "chmod 770 -R $global__project_main_folder/Backups" &>/dev/null
sh -c "chown \$(whoami):docker -R $global__project_main_folder/Logs" &>/dev/null
sh -c "chown \$(whoami):docker -R $global__project_main_folder/Other" &>/dev/null
sh -c "chown \$(whoami):docker -R $global__project_main_folder/Bridge" &>/dev/null
sh -c "chown \$(whoami):docker -R $global__project_main_folder/Backups" &>/dev/null
sh -c "echo '# Место для отчетов связанных с проектом' > $global__project_main_folder/Logs/_README.md" &>/dev/null
sh -c "echo '# Место для папок и файлов частично связанных с проектом' > $global__project_main_folder/Other/_README.md" &>/dev/null
sh -c "echo '# Место является мостом между контейнерами и внешней средой' > $global__project_main_folder/Bridge/_README.md" &>/dev/null
sh -c "echo '# Место для бекапов связанных с проектом' > $global__project_main_folder/Backups/_README.md" &>/dev/null
