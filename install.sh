#!/bin/zsh
ZSHRC_LOCAL="~/.zshrc.local"

# on mac i added fzf node the_silver_searcher nvim tmux
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

[ ! -f $ZSHRC_LOCAL ] && echo "\nsource $ZSHRC_LOCAL" >> ~/.zshrc

ln -svf ~/dotfiles/zsh.config/.zshrc.local ~/.zshrc.local

nvim --headless +PlugInstall +qall
