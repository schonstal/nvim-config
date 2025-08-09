return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      shade_terminals = false,
      open_mapping = '<c-Space>',
      direction = 'float',
      float_opts = {
        border = 'curved',
        title_pos = 'left',
      },
    }

    -- TODO: Migrate this into a plugin that depends on toggleterm, it shouldn't be here.
    vim.keymap.set('n', '<leader>tt', function()
      local test_directory = vim.fn.expand '%:p:h'
      local command = string.format('godot --headless -d -s addons/gut/gut_cmdln.gd -gdir=%s', test_directory)

      local project_root = vim.fs.root(0, { 'project.godot' })
      if project_root == nil then
        -- In case the project file is in godot/
        local project_file = vim.fs.find({ 'project.godot' })[1]
        project_root = vim.fs.dirname(project_file)
        if project_root == nil then
          return -- We're not in a godot project
        end
      end

      require('toggleterm').exec(command, 1, 0, project_root)
    end, { desc = 'Test [T]his File' })
  end,
}
