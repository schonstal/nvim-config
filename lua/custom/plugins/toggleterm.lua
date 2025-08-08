return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      shade_terminals = false,
      open_mapping = '<leader>tt',
      direction = 'float',
      float_opts = {
        border = 'curved',
        title_pos = 'left',
      },
    }
  end,
}
