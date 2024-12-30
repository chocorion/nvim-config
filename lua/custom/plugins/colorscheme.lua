return {
  'zenbones-theme/zenbones.nvim',
  lazy = false,
  dependencies = 'rktjmp/lush.nvim',
  priority = 1000,
  config = function()
    vim.o.background = 'light'
    vim.cmd.colorscheme 'zenwritten'
  end,
}
