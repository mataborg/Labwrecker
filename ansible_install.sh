#!/bin/bash

install_ansible() {

    apt install ansible -y
    git clone --depth 1 https://github.com/mataborg/labwrecker ~/.ansible/
    git clone --depth 1 https://github.com/mataborg/ansible-role-proxmox_autoinstall ~/.ansible/roles/

}

install_ansible