return {
  'sainnhe/everforest',
  lazy = false,
  priority = 1000,
  config = function()
    vim.o.background = 'dark'
    vim.g.everforest_background = 'hard'
    vim.cmd.colorscheme 'everforest'
  end,
}
