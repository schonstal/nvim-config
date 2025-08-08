return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      shade_terminals = false,
      open_mapping = '<leader>tt',
      direction = 'float',
    }
    vim.keymap.set('n', '<leader>tv', '<cmd>:ToggleTerm direction=vertical size=80<CR>', { desc = 'Toggle Terminal [v]ertical' })
    vim.keymap.set('n', '<leader>th', '<cmd>:ToggleTerm direction=horizontal size=30<CR>', { desc = 'Toggle Terminal [h]orizontal' })
  end,
}
