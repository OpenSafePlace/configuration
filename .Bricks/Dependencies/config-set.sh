#!/bin/bash

# General process
## Create project config file (outside)
touch $project_main_folder/.project+settings
echo "project_name=\"$global__project_name\"" > $project_main_folder/.project+settings
echo "project_type=\"$global__project_type\"" >> $project_main_folder/.project+settings
echo "project_gui=\"$global__project_gui\"" >> $project_main_folder/.project+settings
echo "project_beep=\"$global__project_beep\"" >> $project_main_folder/.project+settings
echo "project_power=\"$global__project_power\"" >> $project_main_folder/.project+settings
echo "project_os=\"$global__project_os\"" >> $project_main_folder/.project+settings
echo "project_os_version=\"$global__project_os_version\"" >> $project_main_folder/.project+settings
echo "project_display=\"$global__project_display\"" >> $project_main_folder/.project+settings
echo "project_create_time=\"$global__project_create_time\"" >> $project_main_folder/.project+settings
echo "project_host_private_ip=\"$global__project_host_private_ip\"" >> $project_main_folder/.project+settings
echo "project_host_os_type=\"$global__project_host_os_type\"" >> $project_main_folder/.project+settings
echo "project_host_cpu_type=\"$global__project_host_cpu_type\"" >> $project_main_folder/.project+settings
echo "project_host_docker_sock=\"$global__project_host_docker_sock\"" >> $project_main_folder/.project+settings
echo "project_containers_count_all=\"$global__project_containers_count_all\"" >> $project_main_folder/.project+settings
