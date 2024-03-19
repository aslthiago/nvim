return {
  'nvim-treesitter/nvim-treesitter',
  event = { 'BufReadPre', 'BufNewFile' },
  build = ':TSUpdate',
  dependencies = {
    'windwp/nvim-ts-autotag',
  },
  config = function()
    local treesitter = require('nvim-treesitter.configs')

    treesitter.setup({
      -- enable syntax highlighting
      highlight = { enable = true },
      -- enable indentation
      indent = { enable = true },
      -- enable autotagging (with nvim-ts-autotag plugin)
      autotag = { enable = true },
      -- ensure these language parsers are installed
      ensure_installed = {
        'lua', 'c', 'bash',
      },
      ignore_install = {},
      -- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
      -- auto install above language parsers
      auto_install = true,
    })
  end,
}
