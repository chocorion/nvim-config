return {
  'max397574/better-escape.nvim',
  config = function()
    require('better_escape').setup {
      i = {
        ['j'] = {
          ['k'] = {
            vim.api.nvim_input '<esc>',
          },
        },
      },
    }
  end,
}
