local opts = { noremap = true, silent = true }
-- make vim.keymap.set shorter
local keymap = vim.keymap.set 
vim.g.mapleader = " "
-- tree toggle
keymap('n', '<C-1>', ':NvimTreeToggle<CR>') -- ctrl+1 to toggle nvimtree 

-- better window navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- navigate buffers
keymap('n', '<S-l>', ':bnext<CR>', opts)
keymap('n', '<S-h>', ':bprevious<CR>', opts)

-- find and replace everything cuz we like that
keymap('n', '<C-f>', ':%s/')
