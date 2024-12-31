return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  opts = {
    expose_as_code_action = 'all',
    complete_function_calls = false,
    jsx_close_tag = {
      enable = true,
      filetypes = { 'javascriptreact', 'typescriptreact' },
    },
    on_attach = function(config, bufNr)
      vim.keymap.set({ 'n', 'v' }, '<leader>cto', ':TSToolsOrganizeImports<CR>', { desc = 'Imports Organize', silent = true, buffer = bufNr })

      vim.keymap.set({ 'n', 'v' }, '<leader>cts', ':TSToolsSortImports<CR>', { desc = 'Imports Sort', silent = true, buffer = bufNr })

      vim.keymap.set({ 'n', 'v' }, '<leader>ctr', ':TSToolsRemoveUnusedImports<CR>', {
        desc = 'Imports remove unused',
        silent = true,
        buffer = bufNr,
      })

      vim.keymap.set({ 'n', 'v' }, '<leader>cta', ':TSToolsAddMissingImports<CR>', {
        desc = 'Imports Add All missing',
        silent = true,
        buffer = bufNr,
      })

      vim.keymap.set({ 'n', 'v' }, '<leader>ctf', ':TSToolsRenameFile<CR>', { desc = 'Rename File', silent = true, buffer = bufNr })
    end,
  },
}
