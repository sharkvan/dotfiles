source ~/.shell_prompt.sh

alias nginx="docker run --rm --name nginx -v `pwd`:/usr/share/nginx/html:ro -d -p 80:80 nginx"
alias elm="docker run -it --rm -v `pwd`:/code -w /code -e \"HOME=/tmp\" -u $UID:$GID -p 8000:8000 codesimple/elm:0.19" $@
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"

