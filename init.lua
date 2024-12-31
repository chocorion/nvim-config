--
--
--       ,-.       _,---._ __  / \
--      /  )    .-'       `./ /   \
--     (  (   ,'            `/    /|
--      \  `-"             \'\   / |
--       `.              ,  \ \ /  |
--        /`.          ,'-`----Y   |
--       (            ;        |   '
--       |  ,-.    ,-'  rob    |  /
--       |  | (   |   config   | /
--       )  |  \  `.___________|/
--       `--'   `--'
--
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

-- [[ Setting options ]]
-- See `:help vim.opt`
vim.opt.showtabline = 1
vim.opt.number = true
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.inccommand = 'split' -- show live substitution
vim.opt.scrolloff = 8
vim.opt.termguicolors = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- From reddit
vim.keymap.set('n', 'yc', '<cmd>norm yygcc<cr>p', { noremap = true, desc = 'Duplicate line and comment original' })
vim.keymap.set('n', '<C-c>', 'ciw')
vim.keymap.set({ 'n', 'v' }, 'mm', '%', { desc = 'match next (){}[] in line' })

vim.keymap.set('n', 'U', '<C-r>', { noremap = true })

vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Add missing shortcuts
vim.keymap.set('o', 'ir', 'i[')
vim.keymap.set('o', 'ar', 'a[')
vim.keymap.set('o', 'ia', 'i<')
vim.keymap.set('o', 'aa', 'a<')

-- Tab mapping
vim.keymap.set('n', '<left>', 'gT')
vim.keymap.set('n', '<right>', 'gt')
vim.keymap.set('n', '<TAB>', 'gt')

--  File mapping
vim.keymap.set('n', '<leader>fw', '<cmd>w!<cr>', { desc = '[w]rite current file' })
vim.keymap.set('n', '<leader>fq', '<cmd>q!<cr>', { desc = '[q]uit current file' })
vim.keymap.set('n', '<leader>fx', '<cmd>x<cr>', { desc = '[x] wq! current file' })

-- Split mapping
vim.keymap.set('n', '<leader>wh', '<cmd>split<cr>', { desc = '[h]orizontal split' })
vim.keymap.set('n', '<leader>wv', '<cmd>vsplit<cr>', { desc = '[v]ertical split' })
vim.keymap.set('n', '<M-h>', '<c-w>5<', { desc = 'increase tab size (horizontal)' })
vim.keymap.set('n', '<M-l>', '<c-w>5>', { desc = 'decrease tab size (horizontal)' })
vim.keymap.set('n', '<M-k>', '<c-W>+', { desc = 'decrease tab size (vertical)' })
vim.keymap.set('n', '<M-j>', '<c-W>-', { desc = 'decrease tab size (vertical)' })
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set({ 'n', 'v' }, 'H', '^', { desc = 'Go to line start' })
vim.keymap.set({ 'n', 'v' }, 'L', '$', { desc = 'Go to line end' })
vim.keymap.set({ 'n', 'v' }, 'J', '5j', { desc = 'Quick up' })
vim.keymap.set({ 'n', 'v' }, 'K', '5k', { desc = 'Quick down' })

vim.keymap.set('n', 'gE', function()
  vim.diagnostic.jump { count = 1, float = true }
end, { desc = 'Go to previous [D]iagnostic message' })

vim.keymap.set('n', 'ge', function()
  vim.diagnostic.jump { count = -1, float = true }
end, { desc = 'Go to next [D]iagnostic message' })

vim.keymap.set('n', '<leader>ta', '<cmd>$tabnew<cr>', { desc = '[a]dd' })
vim.keymap.set('n', '<leader>tc', '<cmd>tabclose<cr>', { desc = '[c]lose' })
vim.keymap.set('n', '<leader>to', '<cmd>tabonly<cr>', { desc = '[o]nly' })
vim.keymap.set('n', '<leader>tn', '<cmd>tabn<cr>', { desc = '[n]ext' })
vim.keymap.set('n', '<leader>tp', '<cmd>tabp<cr>', { desc = '[p]revious' })
vim.keymap.set('n', '<leader>tmn', '<cmd>-tabmove<cr>', { desc = '[m]ove [n]ext' })
vim.keymap.set('n', '<leader>tmp', '<cmd>+tabmove<cr>', { desc = '[m]ove [p]revious' })

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
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
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
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }
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
-- vim.api.nvim_create_autocmd('FileType', {
--   pattern = { 'scss', 'sass' },
--   callback = function()
--     local capabilities = vim.lsp.protocol.make_client_capabilities()
--     capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())
--
--     local config = {
--       name = 'scss_go_def',
--       cmd = { 'bun', '/home/rob/Documents/Dev/Projects/scss-go-def-lsp/src/server.ts', '--stdio' },
--       filetypes = { 'scss', 'sass' },
--       capabilities = vim.lsp.protocol.make_client_capabilities(),
--       autostart = true,
--     }
--
--     vim.lsp.start(config)
--   end,
-- })

local focus_float = function()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    if vim.api.nvim_win_get_config(win).relative ~= '' then
      vim.api.nvim_set_current_win(win)
      return
    end
  end
  print 'Pas de fenêtre flottante détectée'
end

vim.keymap.set('n', '<leader>wf', focus_float, { desc = 'Focus float window' })

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
