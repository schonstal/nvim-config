return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      shade_terminals = false,
      open_mapping = '<c-/>',
      direction = 'float',
      float_opts = {
        border = 'curved',
        title_pos = 'left',
      },
    }
  end,
}
