#!/usr/bin/env bash

# add repositories
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
sudo chmod 644 /usr/share/keyrings/wezterm-fury.gpg

sudo add-apt-repository ppa:zhangsongcui3371/fastfetch

sudo apt update

# install zsh
sudo apt install -y zsh

# install ohmyzsh
RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install wezterm-nightly
sudo apt install wezterm-nightly

sudo apt install stow

sudo apt install fastfetch
