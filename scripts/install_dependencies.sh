#!/usr/bin/env bash

sudo apt update
sudo apt install -y curl stow

# add repositories
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
sudo chmod 644 /usr/share/keyrings/wezterm-fury.gpg

sudo apt update

# install zsh
sudo apt install -y zsh

# install ohmyzsh
RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended # CHSH=no

# install wezterm-nightly
sudo apt install -y wezterm-nightly
