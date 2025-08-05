-- Use different colorschemes for different projects
return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,

    config = function()
      require('catppuccin').setup {
        flavour = 'mocha', -- latte, frappe, macchiato, mocha
        transparent_background = false, -- disables setting the background color.
        float = {
          transparent = false, -- enable transparent floating windows
          solid = false, -- use solid styling for floating windows, see |winborder|
        },
        show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
        term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
          enabled = false, -- dims the background color of inactive window
          shade = 'dark',
          percentage = 0.15, -- percentage of the shade to apply to the inactive window
        },
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        no_underline = false, -- Force no underline
        styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = { 'italic' }, -- Change the style of comments
          conditionals = { 'italic' },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
          -- miscs = {}, -- Uncomment to turn off hard-coded styles
        },
        color_overrides = {},
        custom_highlights = {},
        default_integrations = true,
        auto_integrations = false,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = '',
          },
        },
      }

      vim.cmd.colorscheme 'catppuccin'
    end,
  },

  -- {
  --   -- Use godotcolour if in a godot project
  --   'mocte4/godotcolour-vim',
  --   config = function()
  --     ---@diagnostic disable-next-line: missing-fields
  --     local project_file = vim.fs.root(0, '/project.godot')
  --     if project_file then
  --       vim.cmd.colorscheme 'godotcolour'
  --     end
  --   end,
  -- },
}
