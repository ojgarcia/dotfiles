local function plugins(use)
  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end
  }
  use 'preservim/nerdtree'
  use { 'github/copilot.vim',
    config = function()
      vim.cmd([[imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")]])
      vim.g.copilot_no_tab_map = true
    end
  }
end

return plugins
