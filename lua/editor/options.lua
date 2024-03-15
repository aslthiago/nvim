local set_opt = function(setter, table)
  for k, v in pairs(table) do
    setter[k] = v
  end
end

-- global options
set_opt(vim.g, {
  mapleader = ','
})

-- buffer/window-local options
set_opt(vim.opt, {
  acd   = false,         -- autochdir
  cb    = 'unnamedplus', -- clipboard
  ch    = 0,             -- cmdheight
  cul   = false,         -- cursorline
  et    = true,          -- expandtab
  fenc  = 'utf-8',       -- fileencoding
  ic    = true,          -- ignorecase
  lbr   = true,          -- linebreak
  list  = false,
  ls    = 3,             -- laststatus
  mouse = 'nv',
  nu    = true,          -- number
  nuw   = 2,             -- numberwidth
  ph    = 15,            -- pumheight
  rnu   = false,         -- relativenumber
  ru    = true,          -- ruler
  sb    = true,          -- splitbelow
  scl   = 'yes',         -- signcolumn
  scs   = true,          -- smartcase
  si    = true,          -- smartindent
  smd   = false,         -- showmode
  spr   = true,          -- splitright
  sw    = 2,             -- shiftwidth
  swf   = false,         -- swapfile
  tgc   = true,          -- termguicolors
  title = true,
  tm    = 1000,          -- timeoutlen
  ts    = 2,             -- tabstop
  udf   = true,          -- undofile
  ut    = 4000,          -- updatetime
  wb    = false,         -- writebackup
  wrap  = false,
})

if vim.env.USER == 'root' then
  -- options for root user
  set_opt(vim.opt, {
    sd  = '',            -- shada
    sdf = 'NONE',        -- shadafile
  })
end


local set_aug = function(table)
  for _, v in pairs(table) do
    vim.api.nvim_exec(v, false)
  end
end

-- autocommands
set_aug {
  [[
    aug reload_options
      au!
      au BufWritePost options.lua source <afile>
    aug end
  ]],
  [[
    aug is_highlighted
      au!
      au CmdlineEnter /,\\? :set hls
      au CmdlineLeave /,\\? :set nohls
    aug end
  ]],
}


local append_opt = function(setter, table)
  for k, v in pairs(table) do
    setter[k]:append(v)
  end
end

-- append to existing options
append_opt(vim.opt, {
  fcs = { eob = ' ' },   -- fillchars
  lcs = {                -- listchars
    eol      = '↳',
    extends  = '»',
    nbsp     = '⦸',
    precedes = '«',
    trail    = '•',
  },
  ww = '<>[]hl'          -- whichwrap
})


local set_cmd = function(table)
  for _, v in pairs(table) do
    vim.api.nvim_command(v)
  end
end

-- custom commands
set_cmd {
  [[au FileType * setlocal fo-=c fo-=r fo-=o]],
  [[colo habamax]],
  [[hi FoldColumn   guibg=None]],
  [[hi Normal       guibg=None]],
  [[hi SignColumn   guibg=None]],
  [[hi StatusLine   guibg=None guifg=#767676]],
  [[hi StatusLineNC guibg=None]],
  [[hi VertSplit    guibg=None guifg=#1c1c1c]],
}
