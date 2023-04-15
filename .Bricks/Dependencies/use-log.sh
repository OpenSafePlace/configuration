#!/bin/bash

# General process
## Vars log
local__project_script_name=${0##*/}
local__project_log_path_file=${global__project_main_folder}/Logs/${local__project_script_name%.*}.log
##
## Output threads
exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>$local__project_log_path_file 2>&1
##
## Unset local vars
unset local__project_script_name
unset local__project_log_path_file
