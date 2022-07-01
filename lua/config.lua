local options = {
  autochdir      = true,
  clipboard      = 'unnamedplus',
  completeopt    = 'menuone,noselect',
  cursorline     = true,
  emoji          = false,
  expandtab      = true,
  fileencoding   = 'utf-8',
  fillchars = {
    diff         = '∙',
    eob          = ' ',
    fold         = '·',
    vert         = '┃',
  },
  -- foldcolumn     = 'auto:3',
  foldlevelstart = 99,
  foldmethod     = 'indent',
  formatoptions  = 'tcqjn',
  hlsearch       = false,
  ignorecase     = true,
  inccommand     = 'split',
  laststatus     = 0,
  lazyredraw     = true,
  linebreak      = true,
  list           = true,
  listchars = {
    nbsp         = '⦸',
    extends      = '»',
    precedes     = '«',
    tab          = '▷┅',
    trail        = '•',
    eol          = '↳'
  },
  mouse          = 'nv',
  nrformats      = 'bin,hex,alpha',
  number         = true,
  pumheight      = 10,
  relativenumber = true,
  scrolloff      = 2,
  shell          = 'sh',
  shiftwidth     = 2,
  shortmess      = 'filnxtToOFAIWacm',
  showbreak      = '↳ ',
  showcmd        = false,
  showmode       = false,
  sidescroll     = 4,
  sidescrolloff  = 4,
  signcolumn     = 'yes',
  smartindent    = true,
  softtabstop    = -1,
  splitbelow     = true,
  splitright     = true,
  swapfile       = false,
  switchbuf      = 'usetab',
  synmaxcol      = 5000,
  tabstop        = 2,
  termguicolors  = true,
  -- textwidth      = 80,
  timeoutlen     = 2000,
  updatetime     = 300,
  viewoptions    = 'folds,cursor',
  virtualedit    = 'block',
  visualbell     = true,
  whichwrap      = 'b,h,l,s,<,>,[,],~',
  wildignore     = '*.o,*.rej,*.so',
  wildmode       = 'longest:full,full',
  winblend       = 10,
  wrap           = false,
  writebackup    = false,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

if vim.env.USER == 'root' then
  vim.opt.shada = ''
  vim.opt.shadafile = 'NONE'
else
  vim.opt.undofile = true
end

-- disable netrw
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1


local commands = {
  -- leader key definition
  [[let mapleader=","]],

  -- don't comment new lines after existing comments automatically
  [[autocmd FileType * setlocal fo-=c fo-=r fo-=o]],

  -- colorscheme with transparent background
  [[colorscheme default]],
  [[highlight Normal     guibg=None]],
  [[highlight SignColumn guibg=None]],
  [[highlight FoldColumn guibg=None]],
  [[highlight VertSplit  gui=None]],

  -- [[execute "set colorcolumn=" . join(range(&textwidth+5,250), ',')]],
  -- [[autocmd BufWritePost $MYVIMRC luafile $MYVIMRC]],
  -- [[autocmd BufWritePre * %s/\s\+$//e]],
  -- [[autocmd InsertEnter * norm zz]],
  -- [[autocmd BufWritePost ~/.Xresources !xrdb ~/.Xresources]],
}

for _, c in pairs(commands) do
  vim.cmd(c)
end


local groups = {
  -- highlights search results while searching
  [[
    augroup incsearch_highlight
      autocmd!
      autocmd CmdlineEnter /,\\? :set hlsearch
      autocmd CmdlineLeave /,\\? :set nohlsearch
    augroup end
  ]],

  -- synchronizes plugins automatically
  [[
    augroup packer_config
      autocmd!
      autocmd BufWritePost packer.lua source <afile> | PackerSync
    augroup end
  ]],
}

for _, g in pairs(groups) do
  vim.api.nvim_exec(g, false)
end
