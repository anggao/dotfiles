git clone https://github.com/anggao/dotfiles.git

cd dotfiles/

ln -s dotfiles/.zshrc ~/.zshrc
ln -s dotfiles/.vimrc ~/.vimrc
ln -s dotfiles/.tmux.conf ~/.tmux.conf
ln -s dotfiles/.zprofile ~/.zprofile
ln -s dotfiles/.zpreztorc ~/.zpreztorc
ln -s dotfiles/.zshenv ~/.zshenv
ln -s dotfiles/.zlogout ~/.zlogout
ln -s dotfiles/.zlogin ~/.zlogin

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"



