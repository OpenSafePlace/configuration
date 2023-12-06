#!/bin/bash

# General process
## Execute types set
inside() {
    local__type=${1}
    local__user=${2}
    local__container=${3}
    local__command=${4}
    ##
    [[ $local__type == 1 ]] &&
    (podman-compose -f $global__project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec -u $local__user $local__container bash -c "${local__command}")
    ##
    [[ $local__type == 2 ]] &&
    (podman-compose -f $global__project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec -u $local__user $local__container zsh -c "source ~/.zshrc && ${local__command}")
    ##
    [[ $local__type == 3 ]] &&
    (podman-compose -f $global__project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec -u $local__user $local__container bash)
    ##
    [[ $local__type == 4 ]] &&
    (podman-compose -f $global__project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec -u $local__user $local__container zsh)
    ##
    [[ $local__type == 5 ]] &&
    (podman exec --detach --interactive --user $local__user --tty "$global__project_name-$local__container" /bin/bash -c "${local__command}")
    ##
    [[ $local__type == 6 ]] &&
    (podman-compose -f $global__project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec --detach -u $local__user $local__container zsh -c "${local__command}")
    ##
    [[ $local__type == 7 ]] &&
    (podman-compose -f $global__project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec --detach --privileged -u $local__user $local__container bash -c "${local__command}")
    ##
    [[ $local__type == 8 ]] &&
    (podman-compose -f $global__project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec --detach --privileged -u $local__user $local__container zsh -c "${local__command}")
    ##
    [[ $local__type == 9 ]] &&
    (podman-compose -f $global__project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec --privileged -u $local__user -w /home/$local__user $local__container bash)
    ##
    [[ $local__type == 10 ]] &&
    (podman-compose -f $global__project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec --privileged -u $local__user -w /home/$local__user $local__container zsh)
    ##
    [[ $local__type == 11 ]] &&
    (podman-compose -f $global__project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec --privileged -u $local__user $local__container bash -c "${local__command}")
    ##
    [[ $local__type == 12 ]] &&
    (podman-compose -f $global__project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec --privileged -u $local__user $local__container zsh -c "${local__command}")
    ##
    [[ $local__type == 13 ]] &&
    podman-compose -f $global__project_main_folder/.Bricks/Types/$global__project_type/scheme.yml -p $global__project_name exec -u $local__user $local__container bash -c "${local__command}" 1> /dev/null 2>&1
    ##
    [[ $local__type == 14 ]] &&
    (podman exec --interactive --user $local__user --tty "$global__project_name-$local__container" /bin/bash -c "${local__command}")
    ##
    ## Unset local vars
    unset local__type
    unset local__user
    unset local__container
    unset local__command
}
