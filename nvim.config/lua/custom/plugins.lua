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
  use 'kdheepak/lazygit.nvim'
  use 'wsdjeg/vim-fetch'
  use 'tpope/vim-dispatch'
  use { 'vim-test/vim-test',
    config = function()
      --nmap <silent> <leader>t :TestNearest<CR>
      vim.keymap.set('n', '<leader>t', ':TestNearest<CR>', { silent = true, desc = 'Run nearest [t]est' })
      --nmap <silent> <leader>T :TestFile<CR>
      vim.keymap.set('n', '<leader>T', ':TestFile<CR>', { silent = true, desc = 'Run [T]est file' })
      --nmap <silent> <leader>a :TestSuite<CR>
      vim.keymap.set('n', '<leader>a', ':TestSuite<CR>', { silent = true, desc = 'Run [a]ll tests' })
      --nmap <silent> <leader>l :TestLast<CR>
      vim.keymap.set('n', '<leader>l', ':TestLast<CR>', { silent = true, desc = 'Run [l]ast test' })
      --nmap <silent> <leader>g :TestVisit<CR
      vim.keymap.set('n', '<leader>v', ':TestVisit<CR>', { silent = true, desc = '[v]isit generated test file' })
      vim.g['test#strategy'] = 'dispatch'
    end
  }
  use({
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
          sources = {
          null_ls.builtins.formatting.trim_whitespace,
          null_ls.builtins.formatting.trim_newlines,
          null_ls.builtins.diagnostics.trail_space,
          },
      })
    end,
    requires = { "nvim-lua/plenary.nvim" },
  })
end

return plugins
