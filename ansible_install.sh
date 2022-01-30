#!/bin/bash

install_ansible(){

    apt install ansible -y
    git clone --depth 1 https://github.com/mataborg/labwrecker.git /home/eagle/.ansible/
    git clone --depth 1 https://github.com/mataborg/ansible-role-proxmox_autoinstall.git /home/eagle/.ansible/roles/

}

install_ansible