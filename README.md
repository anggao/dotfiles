git clone https://github.com/anggao/dotfiles.git

cd dotfiles/

+ ln -s dotfiles/.zshrc ~/.zshrc
+ ln -s dotfiles/.vimrc ~/.vimrc
+ ln -s dotfiles/.tmux.conf ~/.tmux.conf
+ ln -s dotfiles/.zshenv ~/.zshenv
+ ln -s dotfiles/.alias ~/.alias

```
mkdir -p ~/.zsh/plugins/
cd ~/.zsh/plugins/
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
```

```
npm install -g spaceship-prompt
```


```
brew install exa (osx)

(linux)
curl https://sh.rustup.rs -sSf | sh
cargo install exa
```

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

