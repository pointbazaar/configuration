LANG=en_US.UTF-8
LANGUAGE=en_US:en:C

#alias ls='ls --color=auto -h'
alias ls='ls --color=auto'
alias grep='grep --color=always'

PATH=~/espl1000/compiler/build:~/espl1000/lexer/build:~/espl1000/parser/build:$PATH
export RIPGREP_CONFIG_PATH=/home/alex/.ripgreprc

PATH=$PATH:/home/alex/SF100Linux/

TERM=xterm

eval `ssh-agent` &> /dev/null
ssh-add ~/.ssh/id_ed25519 &> /dev/null
ssh-add ~/.ssh/id_ed25519_work &> /dev/null
