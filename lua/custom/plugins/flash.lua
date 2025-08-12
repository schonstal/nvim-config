return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  ---@type Flash.Config
  opts = {
    modes = {
      search = {
        enabled = true,
      },
      char = {
        jump_labels = true,
      },
    },
  },
  keys = {
    {
      's',
      mode = { 'n', 'x', 'o' },
      function()
        require('flash').jump()
      end,
      desc = 'Flash',
    },
    {
      '<leader>ft',
      mode = { 'n', 'x', 'o' },
      function()
        require('flash').treesitter()
      end,
      desc = ' [F]lash [T]reesitter',
    },
    {
      '<leader>fr',
      mode = 'o',
      function()
        require('flash').remote()
      end,
      desc = '[F]lash [R]emote',
    },
    {
      '<leader>fR',
      mode = { 'o', 'x' },
      function()
        require('flash').treesitter_search()
      end,
      desc = '[F]lash [R]emote Treesitter',
    },
    {
      '<c-s>',
      mode = { 'c' },
      function()
        require('flash').toggle()
      end,
      desc = 'Toggle Flash Search',
    },
  },
}
