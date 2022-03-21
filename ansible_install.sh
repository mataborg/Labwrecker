#!/bin/bash

install_ansible() {

    apt install ansible -y
    git clone --depth 1 https://github.com/mataborg/labwrecker ~/.ansible/
    git clone --depth 1 https://github.com/mataborg/ansible-role-proxmox_autoinstall ~/.ansible/roles/
    ssh-keygen
    chmod 700 /home/eagle/.ssh/id_rsa
    ssh-copy-id -p 49469 coganlowan@192.168.2.1
    ssh-copy-id -p 49469 eagle@192.168.2.25
    ssh-copy-id -p 49469 eagle@192.168.2.108

}

install_ansible
