return {
  'someone-stole-my-name/yaml-companion.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
  config = function()
    require('telescope').load_extension('yaml_schema')
    vim.keymap.set('n', '<leader>ys', ':Telescope yaml_schema<CR>', { noremap = true }) -- <Space>ys
  end,
}
