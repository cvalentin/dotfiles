# OS X has no `md5sum`, so use `md5` as a fallback
command -v md5sum > /dev/null || alias md5sum="md5"

# OS X has no `sha1sum`, so use `shasum` as a fallback
command -v sha1sum > /dev/null || alias sha1sum="shasum"

# Use stronger encryption with hdiutil
alias hdc="hdiutil create -size 1g -encryption AES-256 -type SPARSE -fs HFS+"
alias hda="hdiutil attach"
alias hdd="hdiutil detach"
alias hdr="diskutil rename"
