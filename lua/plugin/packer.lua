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
    'rebelot/kanagawa.nvim',
  }

  use { -- version control
    'lewis6991/gitsigns.nvim',
  }

  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
