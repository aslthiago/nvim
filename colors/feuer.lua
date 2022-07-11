vim.opt.background = 'dark'
vim.g.colors_name  = 'feuer'

package.loaded['plugin.lush.feuer'] = nil
require('lush')(require('plugin.lush.feuer'))
