#!/bin/bash

# Install Ansible on Arch Linux
if [ -f /etc/arch-release ]; then
    sudo pacman -S ansible
fi

# Install Ansible on Debian/Ubuntu
if [ -f /etc/debian_version ]; then
    sudo apt update
    sudo apt install ansible -y
fi

# Install ansible on macOS
if [ "$(uname)" == "Darwin" ]; then
    brew install ansible
fi

# Run ansible-pull command to execute an ansible script. 
sudo ansible-pull -U https://github.com/PratikMoitra/ansible-files.git playbook.yml