source ~/.shell_prompt.sh

alias nginx='docker run --rm --name nginx -v `pwd`:/usr/share/nginx/html:ro -d -p 80:80 nginx'
alias elm='docker run -it --rm -v `pwd`:/code -v /tmp/.elm:/tmp/.elm -w /code -e \"HOME=/tmp\" -u $UID:$GID codesimple/elm:0.19' $@

if [ `uname` != "Darwin" ]; then 
  alias pbcopy="xclip -selection clipboard"
  alias pbpaste="xclip -selection clipboard -o"
fi

if [ -r /Library/Java/JavaVirtualMachines/adoptopenjdk-12.jdk/Contents/Home ]; then
  export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-12.jdk/Contents/Home
fi

# alias mvn='docker run --rm -it -v `pwd`:/code -v maven-repo:/root/.m2 -v `~/.ssh`:/root/.ssh -w /code maven:latest mvn' $@

# Some help kubectl aliases
alias k='kubectl'
alias kgp='k get pods'
alias kgpp='kgp -n patienttransport'
alias klp='k logs -n patienttransport' $@

# some more ls aliases
alias ll='ls -alF'
alias la='ls -al'
alias l='ls -l'
