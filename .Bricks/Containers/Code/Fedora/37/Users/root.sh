#!/bin/bash

# General process
## Create user
inside 1 root code "chsh -s /sbin/nologin root"
inside 1 root code "echo 'echo \"Try not to use the root user\"' > /root/.bashrc"
inside 1 root code "echo 'sleep infinity' >> /root/.bashrc"
inside 1 root code "echo 'exit 1' >> /root/.bashrc"
inside 1 root code "echo 'echo \"Try not to use the root user\"' > /root/.zshrc"
inside 1 root code "echo 'sleep infinity' >> /root/.zshrc"
inside 1 root code "echo 'exit 1' >> /root/.zshrc"
##
info "В контейнере 'Code' настроен пользователь 'root'"
