--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

-- [[ Setting options ]]
-- See `:help vim.opt`

vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.showmode = false -- already in status line
vim.opt.clipboard = 'unnamedplus'
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 500 -- Displays which-key popup sooner
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.inccommand = 'split' -- show live substitution
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.termguicolors = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('i', 'jk', '<esc>')

vim.keymap.set('n', 'U', '<C-r>', { noremap = true })

vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

vim.keymap.set('n', '<leader>fw', '<cmd>w!<cr>', { desc = '[w]rite current file' })
vim.keymap.set('n', '<leader>fq', '<cmd>q!<cr>', { desc = '[q]uit current file' })
vim.keymap.set('n', '<leader>fx', '<cmd>x<cr>', { desc = '[x] wq! current file' })
vim.keymap.set('n', '<leader>fs', '<cmd>split<cr>', { desc = 'split' })
vim.keymap.set('n', '<leader>fv', '<cmd>vsplit<cr>', { desc = '[v]ertical split' })

vim.keymap.set({ 'n', 'v' }, 'H', '^', { desc = 'Go to line start' })
vim.keymap.set({ 'n', 'v' }, 'L', '$', { desc = 'Go to line end' })
vim.keymap.set({ 'n', 'v' }, 'J', '5j', { desc = 'Quick up' })
vim.keymap.set({ 'n', 'v' }, 'K', '5k', { desc = 'Quick down' })

vim.keymap.set('n', 'gE', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', 'ge', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- [[ Angular ]]
-- Register the filetype with treesitter for the `angular` language/parser
vim.treesitter.language.register('angular', 'angular.html')

-- Detect angular template based on angular.json presence
vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = '*.html',
  callback = function()
    local angular_json = vim.fn.glob 'angular.json'
    if angular_json ~= '' then
      vim.bo.filetype = 'angular.html'
    end
  end,
})

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [']quote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }
      require('mini.comment').setup()
      -- ... and there is more!
      --  Check out: https://github.com/echasnovski/mini.nvim
    end,
  },
  -- require 'kickstart.plugins.debug',
  require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
  require 'kickstart.plugins.autopairs',
  require 'kickstart.plugins.gitsigns',
  { import = 'custom.plugins' },
}

-- My own lsp server
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'scss', 'sass' },
  callback = function()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

    local config = {
      name = 'scss_go_def',
      cmd = { 'node', '/home/rob/Documents/Dev/Projects/scss-go-def/server/out/server.js', '--stdio' },
      filetypes = { 'scss', 'sass' },
      capabilities = vim.lsp.protocol.make_client_capabilities(),
      autostart = true,
    }

    vim.lsp.start(config)
  end,
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
