#!/bin/bash

install_ansible() {

    apt install pipx -y
    pipx install --include-deps ansible
    git clone --depth 1 https://github.com/mataborg/labwrecker ~/.ansible/
    git clone --depth 1 https://github.com/mataborg/ansible-role-proxmox_autoinstall ~/.ansible/roles/
    ssh-keygen
    chmod 700 /home/eagle/.ssh/id_rsa
    ssh-copy-id -p 49469 coganlowan@192.168.2.1
    ssh-copy-id -p 22 root@192.168.2.11
    ssh-copy-id -p 22 root@192.168.2.12
    ssh-copy-id -p 22 root@192.168.2.13
    ssh-copy-id -p 22 eagle@192.168.2.14
    ssh-copy-id -p 49469 root@192.168.2.15
    ssh-copy-id -p 22 eagle@192.168.2.16
    ssh-copy-id -p 49469 eagle@192.168.2.18

}

install_ansible
