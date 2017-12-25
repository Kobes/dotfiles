alias vim="mvim -v"
alias vi=vim
alias ls="ls -G"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
alias gs="git status"
alias gp="git push"
alias gf="git fetch"
alias gc="git commit"
alias gca="git commit -a"
alias gco="git checkout"
alias gd="git diff"

# Set working dir in prompt
setopt promptsubst
PROMPT='
${PWD/#$HOME/~}
> '


