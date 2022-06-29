local options = {
	clipboard = 'unnamedplus',
	swapfile = false,
	termguicolors = true,
	wrap = false,
	writebackup = false,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
