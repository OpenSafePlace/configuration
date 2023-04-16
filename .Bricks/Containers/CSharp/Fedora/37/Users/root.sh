#!/bin/bash

# General process
## Create user
inside 1 root csharp "chsh -s /sbin/nologin root"
inside 1 root csharp "echo 'echo \"Try not to use the root user\"' > /root/.bashrc"
inside 1 root csharp "echo 'sleep infinity' >> /root/.bashrc"
inside 1 root csharp "echo 'exit 1' >> /root/.bashrc"
inside 1 root csharp "echo 'echo \"Try not to use the root user\"' > /root/.zshrc"
inside 1 root csharp "echo 'sleep infinity' >> /root/.zshrc"
inside 1 root csharp "echo 'exit 1' >> /root/.zshrc"
##
info "В контейнере 'CSharp' настроен пользователь 'root'"
