#! /bin/bash

apt-get update && \
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
                    pkg-config && \
    apt-get clean

git clone --depth 1 https://github.com/tmux/tmux.git && \
    cd tmux && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make install


