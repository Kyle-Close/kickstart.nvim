return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      start_in_insert = true,
    }
    vim.keymap.set('n', '<C-_>', '<cmd>ToggleTerm direction=float<CR>', { desc = 'Toggle terminal' })
    vim.keymap.set('t', '<C-_>', [[<C-\><C-n><cmd>ToggleTerm direction=float<CR>]], { desc = 'Toggle terminal' })
  end,
}
