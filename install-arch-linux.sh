# DEPRECATED

#!/usr/bin/sh 

# requirements
sudo pacman -S --needed \
    curl \
    git \
    npm \
#    node \
    xclip \
    neovim \
#    coreutils \
    python3 \
    python-pip \
    python2-pip \
#    py35-setuptools \
#    libexo \
#    liberation-fonts-ttf \
#    global \
    ctags \
    powerline \
    poverline-fonts \
    poverline-vim \
    ttf-hack \
#    rubygem-gems \
#    the_silver_searcher \

sudo pip install neovim
sudo pip install neovim-remote

# install config
ln -sf `pwd` ~/.config/nvim

cd ~
