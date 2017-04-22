# Path
export PATH=/usr/local/bin:~/bin:/usr/bin:/bin:/usr/sbin:/usr/local/sbin:/sbin::$PATH

# Environment Variables
export LANG=en_US.UTF-8
export EDITOR='vim'

#Vagrant

#OS X
if [[ `uname -s ` == 'Darwin' ]]; then
	#Moar Path
	export PATH=~/Library/Android/sdk/platform-tools:/usr/local/MacGPG2/bin:/usr/texbin:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin:/usr/local/opt/go/libexec/bin:$PATH

    #Homebrew
	export HOMEBREW_CASK_OPTS="--appdir=~/Applications"

    #Go specific stuff, need to generalize this better
	export GOPATH="${HOME}/Documents/workspace/go"
    export GOROOT="/usr/local/opt/go"
    export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

    #Stop OSX from prompting me for a password
    #export SSH_AUTH_SOCK=
    
    #Rust binding
    export LIBRARY_PATH=/usr/local/lib:$LIBRARY_PATH

    export ANDROID_HOME=~/Library/Android/sdk
    export PATH=${PATH}:${ANDROID_HOME}/tools
    export PATH=${PATH}:${ANDROID_HOME}/platform-tools
    
    #Vagrant
    export VAGRANT_VMWARE_CLONE_DIRECTORY=~/Documents/vagrant/vm

fi
