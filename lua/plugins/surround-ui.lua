return {
  {
    'roobert/surround-ui.nvim',
    dependencies = {
      'kylechui/nvim-surround',
      'folke/which-key.nvim',
    },
    config = function()
      require('nvim-surround').setup {
        move_cursor = false, -- Keep cursor in place after surround action
        keymaps = {
          insert = false, -- Disable insert mode mappings
          insert_line = false,
          normal = 'ys', -- Add surrounding
          normal_cur = 'yss', -- Add surrounding to current line
          normal_line = 'yS', -- Add surrounding on new line
          normal_cur_line = 'ySS', -- Add surrounding to current line on new line
          visual = 'S', -- Add surrounding in visual mode
          visual_line = 'gS', -- Add surrounding in visual line mode
          delete = 'ds', -- Delete surrounding
          change = 'cs', -- Change surrounding
        },
      }
      require('which-key').setup {} -- Ensure which-key is initialized
      require('surround-ui').setup {
        root_key = '<Space>s', -- Use <Space>s for surround menu
      }
    end,
  },
}
