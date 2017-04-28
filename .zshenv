# Path
export PATH=/usr/local/bin:~/bin:/usr/bin:/bin:/usr/sbin:/usr/local/sbin:/sbin::$PATH

# Environment Variables
export LANG=en_US.UTF-8
export EDITOR='vim'


if [[ `uname -s ` == 'Darwin' ]]; then
	source $HOME/.dotfiles/osx/zshenv
fi
