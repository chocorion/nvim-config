return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration
    'nvim-telescope/telescope.nvim', -- optional - Picker
  },
  config = true,
  keys = {
    { '<leader>gs', '<cmd>Neogit<cr>', desc = '[s]atus buffer' },
  },
}
