#!/bin/zsh
ZSHRC_LOCAL="~/.zshrc.local"

# on mac i added fzf node the_silver_searcher nvim tmux
if ! command -v fzf &> /dev/null; then
  sudo apt-get install -y fzf
fi

if ! command -v ag &> /dev/null; then
  sudo apt-get install -y silversearcher-ag
fi

ln -svf ~/dotfiles/nvim.config ~/.config/nvim
ln -svf ~/dotfiles/tmux.config/.* ~/

[ ! -f $ZSHRC_LOCAL ] && echo "\nsource $ZSHRC_LOCAL" >> ~/.zshrc

ln -svf ~/dotfiles/zsh.config/.zshrc.local ~/.zshrc.local

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' || echo "PackerSync failed"
nvim --headless -c "MasonInstall rust-analyzer ruby-lsp sorbet lua-language-server" -c qall || echo "MasonInstall failed"
