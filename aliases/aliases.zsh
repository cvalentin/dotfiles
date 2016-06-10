#Common Aliases
alias ll='ls -lhaF'


#OS X
if [[ `uname -s ` == 'Darwin' ]]; then
    source $HOME/.dotfiles/aliases/osx.zsh
fi
