return {
  'nanozuki/tabby.nvim',
  lazy = false,
  priority = 1000,
  -- event = 'VimEnter', -- if you want lazy load, see below
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {},
  keys = {
    { '<leader>ta', '<cmd>$tabnew<cr>', desc = '[a]dd' },
    { '<leader>tc', '<cmd>tabclose<cr>', desc = '[c]lose' },
    { '<leader>to', '<cmd>tabonly<cr>', desc = '[o]nly' },
    { '<leader>tn', '<cmd>tabn<cr>', desc = '[n]ext' },
    { '<leader>tp', '<cmd>tabp<cr>', desc = '[p]revious' },
    { '<leader>tmn', '<cmd>-tabmove<cr>', desc = '[m]ove [n]ext' },
    { '<leader>tmp', '<cmd>+tabmove<cr>', desc = '[m]ove [p]revious' },
  },
}
