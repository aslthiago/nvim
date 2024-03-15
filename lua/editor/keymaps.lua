local set_keymap = function(mode, table)
  for k, v in pairs(table) do
    vim.keymap.set(mode, k, v)
  end
end


-- insert mode
set_keymap('i', {
  ['jj']     = [[<Esc>]],
  ['jk']     = [[<Esc>]],
  ['p<Tab>'] = [[(]],
  ['d<Tab>'] = [[$]],
  ['e<Tab>'] = [[&]],
})

-- normal mode
set_keymap('n', {
  ['<Leader>q']  = [[<Cmd>q<CR>]],
  ['<Leader>sp'] = [[<Cmd>set spell!<CR>]],
  ['<Leader>se'] = [[<Cmd>set spelllang=en_us<CR>]],
  ['<Leader>sb'] = [[<Cmd>set spelllang=pt_BR.utf-8<CR>]],
  -- ['<Leader>f']  = [[<Cmd>normal! gg=G<CR>]],
  ['<Leader>w']  = [[<Cmd>w<CR>]],
  -- ['<Leader>r']  = [[<Cmd>edit<CR>]],
  ['<Leader>r']  = [[<Cmd>luafile %<CR>]],
  ['<Leader>ev'] = [[<Cmd>edit $MYVIMRC<CR>]],
  ['<Leader>sv'] = [[<Cmd>source $MYVIMRC<CR>]],
  ['<Leader>cd'] = [[<Cmd>cd %:p:h<CR>]],
  ['<Leader>d']  = [[:bd<CR>]],
  ['<Leader>b']  = [[:buffer <Tab>]],
  ['<Leader>l']  = [[:b#<CR>]],
  ['<Leader>tn'] = [[:tabnext<CR>]],
  ['<Leader>tp'] = [[:tabprevious<CR>]],
  ['<Leader>tc'] = [[:tabclose<CR>]],
  ['<Leader>to'] = [[:tabnew<CR>]],
  ['<C-s>']      = [[<Cmd>w<CR>]],
  -- ['<C-r>']      = [[<Cmd>luafile %<CR>]],
  ['<C-h>']      = [[<C-w>h]],
  ['<C-j>']      = [[<C-w>j]],
  ['<C-k>']      = [[<C-w>k]],
  ['<C-l>']      = [[<C-w>l]],
  ['<C-p>']      = [[<Cmd>Vex<CR>]],
  ['<S-l>']      = [[:bnext<CR>]],
  ['<S-h>']      = [[:bprevious<CR>]],
  ['<']          = [[<<]],
  ['>']          = [[>>]],
})

-- visual mode
set_keymap('v', {
  ['<C-c>'] = [["+y]],
  ['<C-x>'] = [["+x]],
  ['<']     = [[<gv]],
  ['>']     = [[>gv]],
  ['p']     = [["_dP]],
  ['P']     = [["_dp]],
})

-- ex mode
set_keymap('x', {
  ['J'] = [[:move '>+1<CR>gv-gv]],
  ['K'] = [[:move '<-2<CR>gv-gv]],
})

-- command mode
set_keymap('c', {
  ['<C-a>'] = [[<Home>]],
  ['<C-e>'] = [[<End>]],
})
