return {
  'rottencandy/vimkubectl',
  config = function()
    vim.keymap.set('n', '<leader>kp', ':KubectlGet pods<CR>', { noremap = true, silent = true }) -- <Space>kp
    vim.keymap.set('n', '<leader>kd', ':KubectlDescribe<CR>', { noremap = true, silent = true }) -- <Space>kd
    vim.keymap.set('n', '<leader>ka', ':KubectlApply %<CR>', { noremap = true, silent = true }) -- <Space>ka
  end,
}
