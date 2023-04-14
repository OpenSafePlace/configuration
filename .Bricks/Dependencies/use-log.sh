#!/bin/bash

# General process
## Vars log
project_script_name=${0##*/}
project_log_path_file=${project_main_folder}/Logs/${project_script_name%.*}.log
##
## Output threads
exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>$project_log_path_file 2>&1
