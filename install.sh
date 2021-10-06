#!/bin/zsh

if ! command -v fzf &> /dev/null; then
  sudo apt-get install -y fzf
fi

if ! command -v ag &> /dev/null; then
  sudo apt-get install -y silversearcher-ag
fi

ln -sf ~/dotfiles/vim.config/.* ~/
ln -sf ~/dotfiles/vim.config/plug.vim  ~/.vim/autoload/
ln -sf ~/dotfiles/nvim.config ~/.config/nvim

ln -sf ~/dotfiles/tmux.config/.* ~/

