#!/bin/bash

# General process
## Create project config file (outside)
sh -c "touch $global__project_main_folder/.project+settings"
sh -c "chmod 600 ./.project+settings"
echo "project_name=\"$global__project_name\"" > $global__project_main_folder/.project+settings
echo "project_type=\"$global__project_type\"" >> $global__project_main_folder/.project+settings
echo "project_gui=\"$global__project_gui\"" >> $global__project_main_folder/.project+settings
echo "project_beep=\"$global__project_beep\"" >> $global__project_main_folder/.project+settings
echo "project_power=\"$global__project_power\"" >> $global__project_main_folder/.project+settings
echo "project_os=\"$global__project_os\"" >> $global__project_main_folder/.project+settings
echo "project_os_version=\"$global__project_os_version\"" >> $global__project_main_folder/.project+settings
echo "project_display=\"$global__project_display\"" >> $global__project_main_folder/.project+settings
echo "project_create_time=\"$global__project_create_time\"" >> $global__project_main_folder/.project+settings
echo "project_host_private_ip=\"$global__project_host_private_ip\"" >> $global__project_main_folder/.project+settings
echo "project_host_os_type=\"$global__project_host_os_type\"" >> $global__project_main_folder/.project+settings
echo "project_host_cpu_type=\"$global__project_host_cpu_type\"" >> $global__project_main_folder/.project+settings
echo "project_host_cmt_sock=\"$global__project_host_cmt_sock\"" >> $global__project_main_folder/.project+settings
echo "project_containers_count_all=\"$global__project_containers_count_all\"" >> $global__project_main_folder/.project+settings
