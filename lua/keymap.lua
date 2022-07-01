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
}

for mode, keymap in pairs(keymaps) do
  for key, action in pairs(keymap) do
    vim.keymap.set(mode, key, action)
  end
end
