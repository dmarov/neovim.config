# DEPRECATED

#!/usr/bin/sh 

# requirements
sudo pacman -S --needed \
    xclip \
    neovim \
    python3 \
    python-pip \
    python2-pip \
    ctags \
    ttf-hack

sudo pip install neovim
sudo pip install neovim-remote

ln -sf `pwd` ~/.config/nvim

cd ~
