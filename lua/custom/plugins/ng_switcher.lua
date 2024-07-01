return {
  'softoika/ngswitcher.vim',
  config = function()
    vim.keymap.set('n', '<leader>ac', '<cmd>NgSwitchTS<cr>', { desc = '[a]ngular [c]ode' })
    vim.keymap.set('n', '<leader>at', '<cmd>NgSwitchHTML<cr>', { desc = '[a]ngular [t]emplate' })
    vim.keymap.set('n', '<leader>as', '<cmd>NgSwitchCSS<cr>', { desc = '[a]ngular [s]tyle' })
    vim.keymap.set('n', '<leader>aT', '<cmd>NgSwitchSpec<cr>', { desc = '[a]ngular [T]est' })

    vim.keymap.set('n', '<leader>avc', '<cmd>VNgSwitchTS<cr>', { desc = '[a]ngular [v]ertical [c]ode' })
    vim.keymap.set('n', '<leader>avt', '<cmd>VNgSwitchHTML<cr>', { desc = '[a]ngular [v]ertical [t]emplate' })
    vim.keymap.set('n', '<leader>avs', '<cmd>VNgSwitchCSS<cr>', { desc = '[a]ngular [v]ertical [s]tyle' })
    vim.keymap.set('n', '<leader>avT', '<cmd>VNgSwitchSpec<cr>', { desc = '[a]ngular [v]ertical [T]est' })

    vim.keymap.set('n', '<leader>ahc', '<cmd>SNgSwitchTS<cr>', { desc = '[a]ngular [h]orizontal [c]ode' })
    vim.keymap.set('n', '<leader>aht', '<cmd>SNgSwitchHTML<cr>', { desc = '[a]ngular [h]orizontal [t]emplate' })
    vim.keymap.set('n', '<leader>ahs', '<cmd>SNgSwitchCSS<cr>', { desc = '[a]ngular [h]orizontal [s]tyle' })
    vim.keymap.set('n', '<leader>ahT', '<cmd>SNgSwitchSpec<cr>', { desc = '[a]ngular [h]orizontal [T]est' })
  end,
}
