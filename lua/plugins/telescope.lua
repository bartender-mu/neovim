return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-lua/popup.nvim',
    { 'nvim-telescope/telescope-media-files.nvim' },
  },
  config = function()
    require('telescope').setup {
      defaults = {
        layout_strategy = 'horizontal',
        layout_config = {
          horizontal = {
            prompt_position = 'top',
            width = { padding = 0 },
            height = { padding = 0 },
            preview_width = 0.5,
          },
        },
        sorting_strategy = 'ascending',
        mappings = {
          i = {
            ['<C-h>'] = 'which_key',
          },
        },
      },
      extensions = {
        media_files = {
          filetypes = { 'png', 'jpg', 'jpeg', 'gif', 'pdf' },
          find_cmd = 'fd',
        },
      },
    }
    require('telescope').load_extension('media_files')
    vim.keymap.set('n', '<Leader>fm', ':Telescope media_files<CR>', { noremap = true, silent = true, desc = 'Media Files' })
  end,
}
