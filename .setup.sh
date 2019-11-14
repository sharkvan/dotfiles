#! /bin/bash

apt-get update
apt-get install -y \
                    vim-gtk \
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
                    pkg-config \
                    fonts-powerline
apt-get clean

pushd /opt

curl -L https://github.com/tmux/tmux/releases/download/2.9a/tmux-2.9a.tar.gz | tar xz && \
	cd tmux-2.9a && \	
	./configure --enable-static && \
	make && \
	make install

popd

mkdir -p .vim/bundle/
git clone --depth 1 https://github.com/morhetz/gruvbox.git .vim/bundle/gruvbox
git clone --depth 1 https://github.com/VundleVim/Vundle.vim.git .vim/bundle/Vundle.vim
