#!/bin/bash

install_ansible() {

    apt install ansible -y
    git clone --depth 1 https://github.com/mataborg/labwrecker /home/eagle/.ansible/
    git clone --depth 1 https://github.com/mataborg/ansible-role-proxmox_autoinstall /home/eagle/.ansible/roles/

}

install_ansible