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
  bat

rm ~/.config/fish/config.fish
ln -s $(realpath config.fish) ~/.config/fish/.

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install du-dust

# Starship
git clone https://github.com/Nightblade178/Nblade_Starship.git ../Nblade_Starship
cd ../Nblade_Starship
bash install.sh
cd -

# LazyVim
git clone https://github.com/Nightblade178/Nblade_LazyVim.git ../Nblade_LazyVim
cd ../Nblade_LazyVim/
bash install.sh
cd -
