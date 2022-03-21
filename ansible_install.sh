#!/bin/bash

install_ansible() {

    apt install ansible -y
    git clone --depth 1 https://github.com/mataborg/labwrecker ~/.ansible/
    git clone --depth 1 https://github.com/mataborg/ansible-role-proxmox_autoinstall ~/.ansible/roles/
    ssh-keygen
    ssh-copy-id eagle@192.168.2.25 -p 49469
    ssh-copy-id eagle@192.168.2.108 -p 49469

}

install_ansible
