return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true }) -- <Space>ff
    vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true }) -- <Space>fg
    vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>', { noremap = true }) -- <Space>fb
  end,
}
