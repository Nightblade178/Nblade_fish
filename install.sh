#!/bin/bash

sudo apt update
sudo apt install -y \
  fish \
  curl \
  wget \
  build-essential \
  fzf \
  tealdeer \
  eza \
  duf \
  fd-find \
  bat \
  du-dust

rm ~/.config/fish/config.fish
ln -s $(realpath config.fish) ~/.config/fish/.

# Rust and dust
# In case apt is older or doesnt work
#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#cargo install du-dust

# Starship
git clone https://github.com/Nightblade178/Nblade_Starship.git /tmp/Nblade_Starship
cd /tmp/Nblade_Starship
bash install.sh
cd -
rm -rf /tmp/Nblade_Starship

# Zioxide
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
