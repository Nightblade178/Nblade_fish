#!/bin/bash

sudo apt update
sudo apt install -y \
    fish \
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
git clone https://github.com/Nightblade178/Nblade_Starship.git ../
bash ../Nblade_Starship/install.sh

# Nvim
curl -L https://github.com/neovim/neovim/releases/download/v0.12.4/nvim-linux-x86_64.tar.gz -o /tmp/nvim-linux-x86_64.tar.gz
tar -zxf /tmp/nvim-linux-x86_64.tar.gz -C /tmp/
sudo mv /tmp/nvim-linux-x86_64/bin/nvim  /usr/bin/
