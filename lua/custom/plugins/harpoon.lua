return {
  'ThePrimeagen/harpoon',
  event = 'VeryLazy',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {},
  keys = {
    { '<leader>fha', "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = 'Add current file' },
    { '<leader>fhh', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = 'Toggle menu' },
    { '<leader>fhj', "<cmd>lua require('harpoon.ui').add_next()<cr>", desc = 'Next' },
    { '<leader>fhk', "<cmd>lua require('harpoon.ui').add_prev()<cr>", desc = 'Previous' },
  },
}
