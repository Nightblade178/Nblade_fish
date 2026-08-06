#!/bin/bash

sudo apt update
sudo apt install -y \
    build-essential \
    fzf \
    tealdeer \
    eza \
    duf \
    fd-find \
    bat

cargo install du-dust
