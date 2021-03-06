local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'rounded' }
    end
  }
}

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use { -- colorscheme
    'rktjmp/lush.nvim',
    'rebelot/kanagawa.nvim',
    'folke/tokyonight.nvim',
    'EdenEast/nightfox.nvim',
    'sainnhe/everforest',
  }

  use { -- version control
    'lewis6991/gitsigns.nvim',
  }

  use { -- explorer
    { 'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons' },
    { 'nvim-telescope/telescope.nvim',
      requires = 'nvim-lua/plenary.nvim' },
  }

  use { -- treesitter
    'nvim-treesitter/nvim-treesitter',
    'JoosepAlviste/nvim-ts-context-commentstring',
    'numToStr/Comment.nvim',
  }

  use { -- top bar
    'akinsho/bufferline.nvim',
      requires = 'kyazdani42/nvim-web-devicons',
  }

  use { -- utils
    'norcalli/nvim-colorizer.lua',
  }

  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
