LANG=en_US.UTF-8
LANGUAGE=en_US:en:C

#alias ls='ls --color=auto -h'
alias ls='ls --color=auto'
#alias grep='grep --color=always'

PATH=~/espl1000/build/compiler/main:$PATH
PATH=~/espl1000/build/lexer:$PATH
PATH=~/espl1000/build/parser:$PATH

export RIPGREP_CONFIG_PATH=/home/alex/.ripgreprc

export PATH="/home/alex/SF100Linux:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/home/alex/.local/bin:$PATH"
export PATH="/home/alex/.local/bin/gerrit-scripts:$PATH"
export PATH="/home/alex/worknotes/yocto-and-bitbake/yoctool/:$PATH"

TERM=xterm

eval `ssh-agent` &> /dev/null
ssh-add ~/.ssh/id_ed25519 &> /dev/null
ssh-add ~/.ssh/id_ed25519_work &> /dev/null

alias clip="xsel -ib"
