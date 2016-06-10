source $HOME/.dotfiles/submodules/zsh/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
    andrewferrier/fzf-z
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-completions src
    djui/alias-tips
    git
    z
EOBUNDLES

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme pygmalion

# Tell antigen that you're done.
antigen apply

# Path
export PATH="/Users/carlo/Library/Android/sdk/platform-tools:/usr/local/bin:~/bin:/usr/bin:/bin:/usr/sbin:/usr/local/sbin:/sbin:/usr/local/MacGPG2/bin:/usr/texbin:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin:/usr/local/opt/go/libexec/bin"

# Environment Variables
export LANG=en_US.UTF-8
export EDITOR='vim'
export GOPATH="/Users/carlo/Documents/workspace/go"
export HOMEBREW_CASK_OPTS="--appdir=~/Applications"

# Aliases
source $HOME/.dotfiles/aliases/aliases.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
