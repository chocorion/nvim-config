-- return {
--   'zenbones-theme/zenbones.nvim',
--   dependencies = 'rktjmp/lush.nvim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.o.background = 'light'
--     vim.cmd.colorscheme 'zenbones'
--   end,
-- }

return {
  'shatur/neovim-ayu',
  lazy = false,
  priority = 1000,
  config = function()
    vim.o.background = 'dark'

    require('ayu').setup {
      mirage = true,
      terminal = false,
    }
    vim.cmd.colorscheme 'ayu'
  end,
}
