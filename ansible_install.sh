#!/bin/bash

setup_ansible() {

    dnf install pipx -y
    pipx install --include-deps ansible
    git clone --depth 1 https://github.com/mataborg/labwrecker ~/.ansible/

}

setup_ansible
