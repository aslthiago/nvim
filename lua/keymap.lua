local keymaps = {
  -- Insert mode
  i = {
    -- an easy way out insert mode
    ['jj']        = [[<Esc>]],
    ['jk']        = [[<Esc>]],

    -- the laptop keyboard has some faulty keys
    ['p<Tab>']    = [[(]],
    ['d<Tab>']    = [[$]],
    ['e<Tab>']    = [[&]],
  },

  -- Normal mode
  n = {
    ['<Leader>e'] = [[:edit $MYVIMRC<CR>]],
    ['<Leader>E'] = [[:tabnew $MYVIMRC<CR>]],
    ['<Leader>r'] = [[:luafile %<CR>]],
    ['<Leader>R'] = [[:luafile $MYVIMRC<CR>]],
    ['<Leader>q'] = [[:quit<CR>]],
    ['<Leader>Q'] = [[:quit!<CR>]],
    ['<Leader>a'] = [[:write<CR>]],
    ['<Leader>A'] = [[:write!<CR>]],
    ['<C-h>']     = [[<C-w>h]],
    ['<C-j>']     = [[<C-w>j]],
    ['<C-k>']     = [[<C-w>k]],
    ['<C-l>']     = [[<C-w>l]],
    -- ['<F4>']      = [[:Lex 30<CR>]],
    ['<Leader>d'] = [[:tabclose<CR>]],
    ['<Leader>c'] = [[:tabnew<CR>]],
    ['<Leader>s'] = [[:tabnext<CR>]],
    ['<Leader>S'] = [[:tabprevious<CR>]],
    ['<S-l>']     = [[:bnext<CR>]],
    ['<S-h>']     = [[:bprevious<CR>]],
    ['<C-Down>']  = [[:resize -2<CR>]],
    ['<C-Up']     = [[:resize +2<CR>]],
    ['<C-Left>']  = [[:vertical resize -2<CR>]],
    ['<C-Right>'] = [[:vertical resize +2<CR>]],
    ['<M-w>']     = [[:%s/\s\+$//e]],
    ['<M-m>']     = [[:%s//gI<Left><Left><Left>]],
    ['<M-u>']     = [[:retab<CR>]],
    ['<']         = [[<<]],
    ['>']         = [[>>]],

    -- nvim-tree
    -- ['<F10>']      = [[:NvimTreeToggle<CR>]],
    ['<F4>']       = [[:NvimTreeToggle<CR>]],
    -- ['<Esc><Esc>'] = [[:NvimTreeFocus<CR>]],

    -- gitsigns
    ['<Leader>hn'] = [[:Gitsigns next_hunk<CR>]],
    ['<Leader>hm'] = [[:Gitsigns prev_hunk<CR>]],
    ['<Leader>hs'] = [[:Gitsigns stage_hunk<CR>]],
    ['<Leader>hr'] = [[:Gitsigns reset_hunk<CR>]],
    ['<Leader>hS'] = [[:Gitsigns stage_buffer<CR>]],
    ['<Leader>hu'] = [[:Gitsigns undo_stage_hunk<CR>]],
    ['<Leader>hR'] = [[:Gitsigns reset_buffer<CR>]],
    ['<Leader>hp'] = [[:Gitsigns preview_hunk<CR>]],
    ['<Leader>hb'] = [[:lua require"gitsigns".blame_line{full=true}<CR>]],
    ['<Leader>tb'] = [[:Gitsigns toggle_current_line_blame<CR>]],
    ['<Leader>hd'] = [[:Gitsigns diffthis<CR>']],
    ['<Leader>hD'] = [[:lua require"gitsigns".diffthis("~")<CR>]],
    ['<Leader>td'] = [[:Gitsigns toggle_deleted<CR>]],

    -- telescope
    ['<Leader>ff'] = [[:Telescope find_files<CR>]],
    ['<Leader>fg'] = [[:Telescope live_grep<CR>]],
    ['<Leader>fb'] = [[:Telescope buffers<CR>]],
    ['<Leader>fh'] = [[:Telescope help_tags<CR>]],
  },

  -- Visual mode
  v = {
    ['<']         = [[<gv]],
    ['>']         = [[>gv]],
    ['p']         = [["_dP]],

    -- keeps selected text centered
    -- ['j']         = [[jzz]],
    -- ['k']         = [[kzz]],

    -- gitsigns
    ['<Leader>hs'] = [[:Gitsigns stage_hunk<CR>]],
    ['<Leader>hr'] = [[:Gitsigns reset_hunk<CR>]],
  },

  -- Visual block mode
  x = {
    ['J']         = [[:move '>+1<CR>gv-gv]],
    ['K']         = [[:move '<-2<CR>gv-gv]],
  }
}

for mode, keymap in pairs(keymaps) do
  for key, action in pairs(keymap) do
    vim.keymap.set(mode, key, action)
  end
end
