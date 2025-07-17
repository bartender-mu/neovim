-- Set leader key to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- General settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.encoding = 'utf-8'
vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamedplus'
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.updatetime = 300
vim.opt.signcolumn = 'yes'
vim.opt.background = 'dark'

-- Keymaps
vim.keymap.set('n', '<leader>q', ':qa!<CR>', { noremap = true, silent = true }) -- <Space>q to quit
vim.keymap.set('n', 'dd', '"_dd', { noremap = true }) -- Delete line to black hole
vim.keymap.set('n', 'D', '"_D', { noremap = true }) -- Delete to end of line to black hole
vim.keymap.set('n', 'd', '"_d', { noremap = true }) -- Delete to black hole
vim.keymap.set('v', 'd', '"_d', { noremap = true }) -- Visual delete to black hole

vim.keymap.set('n', '<leader>al', ':!ansible-lint %<CR>', { noremap = true, silent = true }) -- <Space>al to run ansible-lint
vim.keymap.set('n', '<leader>af', ':!ansible-lint --fix %<CR>', { noremap = true, silent = true }) -- <Space>af to auto-fix with ansible-lint
vim.keymap.set('i', '<C-Space>', 'coq#refresh()', { expr = true, silent = true }) -- Manual completion
vim.keymap.set('i', '<C-j>', '<Plug>(coq-snippets-jump)', { noremap = true, silent = true }) -- Jump to snippet placeholder
vim.keymap.set('n', '<leader>sq', 'ysiw"', { noremap = true, silent = true }) -- <Space>sq
