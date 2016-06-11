#Antigen
source $HOME/.dotfiles/submodules/zsh/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES

    andrewferrier/fzf-z
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-completions src
    djui/alias-tips
    git
    z

EOBUNDLES

antigen theme pygmalion
antigen apply

#Environment Variables
source $HOME/.dotfiles/system/env.zsh

# Aliases
source $HOME/.dotfiles/system/aliases.zsh

#fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
