ln -s ~/bin/dotfiles/.zshrc ~/.zshrc
ln -s ~/bin/dotfiles/.vimrc ~/.vimrc
ln -s ~/bin/dotfiles/.vim ~/.vim

git submodule init
git submodule update
vim +PluginInstall +qall
