-- put numbers on the side
vim.cmd[[set number]]
vim.cmd[[set relativenumber]]

-- set line on cursor	
vim.cmd[[set cursorline]]

-- give me my colorscheme
vim.cmd.colorscheme[[catppuccin-mocha]]

-- make tabs as 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- make the clipboard work
vim.cmd[[set clipboard+=unnamedplus]]
