ln -s ~/bin/dotfiles/.zshrc ~/.zshrc
ln -s ~/bin/dotfiles/.vimrc ~/.vimrc
ln -s ~/bin/dotfiles/.vim ~/.vim
ln -s ~/bin/dotfiles/.tmux.conf ~/.tmux.conf

git submodule init
git submodule update
vim +PluginInstall +qall

git config --global user.name "Matt Dumford"
git config --global user.email mdumford99@gmail.com
