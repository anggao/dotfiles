git clone https://github.com/anggao/dotfiles.git

cd dotfiles/

+ ln -s dotfiles/.zshrc ~/.zshrc
+ ln -s dotfiles/.zshenv ~/.zshenv
+ ln -s dotfiles/.zshlogin ~/.zshlogin
+ ln -s dotfiles/.zimrc ~/.zimrc
+ ln -s dotfiles/.vimrc ~/.vimrc
+ ln -s dotfiles/.tmux.conf ~/.tmux.conf
+ ln -s dotfiles/.alias ~/.alias
+ ln -s dotfiles/.p10k.zsh ~/.p10k.zsh
```
mkdir -p ~/.zim
wget -O ~/.zim/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh 
zsh ~/.zim/zimfw.zsh install
```

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
