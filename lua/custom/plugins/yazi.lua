return {
  'mikavilpas/yazi.nvim',
  event = 'VeryLazy',
  keys = {
    -- 👇 in this section, choose your own keymappings!
    {
      '<leader>-',
      '<cmd>Yazi<cr>',
      desc = 'Open yazi at the current file',
    },
    {
      -- Open in the current working directory
      '<leader>cw',
      '<cmd>Yazi cwd<cr>',
      desc = "Open the file manager in nvim's working directory",
    },
    {
      '<c-up>',
      '<cmd>Yazi toggle<cr>',
      desc = 'Resume the last yazi session',
    },
  },
  opts = {
    -- if you want to open yazi instead of netrw, see below for more info
    open_for_directories = false,
    keymaps = {
      show_help = '<f1>',
    },
  },
  config = function()
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'yazi',
      callback = function()
        vim.api.nvim_del_keymap('i', 'jk')
      end,
    })

    vim.api.nvim_create_autocmd('BufLeave', {
      pattern = 'yazi',
      callback = function()
        vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })
      end,
    })
  end,
}
