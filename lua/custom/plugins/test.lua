return {
  'vim-test/vim-test',
  config = function()
    vim.g['test#strategy'] = 'neovim'
    vim.g['test#neovim#start_normal'] = '1'
    vim.g['test#neovim#term_position'] = 'vert'
  end,
  keys = {
    { '<leader>ptn', '<cmd>TestNearest<cr>', desc = '[N]earest' },
    { '<leader>ptc', '<cmd>TestClass<cr>', desc = '[C]lass' },
    { '<leader>ptf', '<cmd>TestFile<cr>', desc = '[F]ile' },
    { '<leader>pts', '<cmd>TestSuite<cr>', desc = '[S]uite' },
    { '<leader>ptr', '<cmd>TestLast<cr>', desc = '[R]epeat last test' },
    { '<leader>ptv', '<cmd>TestVisit<cr>', desc = '[V]isit' },
  },
}
