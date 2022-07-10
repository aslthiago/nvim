require 'config'
require 'keymap'


local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    'git', 'clone', '--depth', '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  }

  vim.notify 'Installing the plugin manager. Please restart Neovim.'
  vim.cmd [[packadd packer.nvim]]
end

require 'plugin.packer'
require 'plugin.gitsigns'
require 'plugin.nvim-tree'
require 'plugin.treesitter'
require 'plugin.comment'
require 'plugin.bufferline'
require 'plugin.telescope'
