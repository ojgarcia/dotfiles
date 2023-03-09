function plugins (use) 
  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end
  }
  use 'preservim/nerdtree'
  use 'github/copilot.vim'
end

return plugins
