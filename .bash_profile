source ~/.shell_prompt.sh

alias nginx='docker run --rm --name nginx -v `pwd`:/usr/share/nginx/html:ro -d -p 80:80 nginx'
alias elm='docker run -it --rm -v `pwd`:/code -v /tmp/.elm:/tmp/.elm -w /code -e \"HOME=/tmp\" -u $UID:$GID codesimple/elm:0.19' $@
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"
alias mvn='docker run --rm -it -v `pwd`:/code -v maven-repo:/root/.m2  -w /code maven:3.6.1-jdk-8-alpine mvn' $@

# some more ls aliases
alias ll='ls -alF'
alias la='ls -al'
alias l='ls -l'
