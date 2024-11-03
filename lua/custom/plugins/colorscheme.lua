return {
  'chocorion/neovim-ayu',
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
