return {
  'Ramilito/kubectl.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  config = function()
    require('kubectl').setup()
    vim.keymap.set('n', '<leader>kr', ':Telescope kubectl resources<CR>', { noremap = true, silent = true }) -- <Space>kr
    vim.keymap.set('n', '<leader>kl', ':Telescope kubectl logs<CR>', { noremap = true, silent = true }) -- <Space>kl
  end,
}
