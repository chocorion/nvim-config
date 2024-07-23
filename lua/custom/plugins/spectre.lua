return {
  'nvim-pack/nvim-spectre',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { '<leader>Ss', '<cmd>lua require("spectre").toggle()<cr>', desc = 'Search and replace with spectre' },
    { '<leader>Sw', '<cmd>lua require("spectre").open_visual({select_world=true})<cr>', desc = 'Search and replace current world' },
    { '<leader>Sw', '<cmd>lua require("spectre").open_visual({select_world=true})<cr>', desc = 'Search and replace current world' },
    { mode = 'v', '<leader>Sw', '<cmd>lua require("spectre").open_visual()<cr>', desc = 'Search and replace current world' },
    { '<leader>Sf', '<cmd>lua require("spectre").open_file_search({select_word=true})<cr>', desc = 'Search and replace current world in this file' },
  },
}
