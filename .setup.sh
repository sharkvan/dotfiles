#! /bin/bash

if [ ! -x "$(command -v apt-get)" ]; then
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
fi

#set -o nounset    # error when referencing undefined variable
#set -o errexit    # exit when command fails

# Install latest nodejs
#if [ ! -x "$(command -v node)" ]; then
#  curl --fail -LSs https://install-node.now.sh/latest | sh
#  export PATH="/usr/local/bin/:$PATH"
#fi

# Use package feature to install coc.nvim
# for vim8
#mkdir -p ~/.vim/pack/coc/start
#cd ~/.vim/pack/coc/start
#curl --fail -L https://github.com/neoclide/coc.nvim/archive/release.tar.gz|tar xzfv -

# Install extensions
#mkdir -p ~/.config/coc/extensions
#cd ~/.config/coc/extensions
#if [ ! -f package.json ]; then
#  echo '{"dependencies":{},
#  "languageserver": {
#    "elmLS": {
#      "command": "elm-language-server",
#      "filetypes": ["elm"],
#      "rootPatterns": ["elm.json"],
#      "initializationOptions": {
#        "elmAnalyseTrigger": "change"
#      }
#    }
#  }}'> package.json
#fi

#npm install -g @elm-tooling/elm-language-server
#npm install -g elm elm-test elm-format

# Change extension names to the extensions you need
#npm install coc-snippets --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
#npm install coc-css --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
#npm install coc-yaml --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
#npm install coc-java --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
#npm install coc-elixir --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
#npm install coc-tsserver --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
#npm install coc-json --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
#npm install coc-omnisharp --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
#npm install coc-python --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod


if [ ! -x "$(command -v tmux)" ]; then
  pushd /opt
  
  curl -L https://github.com/tmux/tmux/releases/download/2.9a/tmux-2.9a.tar.gz | tar xz && \
    cd tmux-2.9a && \
    ./configure --enable-static && \
    make && \
    make install
  
  popd
fi

mkdir -p .vim/bundle/
git clone --depth 1 https://github.com/morhetz/gruvbox.git .vim/bundle/gruvbox
git clone --depth 1 https://github.com/VundleVim/Vundle.vim.git .vim/bundle/Vundle.vim

