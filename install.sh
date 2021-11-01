#!/bin/zsh
ALIASRC="~/.aliasrc"

if ! command -v fzf &> /dev/null; then
  sudo apt-get install -y fzf
fi

if ! command -v ag &> /dev/null; then
  sudo apt-get install -y silversearcher-ag
fi

ln -svf ~/dotfiles/vim.config/.* ~/
mkdir -p ~/.vim/autoload/
ln -svf ~/dotfiles/vim.config/plug.vim  ~/.vim/autoload/
ln -svf ~/dotfiles/nvim.config ~/.config/nvim

ln -svf ~/dotfiles/tmux.config/.* ~/

[ ! -f "$ALIASRC" ] && echo "\nsource $ALIASRC" >> ~/.zshrc

ln -svf ~/dotfiles/zsh.config/.aliasrc ~/.aliasrc
