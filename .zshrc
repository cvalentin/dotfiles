#Antigen
source $HOME/.dotfiles/submodules/zsh/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES

    cvalentin/fzf-z
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-completions src
    djui/alias-tips
    voronkovich/gitignore.plugin.zsh
    git
    z

EOBUNDLES

antigen theme pygmalion
antigen apply

#Common Aliases
alias ll='ls -lhaF'

#Compute lol
function compute() {
    while true; do head -n 100 /dev/urandom; sleep 0.1; done \
     | hexdump -C | grep "ca fe"
}

#fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [[ `uname -s ` == 'Darwin' ]]; then
	source $HOME/.dotfiles/osx/zshrc
fi
