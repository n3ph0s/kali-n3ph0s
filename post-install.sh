#!/bin/bash

username=$(id -u -n 1000)

# Install starship prompt
curl -sS https://starship.rs/install.sh | sh

# Download and Install Packages
mkdir /home/$username/installs
wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.3/obsidian_1.5.3_amd64.deb -O /home/$username/installs/obsidian.deb
wget https://update.code.visualstudio.com/latest/linux-deb-x64/stable -O /home/$username/installs/vscode.deb
apt install /home/$username/installs/obsidian.deb -y
apt install /home/$username/installs/vscode.deb -y

# Install VS Code Extensions
code --install-extension ms-python.python 
code --install-extension snyk-security.snyk-vulnerability-scanner 
code --install-extension Catppuccin.catppuccin-vsc 

# Load the dotfiles
# cd /home/$username/dotfiles
# ./install.sh

# Cleanup
cd /home/$username
rm -rf kali-n3ph0s
rm -rf installs 
sudo reboot

