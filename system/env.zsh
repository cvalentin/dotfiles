# Path
export PATH=/usr/local/bin:~/bin:/usr/bin:/bin:/usr/sbin:/usr/local/sbin:/sbin:/usr/local/opt/go/libexec/bin:$PATH

# Environment Variables
export LANG=en_US.UTF-8
export EDITOR='vim'

#OS X
if [[ `uname -s ` == 'Darwin' ]]; then
	#Moar Path
	export PATH=/usr/local/MacGPG2/bin:/usr/texbin:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin:$PATH

	export HOMEBREW_CASK_OPTS="--appdir=~/Applications"
	export GOPATH="${HOME}/Documents/workspace/go"
fi