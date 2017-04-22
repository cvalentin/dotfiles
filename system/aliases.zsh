#Common Aliases
alias ll='ls -lhaF'


#OS X
if [[ `uname -s ` == 'Darwin' ]]; then
    # OS X has no `md5sum`, so use `md5` as a fallback
	command -v md5sum > /dev/null || alias md5sum="md5"

	# OS X has no `sha1sum`, so use `shasum` as a fallback
	command -v sha1sum > /dev/null || alias sha1sum="shasum"

	# Use stronger encryption with hdiutil
	alias hdc="hdiutil create -size 5g -encryption AES-256 -type SPARSE -fs HFS+"
	alias hda="hdiutil attach"
	alias hdd="hdiutil detach"
	alias hdr="diskutil rename"

    alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
    
fi

#TaskWarrior
alias in='task add +in'
alias next='task +in'

tickle () {
    deadline=$1
    shift
    in +tickle wait:$deadline $@
}
alias tick=tickle

function compute() {
    while true; do head -n 100 /dev/urandom; sleep 0.1; done \
     | hexdump -C | grep "ca fe"
}

