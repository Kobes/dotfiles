alias vim="mvim -v"
alias vi=vim
alias ls="ls -G"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'

# Set working dir in prompt
setopt promptsubst
PROMPT='
${PWD/#$HOME/~}
> '


