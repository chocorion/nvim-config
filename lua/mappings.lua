local options = { noremap = true, silent = true }
local set = vim.api.nvim_set_keymap


-- Leader
set('', '<Space>', '<Nop>', options)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


-- Esc too for from my pinky
set('i', 'jk', '<esc>', options)

-- Moving between windows
set('n', '<C-h>', '<C-w>h', options)
set('n', '<C-k>', '<C-w>k', options)
set('n', '<C-l>', '<C-w>l', options)
set('n', '<C-m>', '<C-w>m', options)

-- Keep visual selection while indenting
set('v', '<', '<gv', options)
set('v', '>', '>gv', options)

-- Moving selection
set('v', 'J', ":m '>+1<CR>gv=gv", options)
set('v', 'K', ":m '<-2<CR>gv=gv", options)

-- Nvim Tree
set('n', '<leader>et', '<cmd>NvimTreeToggle<cr>', options)
set('n', '<leader>er', '<cmd>NvimTreeRefresh<cr>', options)
set('n', '<leader>ef', '<cmd>NvimTreeFindFile<cr>', options)

-- Telescope
set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', options)
set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', options)
set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', options)
set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', options)
