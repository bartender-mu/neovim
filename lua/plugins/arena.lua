return {
  'dzfrias/arena.nvim',
  config = function()
    require('arena').setup {
      max_items = 10,
      ignore_current = true,
      devicons = true,
      window = {
        width = 60,
        height = 10,
        border = 'rounded',
      },
      include = { '%.yml$', '%.yaml$', '%.tf$', '%.org$', '%.md$', '%.js$', '%.ts$' },
    }
    vim.keymap.set('n', '<leader>ab', ':ArenaToggle<CR>', { noremap = true, silent = true }) -- <Space>ab
  end,
}
