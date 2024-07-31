return {
  'vim-test/vim-test',
  config = function()
    vim.g['test#strategy'] = 'neovim'
    vim.g['test#neovim#start_normal'] = '1'
    vim.g['test#neovim#term_position'] = 'vert'
  end,
  keys = {
    { '<leader>tn', '<cmd>TestNearest<cr>', desc = '[N]earest' },
    { '<leader>tc', '<cmd>TestClass<cr>', desc = '[C]lass' },
    { '<leader>tf', '<cmd>TestFile<cr>', desc = '[F]ile' },
    { '<leader>ts', '<cmd>TestSuite<cr>', desc = '[S]uite' },
    { '<leader>tr', '<cmd>TestLast<cr>', desc = '[R]epeat last test' },
    { '<leader>tv', '<cmd>TestVisit<cr>', desc = '[V]isit' },
  },
}
