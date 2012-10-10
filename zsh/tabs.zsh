# new tabs go to same directory
precmd () {print -Pn "\e]2; %~/ \a"}
preexec () {print -Pn "\e]2; %~/ \a"}
