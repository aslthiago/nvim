return {
  'ntk148v/habamax.nvim',
  dependencies = {
    'rktjmp/lush.nvim'
  },
  priority = 1000,
  config = function()
    local set_cmd = function(table)
      for _, v in pairs(table) do
        vim.api.nvim_command(v)
      end
    end

    set_cmd {
      [[colo habamax.nvim]],
      [[hi FoldColumn      guibg=None]],
      [[hi Normal          guibg=None]],
      [[hi SignColumn      guibg=None]],
      [[hi StatusLine      guibg=None guifg=#767676]],
      [[hi StatusLineNC    guibg=None]],
      [[hi VertSplit       guibg=None guifg=#1c1c1c]],
      [[hi Tabline         guibg=None guifg=#767676]],
      [[hi TablineFill     guibg=None guifg=None]],
      [[hi GitSignsChange  guibg=None guifg=#e59c19]],
    }
  end,
}
