#! /bin/bash

apt-get update
apt-get install -y \
                    vim \
                    git \
                    tree \
                    curl \
                    wget \
                    less \
                    ctags \
                    libevent-dev \
                    gcc \
                    ncurses-dev \
                    make \
                    automake \
                    pkg-config
apt-get clean

git clone --depth 1 https://github.com/tmux/tmux.git && \
    pushd tmux && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make install && \
    popd

mkdir -p .vim/bundle/

git clone --depth 1 https://github.com/VundleVim/Vundle.vim.git .vim/bundle/Vundle.vim
