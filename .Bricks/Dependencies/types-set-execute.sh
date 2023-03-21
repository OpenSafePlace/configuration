#!/bin/bash

# General process
## Execute types set
inside() {
    type=${1}
    user=${2}
    container=${3}
    command=${4}
    ##
    [[ $type == 1 ]] &&
    (docker-compose -f $project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec -u $user $container bash -c "${command}")
    ##
    [[ $type == 2 ]] &&
    (docker-compose -f $project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec -u $user $container zsh -c "${command}")
    ##
    [[ $type == 3 ]] &&
    (docker-compose -f $project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec -u $user $container bash)
    ##
    [[ $type == 4 ]] &&
    (docker-compose -f $project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec -u $user $container zsh)
    ##
    [[ $type == 5 ]] &&
    (docker-compose -f $project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec --detach -u $user $container bash -c "${command}")
    ##
    [[ $type == 6 ]] &&
    (docker-compose -f $project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec --detach -u $user $container zsh -c "${command}")
    ##
    [[ $type == 7 ]] &&
    (docker-compose -f $project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec --detach --privileged -u $user $container bash -c "${command}")
    ##
    [[ $type == 8 ]] &&
    (docker-compose -f $project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec --detach --privileged -u $user $container zsh -c "${command}")
    ##
    [[ $type == 9 ]] &&
    (docker-compose -f $project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec --privileged -u $user $container bash)
    ##
    [[ $type == 10 ]] &&
    (docker-compose -f $project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec --privileged -u $user $container zsh)
    ##
    [[ $type == 11 ]] &&
    (docker-compose -f $project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec --privileged -u $user $container bash -c "${command}")
    ##
    [[ $type == 12 ]] &&
    (docker-compose -f $project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec --privileged -u $user $container zsh -c "${command}")
}
