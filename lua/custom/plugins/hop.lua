return {
  'smoka7/hop.nvim',
  opts = {},
  keys = {
    { '<leader><leader>K', '<cmd>HopLineBC<cr>', desc = 'jump line before cursor' },
    { '<leader><leader>k', '<cmd>HopLineStartBC<cr>', desc = 'jump line start before cursor' },
    { '<leader><leader>J', '<cmd>HopLineAC<cr>', desc = 'jump line after cursor' },
    { '<leader><leader>j', '<cmd>HopLineStartAC<cr>', desc = 'jump line start after cursor' },
    { '<leader><leader>w', '<cmd>HopWord<cr>', desc = 'jump word cursor' },
    { '<leader><leader>/', '<cmd>HopPattern<cr>', desc = 'jump search' },
    { '<leader><leader>n', '<cmd>HopNodes<cr>', desc = 'treesitter [n]odes' },
  },
}
