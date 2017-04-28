

rm -f $HOME/.zshrc $HOME/.vimrc $HOME/.xinitrc $HOME/.xserverrc $HOME/.Xresources 

ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/.dotfiles/arch/Xresources $HOME/.Xresources
ln -s $HOME/.dotfiles/arch/xinitrc $HOME/.xinitrc
ln -s $HOME/.dotfiles/arch/xserverrc $HOME/.xserverrc

